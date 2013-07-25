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

/**
 * Shopware UI - UpdateCheck backend module
 *
 * Shows a combo with available update versions and a grid with update information
 *
 */
//{block name="backend/swag_update_check/view/main/list"}
Ext.define('Shopware.apps.SwagUpdateCheck.view.main.List', {

    /**
     * Extend from the standard ExtJS 4
     * @string
     */
    extend:'Ext.grid.Panel',

    /**
     * List of short aliases for class names. Most useful for defining xtypes for widgets.
     * @string
    */
    alias:'widget.update-check-list',

    /**
     * The view needs to be scrollable
     * @string
     */
    autoScroll:true,

    /**
     * Defaults for the grid panel.
     * @object
     */
    defaults: { flex: 1 },

    snippets: {
        columns: {
            required: '{s name=columns/required}Requirement{/s}',
            title: '{s name=columns/title}Title{/s}',
            available: '{s name=columns/available}Available{/s}',
            description: '{s name=columns/description}Description{/s}',
            success: '{s name=columns/success}Success{/s}'
        }
    },

    /**
     * Initialize the Shopware.apps.Customer.view.main.List and defines the necessary
     * default configuration
     * @return void
     */
    initComponent:function () {
        var me = this;

        me.columns = me.getColumns();

        me.features = [ me.createGroupingFeature() ];

        me.dockedItems = [ me.getToolbar() ];

        me.on('itemclick', function(view, record, item, index, e, eOpts) {
            me.fireEvent('itemClicked', record);
        });

        me.addEvents(
            /**
             * Fired when a item is clicked in the grid
             * @param record
             */
            'itemClicked',

            /**
             * Fired when the 'run test' button was pressed
             */
            'testButtonPressed'
        );

        me.callParent(arguments);
    },

    createGroupingFeature: function() {
        var me = this;

        return Ext.create('Ext.grid.feature.GroupingSummary', {
            groupHeaderTpl: Ext.create('Ext.XTemplate',
                '<span>{ name:this.formatHeader }</span>',
                {
                    formatHeader: function(field) {
                        return field;
                    }
                }
            )
        });
    },


    /**
     * Creates the grid columns
     *
     * @return [array] grid columns
     */
    getColumns:function () {
        var me = this;

        var columns = [{
            header: me.snippets.columns.title,
            dataIndex:'title',
            flex: 1
        },
        {
            header:me.snippets.columns.description,
            dataIndex:'description',
            flex: 4
        }];

        return columns;
    },

    /**
     * Creates the grid toolbar with the add and delete button
     *
     * @return [Ext.toolbar.Toolbar] grid toolbar
     */
    getToolbar:function () {
        var me = this;


        return Ext.create('Ext.toolbar.Toolbar', {
            dock:'top',
            ui: 'shopware-ui',
            items:[
                    '{s name=check_if_update_possible}Check if update is possible for: {/s}',
                {
                    xtype:'combobox',
                    name:'versions',
                    store: Ext.create('Shopware.apps.SwagUpdateCheck.store.Version').load(),
                    emptyText: '{s name=label/version_combo}Select version{/s}',
                    valueField:'version',
                    displayField:'description',
                    editable: false,
                    listeners: {
                        change: function(combo, newValue, oldValue, eOpts ) {
                            me.store.load({
                                params: {
                                    version: newValue
                                }
                            })
                        }
                    }
                },
                {
                    text: '{s name=run_test}Run test{/s}',
                    cls: 'small',
                    handler: function() {
                        me.fireEvent('testButtonPressed')
                    }

                }
            ]
        });
    },

    /**
     * Function to render the status. 1 = a green tick, everything else = a red cross
     * @param value The value of the field
     */
    renderStatus: function(value){
        if(value==1){
            return Ext.String.format('<div style="height: 16px; width: 16px" class="sprite-tick"></div>')
        }else{
            return Ext.String.format('<div style="height: 16px; width: 16px" class="sprite-cross"></div>')
        }
    }

});
//{/block}

