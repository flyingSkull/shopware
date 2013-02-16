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
 * @package    Property
 * @subpackage View
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author shopware AG
 */

//{namespace name=backend/property/view/main}
//{block name="backend/property/view/main/value_grid"}
Ext.define('Shopware.apps.Property.view.main.ValueGrid', {
    extend: 'Ext.grid.Panel',
    alias: 'widget.property-main-valueGrid',
    addBtn: null,
    sortableColumns: false,

    /**
     * Contains all snippets for the controller
     * @object
     */
    snippets: {
        columnValue:        '{s name=value/column_value}Value{/s}',
        buttonAddValue:     '{s name=value/button_add_value}Add value{/s}',
        tooltipDeleteValue: '{s name=value/tooltip_delete_value}Delete this value{/s}'
    },

    /**
     * Sets up the ui component
     *
     * @return void
     */
    initComponent: function() {
        var me = this;

        me.registerEvents();

        me.store      = me.valueStore;
        me.editor     = me.getRowEditorPlugin();
        me.viewConfig = me.getViewConfig();
        me.plugins    = [ me.getGridTranslationPlugin(), me.editor ];
        me.tbar       = me.getToolbar();
        me.columns    = me.getColumns();

        me.callParent(arguments);
    },

    /**
     * Defines additional events which will be
     * fired from the component
     *
     * @return void
     */
    registerEvents:function () {
        this.addEvents(
            /**
             * Event will be fired when the user clicks the delete icon in the
             * action column
             *
             * @event deleteValue
             * @param [object] record
             * @param [object] grid - Associated Ext.view.Table
             */
            'deleteValue'
        );
    },

    /**
     * Creates the grid columns
     *
     * @return [array] grid columns
     */
    getColumns: function() {
        var me = this;

        var columns = [{
            header: me.snippets.columnValue,
            dataIndex: 'value',
            flex: 1,
            translationEditor: {
                xtype: 'textfield',
                name: 'optionValue',
                fieldLabel: 'value',
                allowBlank: false
            },
            editor: {
                allowBlank: false
            }
        }, {
            xtype: 'actioncolumn',
            width: 24,
            hideable: false,
            items: [{
                iconCls: 'sprite-minus-circle-frame',
                action: 'delete',
                cls: 'delete',
                tooltip: me.snippets.tooltipDeleteValue,
                handler: function(grid, rowIndex) {
                    var record  = grid.getStore().getAt(rowIndex);
                    me.fireEvent('deleteValue', record, grid);
                }
            }]
        }];

        return columns;
    },

    /**
     * Creates gridviewdragdrop plugin
     *
     * @return [object]
     */
    getViewConfig: function() {
        var viewConfig = {
            plugins: {
                ptype: 'gridviewdragdrop',
                dragGroup: 'valueGridDDGroup',
                dropGroup: 'valueGridDDGroup'
            }
        };

        return viewConfig;
    },


    /**
     * Creates new Grid-Translation Plugin
     *
     * @return [Shopware.grid.plugin.Translation]
     */
    getGridTranslationPlugin: function() {
        return Ext.create('Shopware.grid.plugin.Translation', {
            translationType: 'propertyvalue'
        });
    },

    /**
     * Creates rowEditor Plugin
     *
     * @return [Ext.grid.plugin.RowEditing]
     */
    getRowEditorPlugin: function() {
        var me = this;

        return Ext.create('Ext.grid.plugin.RowEditing', {
            clicksToEdit: 2,
            errorSummary: false,
            pluginId: 'rowEditing',
            listeners: {
                canceledit: {
                    scope: me,
                    fn: function(editor, event) {
                        var me    = this,
                            store = me.store;

                        store.each(function(record) {
                            if (record.phantom) {
                                store.remove(record);
                            }
                        });

                        // enable add button
                        me.addBtn.enable();
                    }
                },
                beforeedit: {
                    scope: me,
                    fn: function(editor, event) {
                        var store = me.store;
                        store.each(function(record) {
                            if (record.phantom && record !== event.record) {
                                store.remove(record);
                            }
                        });
                    }
                }
            }
        });
    },

    /**
     * Creates the grid toolbar
     *
     * @return [Ext.toolbar.Toolbar] grid toolbar
     */
    getToolbar: function() {
        var me = this;

        var buttons = [];

        me.addBtn = Ext.create('Ext.button.Button', {
            xtype: 'button',
            text: me.snippets.buttonAddValue,
            iconCls: 'sprite-plus-circle-frame',
            action: 'add',
            handler: function() {
                var newField = Ext.create('Shopware.apps.Property.model.Value');

                this.disable();
                me.store.add(newField);
                me.editor.startEdit(newField, 0);
            }
        });

        buttons.push(me.addBtn);

        return Ext.create('Ext.toolbar.Toolbar', {
            ui: 'shopware-ui',
            items: buttons
        });
    }

});
//{/block}
