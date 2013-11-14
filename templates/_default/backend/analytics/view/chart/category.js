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
 * @subpackage Category
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author shopware AG
 */

/**
 * todo@all: Documentation
 */
//{namespace name=backend/analytics/view/main}
//{block name="backend/analytics/view/chart/category"}
Ext.define('Shopware.apps.Analytics.view.chart.Category', {
    extend: 'Shopware.apps.Analytics.view.main.Chart',
    alias: 'widget.analytics-chart-category',

    legend: {
        position: 'right'
    },
    mask: 'horizontal',
    listeners: {
        select: {
            fn: function(me, selection) {
                me.setZoom(selection);
                me.mask.hide();
            }
        }
    },
    initComponent: function() {
        var me = this;

        me.series = [{
            type: 'pie',
            field: 'amount',
            showInLegend: true,
            listeners: {
                itemmouseup: function(item) {
                    var node = item.storeItem.data.node;
                    if(!node) {
                        return;
                    }
                    me.store.getProxy().extraParams['node'] = node;
                    me.store.load();
                }
            },
            tips: {
                trackMouse: true,
                width: 80,
                height: 40,
                renderer: function(storeItem) {
                    me.setTitle('{s name=chart/category/title}Sales{/s} ' +  Ext.util.Format.number(storeItem.get('amount')));
                }
            },
            label: {
                field: 'name',
                display: 'rotate',
                contrast: true,
                font: '18px Arial'
            }
        }];

        me.callParent(arguments);
    }
});
//{/block}
