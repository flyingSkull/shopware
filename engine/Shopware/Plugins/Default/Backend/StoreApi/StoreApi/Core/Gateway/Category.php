<?php
/**
 * Shopware 4.0
 * Copyright © 2012 shopware AG
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

class Shopware_StoreApi_Core_Gateway_Category extends Shopware_StoreApi_Core_Gateway_Gateway
{
    public function getCategories($start = 0, $limit = 12, $orderBy = null, $orderDirection = null, $criterion = null)
    {
        $json = array(
            'order' => array(
                'field' => $orderBy,
                'direction' => $orderDirection
            ),
            'limit' => array(
                'start' => $start,
                'limit' => $limit
            ),
            'criterion' => $criterion
        );

        return $this->get('category/index', $json);
    }

    public function getCategoriesRecursive()
    {
        return $this->get('category/recursive', array());
    }
}