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
 * This base class provides helper methods for default tests
 *
 * Class Shopware_Components_UpdateCheck_Base
 */
class Shopware_Components_UpdateCheck_Base
{
    protected $versionToCheck;

    /**
     * Helper which returns an snippet-instance
     *
     * @return mixed
     */
    public function getSnippetNamespace()
    {
        return Shopware()->Snippets()->getNamespace('backend/swag_update_check/main');
    }

    /**
     * If you need to revoke / delete a test result from a prior version's test, you can use this method. Just
     * return an array of testresults, you want to revoke.
     *
     * return array('GroupName1-Title1', 'GroupName2-Title2');
     *
     * @return array
     */
    public function revokeTestResults()
    {
       // implement in your profile if needed
    }


    public function __construct($versionToCheck) {
        $this->versionToCheck = $versionToCheck;
    }

    /**
     * Internal helper function to get the passed shopware version as a numeric value with four positions.
     *
     * @param version
     * @return string
     */
    private function getNumericShopwareVersion($version)
    {
        $paths = explode('.', $version);
        if (count($paths) === 3) {
            $paths[] = 0;
        }
        return (int) implode('', $paths);
    }

    /**
     * Check if the currently installed plugin where marked to be compatible with the selected sw version
     *
     * @return array
     */
    public function checkInstalledPluginsAvailableForNewVersion()
    {
        $results = array();

        try {
            $result = $this->queryInstalledPluginsAvailableForNewVersion();
            if ($result['success'] != true) {
                throw new \Exception($result['message']);
            }

            $plugins = $result['data'];
            if (empty($plugins)) {
                return array();
            }

            // Build array with plugin info and the plugin's name as key
            $pluginInfos = array();
            $response = Shopware()->UpdateCheck()->getCommunityStore()->getPluginInfos(array_keys($plugins));
            if ($response['success'] && $response['data'] && !empty($response['data'])) {
                $pluginSearchResults = $response['data'];
                foreach ($pluginSearchResults as $productModel) {
                    foreach ($productModel->getPluginNames() as $name) {
                        $pluginInfos[$name] = $productModel;
                    }
                }
            }

            /**
             * Templates for the details
             */
            $detail_template_link = $this->getSnippetNamespace()->get(
                'plugin_available_for_details_link',
                'Please contact the author of this plugin for further information. Visit the <a href = "%s" target="_blank">plugin homepage</a> to get contact information'
            );
            $detail_template_nolink = $this->getSnippetNamespace()->get(
                'plugin_available_for_details',
                'Please contact the author of this plugin for further information. '
            );

            foreach($plugins as $name => $available) {
                $detail = $detail_template_nolink;

                // Check if a links is available
                if (isset($pluginInfos[$name])) {
                    $productModel = $pluginInfos[$name];
                    $link = $productModel->getStoreUrl();
                    if (!empty($link)) {
                        $detail = sprintf($detail_template_link, $link);
                    }
                }

                $results[] = array(
                    'groupName' => $this->getSnippetNamespace()->get(
                        'group_incompatible_plugin',
                        'Incompatible Plugins<br><small>List of plugins which have not been marked as compatible for the selected version of shopware</small>'
                    ),
                    'title' => $name,
                    'description' => $this->getSnippetNamespace()->get('plugin_available_for_desc', 'The author of the plugin did not mark the plugin as compatible with the shopware version'),
                    'details' => $detail,
                    'success' => $available,
                    'id' => sprintf('plugin_incompatible-%s', $name)
                );
            }


        } catch (Exception $e) {
            $results[] = array(
                'groupName' => 'Plugins',
                'title' => 'Error',
                'description' => 'Could not query plugins which are available for your shopware version',
                'details' => $e->getCode . ': ' . $e->getMessage(),
                'success' => false,
                'id' => 'plugin_available_error'
            );
        }

        return $results;
    }

    /**
     * Queries the communityStore for plugins which have explicitly been marked as compatible with the checked SW-Version
     *
     * @return mixed
     */
    public function queryInstalledPluginsAvailableForNewVersion()
    {
        $communityStore = Shopware()->UpdateCheck()->getCommunityStore();
        $version = $this->getNumericShopwareVersion($this->versionToCheck);

        // Get plugin names
        $builder = Shopware()->Models()->createQueryBuilder();
        $builder->select(array('plugin.name'))
            ->from('Shopware\Models\Plugin\Plugin', 'plugin', 'plugin.name')
            ->where('plugin.name != :pluginManager')
            ->andWhere('plugin.source != :source')
            ->andWhere('plugin.name != :storeApi')
            ->setParameter('pluginManager', 'PluginManager')
            ->setParameter('storeApi', 'StoreApi')
            ->setParameter('source', 'Default');

        $plugins = array_keys($builder->getQuery()->getArrayResult());

        return $communityStore->getPluginsAvailableFor($plugins, $version);
    }

    /**
     * Will check a given list for incompatible plugins
     *
     * $plugins = array(
     *     array('name' => 'Log', 'version' => '2', 'version_compare' => '<='),
     *     array('name' => 'Debug', 'version' => '3', 'version_compare' => '<='),
     * );
     *
     * @throws Exception
     * @param $plugins
     * @return Array
     */
    public function findIncompatiblePlugins($plugins)
    {
        $results = array();
        foreach($plugins as $criteria) {
            $params = array();

            // Define search criteria
            if (isset($criteria['label'])) {
                $searchBy = 'label';
                $params[] = $criteria['label'];
            } elseif(isset($criteria['name'])) {
                $searchBy = 'name';
                $params[] = $criteria['name'];
            } else {
                throw new \Exception("Plugin name or version must be given");
            }

            // Define comparison operator
            $compare = '<=';
            if (isset($criteria['version_compare'])) {
                $compare = $criteria['version_compare'];
            }
            $params[] = $criteria['version'];

            // Construct the actual query
            $sql = "SELECT * FROM s_core_plugins WHERE {$searchBy} = ? AND active=1 AND version {$compare} ?";
            $result = Shopware()->Db()->fetchRow($sql, $params);

            if (!empty($result)) {
                $results[] = array(
                    'description' => sprintf(
                        $this->getSnippetNamespace()->get(
                            'incompatible_plugin',
                            'The plugin %s needs to be %s or higher for the selected shopware version',
                            true
                        ),
                        $result['name'],
                        $criteria['version']
                    ),
                    'required' => $criteria['version'],
                    'available' => $result['version'],
                    'success' => false,
                    'groupName' => 'Plugin',
                    'title' => $result['name'],
                    'id' => sprintf('%s-%s', 'Plugin', $result['name'])
                );
            }
        }

        return $results;
    }

