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
 * @package    Index
 * @subpackage Model
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author shopware AG
 */

/**
 * todo@all: Documentation
 */
//{block name="backend/index/model/album"}
Ext.define('Shopware.apps.Index.model.Widget', {
	extend: 'Ext.data.Model',
	fields: [
	//{block name="backend/index/model/album/fields"}{/block}
	'name', 'label', 'views' ],

    /**
     * Helper method which returns the view data
     * from the calling model instance.
     *
     * @public
     * @return [array|object] Array, if multiple instance of the same widget are available. If not
     * the method returns just an plain object of data.
     */
    getViewData: function() {
        var model = this, length;
        if(!model.data && !model.data.views.length) {
            return false;
        }
        length = model.data.views.length;
        if(length === 1) {
            return model.data.views[0];
        }
        return model.data.views;
    }
});
//{/block}
