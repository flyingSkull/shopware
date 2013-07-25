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
//{block name="backend/index/view/menu" append}
Ext.define('Shopware.apps.Index.view.SwagUpdateCheckMenu', {
    override: 'Shopware.apps.Index.view.Menu',

    /**
     * @Override
     */
    initComponent: function() {
        var me = this, result;

        result = me.callParent(arguments);

        window.setTimeout(me.performVersionCheck, 10000);

        return result;
    },

    /**
     * Triggers the version check
     */
    performVersionCheck: function() {
        var me = this,
                snippets;

        snippets = {
            title: '{s name=tile}A new version of Shopware is available{/s}',
            message: '{s name=message}Version [0] of Shopware is available. Please visit our homepage at [1]{/s}',
            messageSticky: '{s name=messageSticky}Version [0] of Shopware is available.{/s}'

        };

        /**
         * Perform the actual version check
         */
        Ext.Ajax.request({
            url: '{url controller=SwagUpdateCheck action=getShopwareUpdateInfo}',
            async: true,
            success: function(response) {
                var result, data;

                if (!response || !response.responseText) {
                    return;
                }

                result = Ext.decode(response.responseText);
                if (!result || !result.data) {
                    return;
                }

                data = result.data;

                // no new version detected
                if (data.newVersionAvailable == false) {
                    return;
                }

                /**
                 * Check if new sticky notes are available (since SW 4.1)
                 */
                if (typeof Shopware.Notification.createStickyGrowlMessage == 'function') {
                    Shopware.Notification.createStickyGrowlMessage({
                        title: snippets.title,
                        text: Ext.String.format(snippets.messageSticky, data.newVersionNumber),
                        btnDetail: {
                            link: data.newVersionLink
                        }
                    });
                } else {
                    Shopware.Notification.createGrowlMessage(snippets.title, Ext.String.format(snippets.message, data.newVersionNumber, data.newVersionLink));
                }


            }
        });

    }
});
//{/block}