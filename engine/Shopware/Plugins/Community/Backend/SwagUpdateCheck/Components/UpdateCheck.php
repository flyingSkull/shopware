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
 * The UpdateCheck Components manages the tests cases
 *
 * Class Shopware_Components_UpdateCheck
 */
class Shopware_Components_UpdateCheck
{

    protected $communityStore;

    /**
     * URL to get plugin blacklist and shopware version from
     *
     * @var string
     */
    protected $pluginBlacklistUrl = 'http://store.shopware.de/update-check/plugin-blacklist.txt';
    protected $shopwareUpdateUrl = 'http://store.shopware.de/update-check/shopware.xml';

    /**
     * Array for the blacklisted plugin versions
     *
     * @var array
     */
    protected $pluginBlacklist = array();

    /**
     * Default version
     *
     * @var array|mixed
     */
    public $versions = array(
        '4.1.0'
    );

    /**
     * Read and sort available versions initially
     */
    public function __construct()
    {
        // Get files in version-folder
        $files = scandir(dirname(__FILE__) . '/UpdateCheck/Versions/');

        // limit to files names \d{3}.php
        $files = preg_grep('/\d{3}.php/', $files);
        $versions = preg_filter('/.php/i', '', $files);

        if (empty($versions)) {
            return;
        }

        foreach ($versions as &$version) {
            $version = implode('.', str_split($version));
        }

        natsort($versions);
        $this->versions = $versions;
    }

    /**
     * Helper method which returns an instance of the community store.
     *
     * Needs to return our overwritten instance, until the original store was updated
     *
     */
    public function getCommunityStore()
    {
        if (!$this->communityStore) {
            $path = Shopware()->DocPath('engine_Shopware_Plugins_Default_Core_PluginManager_Components');
            require_once($path . '/Store.php');

            $this->communityStore = new Shopware_Components_UpdateCheck_Store_CommunityStore();
        }

        return $this->communityStore;

    }

    /**
     * Will return a SimpleXMLElement with info for the latest shopware version
     *
     * Will return false if there was an error reading the XML or no version info is available
     *
     * @return false|SimpleXMLElement
     */
    public function getLatestShopwareVersionFromRemote()
    {
        $versions = $this->readRemoteShopwareVersions();

        if ($versions === false) {
            return false;
        }

        $current = $versions->current;
        $version = $versions->xpath("//versions//version[number='{$current}']");

        if (!empty($version)) {
            return array_pop($version);
        }

        return false;
    }

    /**
     * Will return a SimpleXMLElement if version info is available or false if XML is not valid or could not be read
     *
     * @return bool|SimpleXMLElement
     */
    protected function readRemoteShopwareVersions()
    {
        $id = 'SwagUpdateCheck_ShopwareVersionCheck';
        $cache = Shopware()->Cache();

        // load from cache
        $cachedContent = $cache->load($id);

        // If cache is empty, perform server request
        if ($cachedContent === false) {
            $content = file_get_contents($this->shopwareUpdateUrl);
        } else {
            $content = $cachedContent;
        }

        if ($content === false) {
            return false;
        }

        // If content was not loaded from cache, save it
        if ($cachedContent == false) {
            $cache->save($content, $id, array('Shopware_Plugin'), 86400*3);
        }

        return simplexml_load_string($content);

    }

    /**
     * Get the plugin blacklist from the Shopware-server and prepare it for later usage
     *
     * @return array
     */
    public function readRemotePluginBlacklist()
    {
        $id = 'SwagUpdateCheck_Blacklist';
        $cache = Shopware()->Cache();

        $cachedContent = $cache->load($id);


        // If cache is empty, perform server request
        if ($cachedContent === false) {
            $content = file($this->pluginBlacklistUrl);
        } else {
            $content = $cachedContent;
        }

        if ($content === false) {
            return array();
        }

        // If content was not loaded from cache, save it
        if ($cachedContent == false) {
            $cache->save($content, $id, array('Shopware_Plugin'), 3600*2);
        }

        foreach ($content as $line) {
            // Skip comments and empty lines
            if (strpos($line, '#') !== false || trim($line) == '') {
                continue;
            }

            // Build array of shopware versions and arrays
            list($shopware_version, $plugin, $required_version) = preg_split('# +#', $line);
            if (empty($this->pluginBlacklist[$shopware_version])) {
                $this->pluginBlacklist[$shopware_version] = array();
            }

            $this->pluginBlacklist[$shopware_version][$plugin] = $required_version;
        }

        return $this->pluginBlacklist;

    }

    /**
     * Performs the actual version check for a given version. Will run checks for all prior versions first
     *
     * @param $checkVersion
     * @param $onlyShowFailed
     * @return Array
     */
    public function performUpdateCheck($checkVersion, $onlyShowFailed=true)
    {
        $this->readRemotePluginBlacklist();

        $allTestResults = array();
        foreach ($this->versions as $version) {
            if (version_compare($version, $checkVersion, '<=')) {
                $adapter = $this->getAdapterByVersion($version, $checkVersion);

                /**
                 * Delete results of prior tests - might be useful, if requirements of older versions
                 * are optional in the current version
                 */
                $revokeTests = $adapter->revokeTestResults();
                if ($revokeTests) {
                    foreach ($revokeTests as $id) {
                        unset($allTestResults[$id]);
                    }
                }

                $results = $this->getTestResultsForVersion($adapter, $version);
                foreach ($results as $result) {
                    /**
                     * If only failed entries are shown, skip succeeded checks.
                     *
                     * Also remove previous failed check with the same id, as the newer succeeded (but hidden) check
                     * replaces the older (but failed) check.
                     */
                    if ($onlyShowFailed && $result['success']) {
                        unset($allTestResults[$result['id']]);
                        continue;
                    }
                    $allTestResults[$result['id']] = $result;
                }
            }
        }

        return array_values($allTestResults);
    }

    /**
     * Helper method to get an adapter for a given version
     *
     * @param $version
     * @param $checkForShopwareVersion
     * @return Enlight_Class
     */
    protected function getAdapterByVersion($version, $checkForShopwareVersion)
    {
        $className = 'Shopware_Components_UpdateCheck_Versions_' . str_replace('.', '', $version);
        return Enlight_Class::Instance($className, array($checkForShopwareVersion));
    }

    /*
     * Runs the checks for all older versions
     */
    protected function getTestResultsForVersion($adapter, $version)
    {
        // Run the actual tests, the plugin tests and merge both
        $results = $adapter->getTestResults();

        $pluginResults = $this->getPluginTestResults($adapter, $version);
        $results = array_merge($results, $pluginResults);

        // Group the tests
        foreach($results as &$result) {
            if (empty($result['id'])) {
                throw new \Exception(sprintf("No ID for test '%s' in group '%s' specified", $result['title'], $result['groupName']));
                
            }
        }

        return $results;

    }

    /**
     * Helper method to get incompatible plugins for a given shopware version
     *
     * @param $adapter
     * @param $version
     * @return mixed
     */
    protected function getPluginTestResults($adapter, $version)
    {
        $plugins = array();

        foreach ($this->pluginBlacklist[$version] as $plugin => $version) {
            $plugins[] = array('label' => $plugin, 'version' => $version);
        }

        return $adapter->findIncompatiblePlugins($plugins);
    }
}