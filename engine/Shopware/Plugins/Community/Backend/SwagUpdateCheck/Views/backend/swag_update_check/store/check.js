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

//{block name="backend/swag_update_check/store/check"}
Ext.define('Shopware.apps.SwagUpdateCheck.store.Check', {

    extend: 'Ext.data.Store',

    // Do not load data, when not explicitly requested
    autoLoad: false,

    /**
     * Model for the store
     */
    model : 'Shopware.apps.SwagUpdateCheck.model.Check',


    /**
     * Disable remote filtering
     */
    remoteFilter: false,
    remoteSort: false,

    /**
     * Sort initially
     */
    sortOnLoad: true,

    /**
     * If groupName is set, use that for grouping
     */
    groupField: 'groupName',

    /**
     * Default page size
     */
    pageSize: 100,

    /**
     * Configure the data communication
     * @object
     */
    proxy: {
        type: 'ajax',

        /**
         * Configure the url mapping
         * @object
         */
        api: {
            read: '{url action="getVersionInfo"}'
        },

        /**
         * Configure the data reader
         * @object
         */
        reader: {
            type: 'json',
            root: 'data',
            totalProperty:'total'
        }
    }
});
//{/block}