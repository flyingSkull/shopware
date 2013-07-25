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

//{block name="backend/swag_update_check/application"}
Ext.define('Shopware.apps.SwagUpdateCheck', {
    name:'Shopware.apps.SwagUpdateCheck',
    extend:'Enlight.app.SubApplication',

    /**
     * Enable bulkLoad
     */
    bulkLoad:true,

    /**
     * Define where to get the application components from
     */
    loadPath:'{url controller=SwagUpdateCheck action=load}',

    /**
     * Define controllers, models, stores as well as views of our application
     */
    controllers: [ 'Main' ],
    models: [ 'Version', 'Check' ],
    stores: [ 'Version', 'Check' ],
    views: [ 'main.Window', 'main.List', 'main.Detail' ],

    launch: function() {
        var me = this,
            mainController = me.getController('Main');

        return mainController.mainWindow;
    }
});
//{/block}