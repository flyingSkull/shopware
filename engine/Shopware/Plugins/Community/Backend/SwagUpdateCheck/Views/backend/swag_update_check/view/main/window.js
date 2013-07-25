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
 * @package    SwagUpdateCheck
 * @subpackage Backend
 * @copyright  Copyright (c) 2013, shopware AG (http://www.shopware.de)
 */

//{namespace name=backend/swag_update_check/main}
//{block name="backend/swag_update_check/view/main/window"}
Ext.define('Shopware.apps.SwagUpdateCheck.view.main.Window', {
    /**
     * Extends from Enlight.app.Window
     */
    extend:'Enlight.app.Window',

    /**
     * Defines an short alias for the component
     */
    alias:'widget.update-check-main-window',

    /**
     * Automatically show the window after creation
     */
    autoShow:true,

    layout: 'fit',

    /**
     * Define width and height of the window
     */
    width:1000,
    height:650,

    /**
     * Remember the windows width and height when closing
     */
    stateful:true,
    stateId:'shopware-update-check-main-window',

    /**
     * The windows' title
     */
    title: '{s name=window_title}Update Check{/s}',


    /**
     * Inits the window
     */
    initComponent:function () {
        var me = this;

        me.dockedItems = me.createNoticeContainer();

        //add the customer list grid panel and set the store
        me.items = me.createMainContainer();

        me.callParent(arguments);
    },

    createMainContainer: function() {
        var me = this;

        return Ext.create('Ext.container.Container', {
            layout: {
                type: 'vbox',
                align: 'stretch'
            },
            items: [
                {
                    xtype: 'update-check-list',
                    flex: 2,
                    store: me.checkStore
                },
                {
                    xtype: 'update-check-detail-panel',
                    flex: 1
                }
            ]});
    },


    /**
     * Creates the update notification container
     *
     * @returns Ext.Container
     */
    createNoticeContainer: function() {
        var me = this;

        me.notification = Shopware.Notification.createBlockMessage('{s name=updateAvailableTitle}A new update is available{/s}', 'notice');
        me.notification.margin = '10 5';
        me.notification.hidden = true;

        return me.notification;
    },

    /**
     * Actually shows the update notification container and a confirmation box asking whether to open the update manager or not
     */
    showUpdateNotification: function() {
        var me = this;

        me.notification.show();

        Ext.MessageBox.confirm(
            '{s name=updateAvailableTitle}{/s}',
            '{s name=updateAvailable}A new update is available. Do you want to open the plugin manager in order to update SwagUpdateCheck{/s}', function (response) {
            if (response !== 'yes') {
                return false;
            }

            Shopware.app.Application.addSubApplication({
                name: 'Shopware.apps.PluginManager',
                params: {
                    updatePlugin: 'SwagUpdateCheck'
                }
            });
        });
    }


});
//{/block}