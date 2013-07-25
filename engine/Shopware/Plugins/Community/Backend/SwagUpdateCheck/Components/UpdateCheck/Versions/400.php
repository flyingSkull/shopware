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
 * General checks for SW 4.0
 *
 * Class Shopware_Components_UpdateCheck_Versions_400
 */
class Shopware_Components_UpdateCheck_Versions_400 extends Shopware_Components_UpdateCheck_Base
{


    public function getTestResults()
    {
        return array_merge(
            array($this->checkPHPVersion('5.3.2')),
            array($this->byteCodeTest()),
            $this->checkInstalledPluginsAvailableForNewVersion()
        );
    }

    /**
     * Test byteCode cache availability
     *
     * @return array
     */
    protected function byteCodeTest()
    {
        $byteCodeCacheAvailable = $this->byteCodeCacheAvailable();

        return array(
            'groupName' => 'General',
            'title' => 'ByteCode Cache',
            'description' => $this->getSnippetNamespace()->get('bytecode_cache_recommended', 'Using a bytecode cache as APC, XCache or OPCache is highly recommended', true),
            'required' => true,
            'available' => $byteCodeCacheAvailable,
            'success' => $byteCodeCacheAvailable,
            'id' => sprintf('%s-%s', 'General', 'ByteCodeCache')
        );
    }

    /**
     * Helper method which returns if a byteCode cache is available
     *
     * @return bool
     */
    protected function byteCodeCacheAvailable()
    {
        $caches = array('apc', 'xcache', 'opcache');

        foreach  ($caches as $cache) {
            if (extension_loaded($cache)) {
                return true;
            }
        }

        return false;
    }
}