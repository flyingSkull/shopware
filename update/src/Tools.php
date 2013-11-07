<?php
/**
 * Shopware 4.0
 * Copyright © 2013 shopware AG
 *
 * According to our dual licensing model, this program can be used either
 * under the terms of the GNU Affero General Public License, version 3,
 * or under a proprietary license.
 *
 * The texts of the GNU Affero General Public License with an additional
 * permission and of our proprietary license can be found at and
 * in the LICENSE file you have received along with this program.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * "Shopware" is a registered trademark of shopware AG.
 * The licensing of the program under the AGPLv3 does not imply a
 * trademark license. Therefore any rights, title and interest in
 * our trademarks remain entirely with us.
 */

namespace Shopware\Update;

/**
 * Class Tools
 * @package Shopware\Update
 */
class Tools
{
    /**
     * @var \PDO
     */
    protected $connection;

    /**
     * @param \PDO $connection
     */
    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }

    /**
     * @param  \PDO $connection
     * @return Tools
     */
    public function setConnection(\PDO $connection)
    {
        $this->connection = $connection;

        return $this;
    }

    /**
     * @return \PDO
     */
    public function getConnection()
    {
        return $this->connection;
    }

    /**
     * @return bool|null
     */
    public function enableOfflineMode()
    {
        return $this->setOfflineMode(true);
    }

    /**
     * @return bool|null
     */
    public function disableOfflineMode()
    {
        return $this->setOfflineMode(false);
    }

    /**
     * @param bool $isOffline
     * @return bool|null
     */
    public function setOfflineMode($isOffline)
    {
        $isOffline = (bool) $isOffline;

        $sql = "
            SELECT ce.id as elementId, cv.id as valueId, cv.value
            FROM `s_core_config_elements` ce
            LEFT JOIN s_core_config_values cv ON ce.id = cv.element_id
            WHERE `name` LIKE 'setOffline'
        ";

        $result = $this->getConnection()->query($sql)->fetch(\PDO::FETCH_ASSOC);

        $elementId = $result['elementId'];
        $valueId   = $result['valueId'];
        $value     = $result['value'];
        $oldValue  = null;

        if ($valueId) {
            $sql = "UPDATE s_core_config_values SET value = :value WHERE id = :valueId";
            $stmt = $this->getConnection()->prepare($sql);

            $stmt->execute(array(
                ':valueId' => $valueId,
                ':value'     => serialize($isOffline)
            ));

            $oldValue = unserialize($value);
        } else {
            $sql = "INSERT INTO s_core_config_values (element_id, shop_id, value) VALUES (:elementId, 1, :value)";
            $stmt = $this->getConnection()->prepare($sql);

            $stmt->execute(array(
                ':elementId' => $elementId,
                ':value'     => serialize($isOffline)
            ));
        }

        return $oldValue;
    }



    /**
     * Returns config value from database
     * @param string $name
     * @param null $default
     * @return mixed
     */
    public function getConfigValue($name, $default = null)
    {
        $conn = $this->getConnection();

        $stmt = $conn->prepare('
            SELECT IFNULL(cv.value, ce.value) as value
            FROM `s_core_config_elements` ce
            LEFT JOIN s_core_config_values cv ON ce.id = cv.element_id
            WHERE ce.name LIKE :configName;
        ');

        $stmt->execute(array('configName' => $name));

        $result = $stmt->fetchColumn();
        if ($result === false) {
            return $default;
        }

        $result = unserialize($result);

        return $result;
    }

    /**
     * Returns a DateTime instance which can be used to refresh or update the top seller
     * data.
     * Used from the updateElapsedTopSeller and initTopSeller function.
     *
     * @return \DateTime
     */
    protected function getTopSellerOrderTime()
    {
        //get top seller order time interval
        $interval = $this->getConfigValue('chartInterval', 10);

        //create a new date time object to create the current date subtract the configured date interval.
        $orderTime = new \DateTime();
        $orderTime->sub(new \DateInterval('P' . $interval . 'D'));

        return $orderTime;
    }

    /**
     * Returns the SUM() select path of the top seller calculation statement.
     * Used from the updateElapsedTopSeller and initTopSeller function.
     * If the topSellerPseudoSales configuration set to true, the s_articles.pseudosales
     * column will be add to the sum value.
     *
     * @return string
     */
    public function getTopSellerSelect()
    {
        //check the pseudo sales configuration value
        $usePseudoSales = $this->getConfigValue('topSellerPseudoSales', true);
        $sumSelect = " SUM(IF(s_order.id, IFNULL(details.quantity, 0), 0))  ";
        if ($usePseudoSales) {
            //if this value is set to true, the articles.pseudosales column has to be added to the sales value.
            $sumSelect = $sumSelect . " + articles.pseudosales ";
        }
        $sumSelect = $sumSelect . " as sales ";

        return $sumSelect;
    }

    /**
     * Controller action which can be accessed over an request
     * This function is used to get the whole article count.
     */
    public function getArticleCount()
    {
        $sql = 'SELECT COUNT(id) FROM s_articles';
        $count = $this->getConnection()->query($sql)->fetchColumn();

        return $count;
    }

    /**
     * Initials the top seller data.
     * This function is used from the backend controller when the user
     * want to refresh the top seller data manuel.
     */
    public function initTopSeller($limit = null)
    {
        $conn = $this->getConnection();

        $select = $this->getTopSellerSelect();
        $orderTime = $this->getTopSellerOrderTime();

        $sql = "
            SELECT 	articles.id as article_id,
                    NOW() as last_cleared,
                    " . $select . "
            FROM s_articles articles
                LEFT JOIN s_order_details details
                    ON  articles.id = details.articleID
                    AND details.modus = 0
                LEFT JOIN s_order
                    ON  s_order.status >= 0
                    AND s_order.id = details.orderID
                    AND s_order.ordertime >= :orderTime
            WHERE articles.id NOT IN (
                SELECT s_articles_top_seller_ro.article_id FROM s_articles_top_seller_ro
            )
            GROUP BY articles.id ";

        if ($limit !== null) {
            $sql = $this->limit($sql, $limit);
        }

        $stmt = $conn->prepare($sql);
        $stmt->execute(array('orderTime' => $orderTime->format('Y-m-d 00:00:00')));

        $prepared = $conn->prepare(
            'INSERT IGNORE INTO s_articles_top_seller_ro (article_id, last_cleared, sales)
            VALUES (:article_id, :last_cleared, :sales)'
        );

        $this->getConnection()->beginTransaction();

        while ($article = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $prepared->execute($article);
        }

        $this->getConnection()->commit();
    }

    /**
     * @param null $offset
     * @param null $limit
     */
    public function initAlsoBought($offset = null, $limit = null)
    {
        $conn = $this->getConnection();

        $sql = "SELECT id FROM s_articles ";
        if ($limit !== null) {
            $sql = $this->limit($sql, $limit, $offset);
        }
        $articlesStmt = $conn->query($sql);

        $preparedSelect = $conn->prepare("
            SELECT
                detail1.articleID as article_id,
                detail2.articleID as related_article_id,
                COUNT(detail2.articleID) as sales
            FROM s_order_details detail1
               INNER JOIN s_order_details detail2
                  ON detail1.orderID = detail2.orderID
                  AND detail1.articleID != detail2.articleID
                  AND detail1.modus = 0
                  AND detail2.modus = 0
                  AND detail2.articleID > 0
                  AND detail1.articleID = :articleId
            GROUP BY detail2.articleID
        ");

        $preparedInsert = $conn->prepare("
            INSERT IGNORE INTO s_articles_also_bought_ro (article_id, related_article_id, sales)
            VALUES (:article_id, :related_article_id, :sales);
        ");

        $this->getConnection()->beginTransaction();

        //iterate all selected articles which has to be initialed
        while ($articleId = $articlesStmt->fetch(\PDO::FETCH_COLUMN)) {
            //now we select all bought articles for the current article id
            $preparedSelect->execute(array('articleId' => $articleId));

            //at least we have to insert each combination in the aggregate s_articles_also_bought_ro table.
            while ($combination = $preparedSelect->fetch(\PDO::FETCH_ASSOC)) {
                $preparedInsert->execute($combination);
            }
        }

        $this->getConnection()->commit();
    }

    /**
     * This function initials the similar shown marketing data.
     * The passed offset and limit is used to select a data set
     * of articles.
     * The articles are used for the aggregate query which is
     * faster if an constant where condition is used.
     */
    public function initSimilarShown($offset = null, $limit = null)
    {
        $conn = $this->getConnection();

        $sql = "SELECT id FROM s_articles ";

        if ($limit !== null) {
            $sql = $this->limit($sql, $limit, $offset);
        }
        $articlesStmt = $conn->query($sql);

        $preparedSelect = $conn->prepare("
            SELECT
                article1.articleID as article_id,
                article2.articleID as related_article_id,
                COUNT(article2.articleID) as viewed,
                now() as init_date
            FROM s_emarketing_lastarticles article1
               INNER JOIN s_emarketing_lastarticles article2
                  ON  article1.sessionID  = article2.sessionID
                  AND article1.articleID != article2.articleID
            WHERE article1.articleID = :articleId
            GROUP BY article2.articleID
        ");

        $preparedInsert = $conn->prepare("
            INSERT IGNORE INTO s_articles_similar_shown_ro (article_id, related_article_id, viewed, init_date)
            VALUES (:article_id, :related_article_id, :viewed, :init_date)
        ");

        $this->getConnection()->beginTransaction();

        //iterate all selected articles which has to be initialed
        while ($articleId = $articlesStmt->fetch(\PDO::FETCH_COLUMN)) {
            //now we select all similar articles of the s_emarketing_lastarticles table
            $preparedSelect->execute(array('articleId' => $articleId));

            //at least we have to insert each combination in the aggregate s_articles_similar_shown_ro table.
            while ($combination = $preparedSelect->fetch(\PDO::FETCH_ASSOC)) {
                $preparedInsert->execute($combination);
            }
        }

        $this->getConnection()->commit();
    }

    /**
     * Adds an adapter-specific LIMIT clause to the SELECT statement.
     *
     * @param  string     $sql
     * @param  integer    $count
     * @param  integer    $offset OPTIONAL
     * @throws \Exception
     * @return string
     */
    public function limit($sql, $count, $offset = 0)
    {
        $count = intval($count);
        if ($count <= 0) {
            throw new \Exception("LIMIT argument count=$count is not valid");
        }

        $offset = intval($offset);
        if ($offset < 0) {
            throw new \Exception("LIMIT argument offset=$offset is not valid");
        }

        $sql .= " LIMIT $count";
        if ($offset > 0) {
            $sql .= " OFFSET $offset";
        }

        return $sql;
    }

    /**
     * @return int
     */
    public function fixCategoryPosition()
    {
        $preConditionSql = 'SELECT MAX(`left`) FROM s_categories';
        $result = $this->getConnection()->query($preConditionSql)->fetchColumn();

        if ($result == 0) {
            return 0;
        }

        $sql = "SELECT id, parent, description, position FROM s_categories ORDER BY parent, s_categories.left";

        $stmt = $this->getConnection()->query($sql);

        $oldParent = -1;
        $counter = 0;
        $newRows = 0;

        $updateSql = "UPDATE s_categories SET `position` = :position WHERE id = :id";
        $updateStmt = $this->getConnection()->prepare($updateSql);

        while ($row = $stmt->fetch()) {
            if ($row['parent'] != $oldParent) {
                $counter = 0;
                $oldParent = $row['parent'];
            }

            if ($row['position'] === null || $row['position'] != $counter) {
                $newRows++;
                $updateStmt->execute(array(
                    ':id'       => $row['id'],
                    ':position' => $counter
                ));
            }

            $counter++;
        }

        $this->getConnection()->exec("UPDATE s_categories SET `left` =  '0', `right` =  '0', `level` =  '0'");

        return $newRows;
    }
}
