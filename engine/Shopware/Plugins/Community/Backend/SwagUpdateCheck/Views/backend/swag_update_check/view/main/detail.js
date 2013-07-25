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

//{block name="backend/swag_update_check/view/main/detail"}
Ext.define('Shopware.apps.SwagUpdateCheck.view.main.Detail', {

    /**
     * Define that the additional information is an Ext.panel.Panel extension
     * @string
     */
    extend:'Ext.panel.Panel',

    /**
     * List of short aliases for class names. Most useful for defining xtypes for widgets.
     * @string
     */
    alias:'widget.update-check-detail-panel',

    /**
     * Set css class for this component
     * @string
     */
    cls:Ext.baseCSSPrefix + 'more-info',

    /**
     * Allow to scroll within the panel
     * @boolean
     */
    autoScroll:true,

    title: '{s name=additional_info}Additional info{/s}',

    /**
     * Component event which is fired when the component is initials.
     * @return void
     */
    initComponent:function () {
        var me = this;

        me.items = [ me.createInfoView() ];
        me.callParent(arguments);
    },


    /**
     * Creates the XTemplate for the information panel
     *
     * Note that the template has different member methods
     * which are only callable in the actual template.
     *
     * @return [Ext.XTemplate] generated Ext.XTemplate
     */
    createInfoPanelTemplate:function () {
        var me = this;

        var emptyText = '{s name=select_row_for_more_info}Please select a row for additional info{/s}';

        me.template = new Ext.XTemplate(
            '{literal}<tpl for=".">',
                '<div class="media-info-pnl">',
                    '<div class="base-info">',
                        '<tpl if="this.hasData(details)">',
                            '<p><strong>{details}</strong></p>',
                        '</tpl>',
                        '<tpl if="this.hasData(details) == false && this.hasData(description)">',
                            '<p><span><strong>{description}</strong></span></p>',
                        '</tpl>',
                        '<tpl if="this.hasData(details) == false && this.hasData(description) == false">',
                            '<p><span><strong>' + emptyText + '</strong></span></p>',
                        '</tpl>',
                    '</div>',
                '</div>',
                '</tpl>{/literal}',
                {
                   hasData:function (data) {
                       if (!data || data == '') {
                           return false;
                       }
                       return true;
                   }
               }
        );

        return me.template;
    },

    /**
     * Creates a new panel which displays additional information
     *
     * @return [object] this.infoPanel - generated Ext.panel.Panel
     */
    createInfoView:function () {
        var me = this;

        me.infoView = Ext.create('Ext.container.Container', {
            cls: Ext.baseCSSPrefix + 'outer-customer-info-pnl',
            autoScroll:true,
            renderTpl: me.createInfoPanelTemplate(),
            renderData: { details: '{s name=select_row_for_more_info}Please select a row for additional info{/s}', description: '' }
        });

        return me.infoView;
    }

});
//{/block}
