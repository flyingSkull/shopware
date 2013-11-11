/**
 * Shopware 4.0
 * Copyright © 2012 shopware AG
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
 * @package    Analytics
 * @subpackage Supplier
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author shopware AG
 */

/**
 * todo@all: Documentation
 */
//{namespace name=backend/analytics/view/main}
//{block name="backend/analytics/view/table/supplier"}
Ext.define('Shopware.apps.Analytics.view.table.Supplier', {
    extend: 'Shopware.apps.Analytics.view.main.Table',
    alias: 'widget.analytics-table-supplier',

    columns: [{
        xtype: 'gridcolumn',
        dataIndex: 'name',
        text: '{s name=table/supplier/supplier}Supplier{/s}',
        width: 300
    }, {
        xtype: 'numbercolumn',
        dataIndex: 'amount',
        text: '{s name=table/supplier/sales}Sales{/s}',
        align: 'right',
        flex: 1
    }]
});
//{/block}