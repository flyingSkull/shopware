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

class Shopware_Controllers_Backend_SwagUpdateCheck extends Shopware_Controllers_Backend_ExtJs
{

    /**
     * Check for plugin update
     */
    public function isUpdateableAction()
    {
        try {
            $update = $this->checkForPluginUpdate();
        } catch (\Exception $e) {
            $this->View()->assign(array('success' => false, 'message' => $e->getMessage()));
            return;
        }

        $this->View()->assign(array(
           'success' => true,
           'data' => array(
               'update_available' => $update != false,
               'current_version' => $update
           )
        ));
    }

    /**
     * Checks for a new shopware version and returns some info for it
     */
    public function getShopwareUpdateInfoAction()
    {
        $latestVersion = Shopware()->UpdateCheck()->getLatestShopwareVersionFromRemote();

        // Return if no version info is available
        if ($latestVersion == false) {
            $data = array(
                'success' => false,
                'data' => array(
                    'newVersionAvailable' => false
                )
            );
            $this->View()->assign($data);
            return;
        }

        $current = Shopware()->Config()->version;
        $latest = $latestVersion->number;
        if (version_compare($latest, $current, '>')) {
            $data = array(
                'success' => true,
                'data' => array(
                    'newVersionAvailable' => true,
                    'newVersionNumber' => (string) $latest,
                    'newVersionLink' => (string) $latestVersion->link
                )
            );
        } else {
            $data = array(
                'success' => true,
                'data' => array(
                    'newVersionAvailable' => false
                )
            );
        }

        $this->View()->assign($data);

    }

    /**
     * Internal helper function to get the current shopware version as a numeric value with four positions.
     * @return string
     */
    private function getNumericShopwareVersion()
    {
        $version = Shopware()->Config()->get('version');
        $paths = explode('.', $version);
        if (count($paths) === 3) {
            $paths[] = 0;
        }
        return (int) implode('', $paths);
    }

    private function getCurrentPluginVersion($plugin)
    {
        $pluginModel = Shopware()->Models()->getRepository('Shopware\Models\Plugin\Plugin')->findOneBy(array('name' => $plugin));

        return $pluginModel->getVersion();
    }

    /**
     * Helper method which checks for an update of SwagUpdateCheck
     *
     * Will return false if no update is available or the available update version if an update is available
     *
     * @return bool|string
     * @throws Exception
     */
    public function checkForPluginUpdate()
    {
        $myName = 'SwagUpdateCheck';

        $communityStore = Shopware()->UpdateCheck()->getCommunityStore();

        $result = $communityStore->getUpdateablePlugins(
            array(
                $myName => array(
                'name' => $myName,
                'version' => $this->getCurrentPluginVersion($myName),
                'shopwareVersion' => $this->getNumericShopwareVersion(),
                '1'
                )
            )
        );

        if ($result['success'] != true) {
            throw new \Exception($result['message']);
        }

        // As we only check for one plugin, we can pop the element
        $data = array_pop($result['data']);
        if (!$data) {
            return false;
        }

        return $data['availableVersion'];
    }

    /**
     * Performs the actual check for a given version
     */
    public function getVersionInfoAction()
    {
        $version = $this->Request()->getParam('version');

        $data = Shopware()->UpdateCheck()->performUpdateCheck($version, true);

        if (empty($data)) {
            $namespace = Shopware()->Snippets()->getNamespace('backend/swag_update_check/main');
            $data = array(
                'title' => $namespace->get('no_errors_title', 'Ok', true),
                'description' => $namespace->get(
                    'no_errors_description',
                    'Could not detect any plugins or conditions, that are known to be incompatible with the selected version of Shopware',
                    true
                )
            );
        }

        $this->View()->assign(array(
            'success' => true,
            'data' => $data,
            'total' => count($data)
        ));
    }

    /**
     * Returns list of version greater than the current version
     */
    public function getVersionsAction()
    {
        $currentVersion = Shopware()->Config()->version;

        $versions = array();
        foreach (Shopware()->UpdateCheck()->versions as $version) {
            if (version_compare($version, $currentVersion, '>')) {
                $versions[] = array('version' => $version, 'description' => 'Shopware ' . $version);
            }
        }

        $this->View()->assign(array(
           'success' => true,
            'data' => $versions,
            'total' => count($versions)
        ));
    }

}