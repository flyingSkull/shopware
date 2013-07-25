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
//{block name="backend/swag_update_check/controller/main"}
Ext.define('Shopware.apps.SwagUpdateCheck.controller.Main', {
    extend:'Ext.app.Controller',

    /**
     * Some selectors for the view
     */
    refs:[
        { ref:'detailPanel', selector:'update-check-detail-panel' },
        { ref:'versionCombo', selector:'update-check-list [name=versions]' },
        { ref:'list', selector:'update-check-list' },
    ],

    /**
     * Initiate the controller
     */
    init:function () {
        var me = this,
            result;

        me.checkStore = me.getStore('Check');
        me.mainWindow = me.getView('main.Window').create({
            checkStore: me.checkStore
        });

        me.control({
            'update-check-list':{
                itemClicked: me.onItemClicked,
                testButtonPressed: me.onRunTest
            }
        });

        me.callParent();

        Ext.Ajax.request({
            url: '{url controller="SwagUpdateCheck" action="isUpdateable"}',
            success: function (response, request) {
                result = Ext.JSON.decode(response.responseText);

                if (result.success) {
                    if (result.data.update_available) {
                        me.mainWindow.showUpdateNotification();
                    }
                } else {
                    Shopware.Notification.createGrowlMessage('{s name=updateCheckFailedTitle}Could not check for plugin update{/s}', result.message);
                }

            }
        });
    },

    /**
     * Callback method - called when the user hits the 'run test' button1
     */
    onRunTest: function() {
        var me = this,
            versionCombo = me.getVersionCombo(),
            version = versionCombo.getValue(),
            list = me.getList();


        if (!version || version == '') {
            return;
        }

        list.store.load({
            params: {
                version: version
            }
        })
    },

    /**
     * Callback method - called after the user selected a row in to top grid
     *
     * @param record
     */
    onItemClicked: function(record) {
        var me = this,
            detailPanel = me.getDetailPanel(),
            infoView = detailPanel.infoView,
            template = detailPanel.template;

        template.overwrite(infoView.el, record.data);

    }

});
//{/block}