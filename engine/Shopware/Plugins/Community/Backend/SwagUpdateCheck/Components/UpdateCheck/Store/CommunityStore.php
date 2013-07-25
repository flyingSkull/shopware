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
 *
 * @category   Shopware
 * @package    Shopware_Plugins_Backend
 * @subpackage Backend
 * @copyright  Copyright (c) 2013, shopware AG (http://www.shopware.de)
 */

/**
 * The updateCheck tool needs some additional logic for the communityStore. Until this is implemented in the
 * StoreAPI and the PluginManager itself, we extend from those classes and add the missing features
 *
 * Class Shopware_Components_UpdateCheck_Store_CommunityStore
 */
class Shopware_Components_UpdateCheck_Store_CommunityStore extends CommunityStore
{

    /**
     * Get plugin infos for a list of plugin names
     *
     * @param $plugins
     * @return array
     */
    public function getPluginInfos($plugins)
    {
        // Construct API query
        $productService = $this->getApi()->getProductService();
        $productQuery = new Shopware_StoreApi_Models_Query_Product();

        $productQuery->addCriterion(
            new Shopware_StoreApi_Models_Query_Criterion_PluginName($plugins)
        );

        $resultSet = $productService->getProducts($productQuery);

        if ($resultSet instanceof Shopware_StoreApi_Exception_Response) {
            // If an empty result is returned, non of the passed plugins was compatible
            if ($resultSet->getCode() == 200) {
                return array(
                    'success' => true,
                    'data' => array(),
                    'total' => 0
                );
            } else {
                return array(
                    'success' => false,
                    'message' => $resultSet->getMessage(),
                    'code' => $resultSet->getCode()
                );
            }
        } else {

            return array(
                'success' => true,
                'data' => $resultSet,
                'total' => count($resultSet)
            );
        }
    }

    /**
     * The getUpdateablePlugins function checks if for the passed plugins updates available and returns
     * the updateable plugins.
     *
     * @param $plugins
     * @param $version
     * @return Shopware_StoreApi_Core_Response_SearchResult
     */
    public function getPluginsAvailableFor($plugins, $version)
    {
        // Construct API query
        $productService = $this->getApi()->getProductService();
        $productQuery = new Shopware_StoreApi_Models_Query_Product();

        $productQuery->addCriterion(
            new Shopware_StoreApi_Models_Query_Criterion_PluginName($plugins)
        );
        $productQuery->addCriterion(
            new Shopware_StoreApi_Models_Query_Criterion_Version($version)
        );

        $resultSet = $productService->getProducts($productQuery);

        // First mark all plugins as incompatible
        $results = array();
        foreach ($plugins as $name) {
            $results[$name] = false;
        }

        if ($resultSet instanceof Shopware_StoreApi_Exception_Response) {
            // If an empty result is returned, non of the passed plugins was compatible
            if ($resultSet->getCode() == 200) {
                return array(
                    'success' => true,
                    'data' => $results,
                    'total' => count($results)
                );
            } else {
                return array(
                    'success' => false,
                    'message' => $resultSet->getMessage(),
                    'code' => $resultSet->getCode()
                );
            }
        } else {
            // mark returned plugins as compatible
            foreach($resultSet as  $productModel) {
                $names  = $productModel->getPluginNames();
                foreach ($names as $name) {
                    $results[$name] = true;
                }
            }

            return array(
                'success' => true,
                'data' => $results,
                'total' => count($results)
            );
        }
    }

}