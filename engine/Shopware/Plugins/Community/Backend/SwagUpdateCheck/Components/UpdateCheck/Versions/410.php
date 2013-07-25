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
 * Checks for SW 4.1.0 and above
 *
 * Class Shopware_Components_UpdateCheck_Versions_410
 */
class Shopware_Components_UpdateCheck_Versions_410 extends Shopware_Components_UpdateCheck_Base
{

    /**
     * Run tests for SW 4.1
     *
     * @return array
     */
    public function getTestResults()
    {
        $directoryResults = $this->checkWritableDirectories(array(
            'cache',
            'cache/templates',
            'cache/database',
            'cache/doctrine',
            'cache/proxies',
            'media/',
            'media/image',
            'media/image/thumbnail'
        ));

        $directoryResults2 = $this->checkExistingDirectories(array(
            'media'
        ));

        /**
         * Find old category queries
         */
        $fileContentResults = array();
        $result = $this->scanDirectoryForRegex(Shopware()->DocPath('engine/Shopware/Plugins/Local'), '#.*c\.left|persistAs.*?SiblingOf|persistAs.*?Child.*#', '#.*\.php#i');
        foreach($result as $path => $matches) {
            $matches = array_pop($matches);
            $pluginName = $this->getPluginNameByPath($path);
            if (!isset($pluginName)) {
                $pluginName = $path;
            }

            $fileContentResults[] = array(
                'groupName' => $this->getSnippetNamespace()->get(
                    'incompatible_queries_group',
                    'Incompatible queries<br><small>The following plugins might use the old category system and therefore might not work with Shopware 4.1</small>',
                    true
                ),
                'title' => $pluginName,
                'description' => $this->getSnippetNamespace()->get('select_for_more_info', 'Please select this row in order to see additional info', true),
                'details' => $this->getSnippetNamespace()->get(
                    'incompatible_queries_description',
                    'The following lines where detected to be outdated:<br><br>',
                    true
                ) . implode("<br>", $matches),
                'success' => false,
                'id' => sprintf('%s-%s', 'incompatible_query', $pluginName)
            );
        }

        /**
         * Find old article module tab extension
         *
         * very simple check for an overwrite of createMainTabPanel
         */
        $articleTabResults = array();
        $result = $this->scanDirectoryForRegex(Shopware()->DocPath('engine/Shopware/Plugins/Local'), '#.*createMainTabPanel *: *function(.(?!registerAdditionalTab))#', '#.*\.js#mi');
        foreach($result as $path => $matches) {
            $matches = array_pop($matches);
            $pluginName = $this->getPluginNameByPath($path);
            if (!isset($pluginName)) {
                $pluginName = $path;
            }

            $articleTabResults[] = array(
                'groupName' => $this->getSnippetNamespace()->get(
                    'registerAdditionalTab_missing',
                    'Extending the article module<br><small>The following plugins might extend the article backend module in a way, that is deprecated</small>',
                    true
                ),
                'title' => $pluginName,
                'description' => $this->getSnippetNamespace()->get('select_for_more_info', 'Please select this row in order to see additional info', true),
                'details' => $this->getSnippetNamespace()->get(
                    'registerAdditionalTab_missing_description',
                    'This plugin possibly uses an old way to extend the article backend module:<br><br>'.
                    'You might experience errors when opening the article module or will fail to use this plugin'.
                    'in SplitView mode',
                    true
                ),
                'success' => false,
                'id' => sprintf('%s-%s', 'incompatible_query', $pluginName)
            );
        }

        $other = array($this->checkShopwareVersion('4.0.8'));


        $suhosin = array($this->checkSushosinMaxValueLength());

        return array_merge($directoryResults, $directoryResults2, $other, $fileContentResults, $articleTabResults, $suhosin);
    }

    public function checkSushosinMaxValueLength()
    {
        $loaded = extension_loaded('suhosin');
        $value = ini_get('suhosin.get.max_value_length');

        // If value is not set, assume that everything is fine
        if (!isset($value) || empty($value)) {
            $value = 2000;
        }

        return array(
            'groupName' => 'General',
            'title' => 'Suhosin',
            'description' => $this->getSnippetNamespace()->get('suhosin', 'suhosin.get.max_value_length should be at least 2000', true),
            'details' => $this->getSnippetNamespace()->get(
                'suhosin_details',
                'When the suhosin PHP extension is loaded and the get.max_value_length is less than 2000, the Ext JS files cannot be loaded via GET request in the Shopware backend. This means that the Shopware backend can be partially uncached',
                true
            ),
            'success' => !$loaded || $value > 2000,
            'required' => '2000',
            'available' => $value,
            'id' => sprintf('%s-%s', 'general', 'sushosin')
        );

    }



    /**
     * Revoke tests of former SW-Versions
     *
     * @return array
     */
    public function revokeTestResults()
    {
        return array(
            'directory_writable_group-engine/Shopware/Models/Attribute',
            'directory_existing-engine/Shopware/Models/Attribute',
            'directory_existing-engine/Shopware/Proxies',
        );
    }


}