    /**
     * Checks if a list of given directories is writable
     *
     * @param $directories
     * @return array
     */
    public function checkWritableDirectories($directories)
    {
        $results = array();
        foreach ($directories as $path) {
            $fullPath = Shopware()->DocPath($path);
            if (!is_writable($fullPath)) {
                $results[] = array(
                    'description' => sprintf(
                        $this->getSnippetNamespace()->get('not_writable', 'Directory %s not writable', true),
                        $fullPath,
                        true
                    ),
                    'success' => false,
                    'groupName' => $this->getSnippetNamespace()->get('directory_writable_group', 'Writable Directories', true),
                    'title' => $path,
                    'id' => sprintf('%s-%s', 'directory_writable_group', $path)
                );
            }
        }

        return $results;
    }

    /**
     * Checks a list of directories for existance
     *
     * @param $directories
     * @return array
     */
    public function checkExistingDirectories($directories)
    {
        $results = array();
        foreach ($directories as $path) {
            $fullPath = Shopware()->DocPath($path);
            if (!file_exists($fullPath)) {
                $results[] = array(
                    'description' => sprintf(
                        $this->getSnippetNamespace()->get('not_existing', 'Directory %s does not exist', true),
                        $fullPath
                    ),
                    'success' => false,
                    'id' => sprintf('%s-%s', 'directory_existing', $path),
                    'groupName' => $this->getSnippetNamespace()->get(
                        'directory_group',
                        'Needed Directories<br><small>The following directories do not exist but are required by the selected Shopware version</small>'.
                        true
                    ),
                    'title' => $path
                );
            }
        }

        return $results;
    }

    /**
     * Find a plugin by criteria
     *
     * @param $criteria
     * @return mixed
     */
    public function findPlugin($criteria)
    {
        $pluginRepository = Shopware()->Models()->getRepository('\Shopware\Models\Plugin\Plugin');
        return $pluginRepository->get($criteria);
    }

    /**
     * Checks the shopware version
     *
     * @param $version
     * @param string $compare
     * @return array
     */
    public function checkShopwareVersion($version, $compare = '>=')
    {
        return array(
            'groupName' => 'General',
            'title' => 'Shopware version',
            'description' => sprintf($this->getSnippetNamespace()->get('shopware_version', 'At least Shopware %s is required', true), $version),
            'required' => $version,
            'available' => Shopware()->Config()->version,
            'success' => version_compare(Shopware()->Config()->version, $version, $compare),
            'id' => sprintf('%s-', 'shopwareersion')
        );
    }

    /**
     * Checks the php version
     *
     * @param $version
     * @param string $compare
     * @return array
     */
    public function checkPHPVersion($version, $compare = '>=')
    {
        return array(
            'groupName' => 'General',
            'title' => 'PHP version',
            'description' => sprintf($this->getSnippetNamespace()->get('php_version', 'At least PHP %s is required', true), $version),
            'required' => $version,
            'available' => phpversion(),
            'success' => version_compare(phpversion(), $version, $compare),
            'id' => sprintf('%s-', 'phpversion')
        );
    }

    /**
     * Helper function which extracts a plugin's name from its path
     *
     * @param $path
     * @return null
     */
    public function getPluginNameByPath($path)
    {
        preg_match('#Shopware.Plugins.(Commercial|Local|Default|Community).(Frontend|Backend|Core).(?P<name>.*?)[\\|/]#', $path, $matches);
        if ($matches) {
            return $matches['name'];
        }

        return null;
    }

    /**
     * Search for a given string
     *
     * @param $path
     * @param $regex
     * @param $regexFile
     * @return Array
     */
    public function scanDirectoryForRegex($path, $regex, $regexFile = null)
    {
        // Iterate the given path recursively
        $directoryIterator = new RecursiveDirectoryIterator($path);
        // get a flat iterator
        $iterator = new RecursiveIteratorIterator($directoryIterator);

        $results = array();

        // Allow files to be filtered out by name
        if (isset($regexFile) && !empty($regexFile)) {
            $iterator = new RegexIterator($iterator, $regexFile);
        }

        // Iterate the result, get file content, check for $regex matches
        foreach ($iterator as $splFileInfo) {
            if (!$splFileInfo->isDir()) {
                $realPath = $splFileInfo->getRealPath();
                if (strpos($realPath, 'SwagUpdateCheck') !== false) {
                    continue;
                }

                $result = $this->searchFileForRegex($realPath, $regex);
                if ($result) {
                    $results[$realPath] = $result;
                }
            }
        }

        return $results;

    }

    /**
     * Searches inside a file for a given regex. Will return Match-Objects or false if no match was found
     *
     * @param $file
     * @param $regex
     * @return bool
     */
    public function searchFileForRegex($file, $regex)
    {
        $content = file_get_contents($file);
        if (preg_match_all($regex, $content, $matches)) {
            return $matches;
        }

        return false;
    }

}