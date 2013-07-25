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

class Shopware_Plugins_Backend_SwagUpdateCheck_Bootstrap extends Shopware_Components_Plugin_Bootstrap
{
    /**
     * Install the plugin; will register some events and create a menu item
     *
     * @return array|bool
     */
    public function install()
	{
        // extend article extjs module
        $this->subscribeEvent(
            'Enlight_Controller_Action_PostDispatch_Backend_Index',
            'onBackendIndexPostDispatch'
        );

        $this->subscribeEvent(
            'Enlight_Controller_Dispatcher_ControllerPath_Backend_SwagUpdateCheck',
            'onGetUpdateCheckController'
        );

        $this->subscribeEvent(
            'Enlight_Bootstrap_InitResource_UpdateCheck',
            'onInitUpdateCheck'
        );

        $this->createMenuItem(array(
            'label' => 'Update Vorbereitung',
            'controller' => 'SwagUpdateCheck',
            'class' => 'sprite-application-block',
            'action' => 'Index',
            'active' => 1,
            'parent' => $this->Menu()->findOneBy('label', 'Einstellungen')
        ));
 	
        return array('success' => true, 'invalidateCache' => array('backend'));
	}

    /**
     * When index backend module was loaded, add our snippet- and template-directory
     * Also extend the template
     *
     * @param Enlight_Event_EventArgs $args
     */
    public function onBackendIndexPostDispatch(Enlight_Event_EventArgs $args)
    {
        $this->Application()->Snippets()->addConfigDir(
            $this->Path() . 'Snippets/'
        );

        $args->getSubject()->View()->addTemplateDir(
            $this->Path() . 'Views/'
        );

        // if the controller action name equals "load" we inject our update check
        if ($args->getRequest()->getActionName() === 'load') {
            $args->getSubject()->View()->extendsTemplate(
                'backend/index/view/swag_update_check_menu.js'
            );
        }

    }

    /**
     * Returns to controller path to our SwagUpdateCheck backend controller
     *
     * @param Enlight_Event_EventArgs $args
     * @return string
     */
    public function onGetUpdateCheckController(Enlight_Event_EventArgs $args)
    {
        $this->registerMyComponentDir();


        $this->Application()->Snippets()->addConfigDir(
            $this->Path() . 'Snippets/'
        );

        $this->Application()->Template()->addTemplateDir(
            $this->Path() . 'Views/', 'swag_update_check'
        );

        return $this->Path(). 'Controllers/Backend/SwagUpdateCheck.php';
    }

    /**
     * Returns an instance of out UpdateCheck component
     *
     * @return Shopware_Components_UpdateCheck
     */
    public function onInitUpdateCheck()
    {
        $this->registerMyComponentDir();

        return new Shopware_Components_UpdateCheck();
    }

    /**
     * Helper function to register the component directory
     */
    public function registerMyComponentDir()
    {
        $this->Application()->Loader()->registerNamespace(
            'Shopware_Components',
            $this->Path() . 'Components/'
        );
    }

    /**
     * Returns the version of the plugin
     *
     * @return string
     */
    public function getVersion()
    {
        return '1.0.0';
    }

    /**
     * Returns the human readable name of the plugin
     *
     * @return string
     */
    public function getLabel()
    {
        return 'Shopware Update-Vorbereitung';
    }
}
 