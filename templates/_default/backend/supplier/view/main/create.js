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
 * @package    Supplier
 * @subpackage View
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author shopware AG
 */

/*{namespace name=backend/supplier/view/create}*/

/**
 * Shopware View - Supplier
 *
 * Backend - Management for Suppliers. Create | Modify | Delete and Logo Management.
 * Create a new supplier view
 */
//{block name="backend/supplier/view/main/create"}
Ext.define('Shopware.apps.Supplier.view.main.Create', {
    extend : 'Enlight.app.Window',
    alias : 'widget.supplier-main-create',
    layout : 'fit',
    title : '{s name=title}Supplier - Create{/s}',
    width : 700,
    height : '90%',
    autoScroll: true,
    stateful : true,
    stateId : 'shopware-supplier-create',

    /**
     * Initialize the component
     * @return void
     */
    initComponent : function () {
        var me = this;
        me.supplierInfoForm = me.getFormPanel();
        me.items = [ me.supplierInfoForm ];

        me.dockedItems = [{
            xtype: 'toolbar',
            dock: 'bottom',
            cls: 'shopware-toolbar',
            ui: 'shopware-ui',
            items: me.getButtons()
        }];

        me.callParent(arguments);
    },
    /**
     * Returns the whole form to edit the supplier
     *
     * @returns Ext.form Panel
     */
    getFormPanel : function()
    {
        var me = this;
        return Ext.create('Ext.form.Panel', {
            collapsible : false,
            split       : false,
            region      : 'center',
            width       : '100%',
            autoScroll: true,
            defaults : me.getFormDefaults(),
            bodyPadding : 10,
            items : [
                {
                    xtype       : 'textfield',
                    name        : 'name',
                    fieldLabel  : '{s name=name}Supplier name{/s}',
                    supportText : '{s name=name_support}Name of the supplier e.g. Shopware AG{/s}',
                    allowBlank  : false

                },
                {
                    xtype       : 'textfield',
                    vtype       : 'url',
                    name        : 'link',
                    fieldLabel  : '{s name=link}URL{/s}',
                    supportText : '{s name=link_support}Link to suppliers website{/s}'
                },
                {
                    xtype       : 'hidden',
                    name        : 'image',
                    fieldLabel  : 'image'
                },
                me.getHtmlField(),
                me.getDropZone()
            ]
        });
    },
    /**
     * Returns the HTML editor for the description
     *
     * @return Ext.form.field.HtmlEditor
     */
    getHtmlField : function()
    {
        return Ext.create('Shopware.form.field.TinyMCE', {
            name : 'description',
            emptyText : '{s name=description}Description{/s}',
            defaults : this.getFormDefaults()
        });
    },
    /**
     * Button Array - the event listener will be set in the controller control method
     *
     * @return array of objects
     */
    getButtons : function()
    {
        var me = this;
        return ['->',
            {
                text    : '{s name=cancel}Cancel{/s}',
                scope   : me,
                cls: 'secondary',
                handler : me.destroy
            },
            {
                text    : '{s name=save}Save{/s}',
                action  : 'saveSupplier',
                cls     : 'primary',
                formBind: true
            }
        ];
    },
    /**
     * Returns an Object with default settings for every form element.
     *
     * @return object
     */
    getFormDefaults : function()
    {
        return {
            labelWidth  : 130,
            anchor      : '100%'
        };
    },
    /**
     * Returns a media drop field.
     *
     * @return Shopware.MediaManager.MediaSelection
     */
    getDropZone : function()
    {
        return Ext.create('Shopware.MediaManager.MediaSelection', {
            fieldLabel      : '{s name=logo}Logo{/s}',
            name            : 'media-manager-selection',
            supportText     : '{s name=logo_support}Supplier logo selection via Media Manager. The selection is limited to one media.{/s}',
            multiSelect     : false,
            labelWidth  : 130,
            anchor      : '100%',
            albumId: -12 // Default supplier albumId
        });
    }
});
//{/block}
