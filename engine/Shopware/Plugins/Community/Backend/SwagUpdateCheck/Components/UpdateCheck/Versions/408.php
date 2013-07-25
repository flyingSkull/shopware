<?php
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
 * @package    Shopware_Plugins_Backend
 * @subpackage Backend
 * @copyright  Copyright (c) 2013, shopware AG (http://www.shopware.de)
 */

/**
 * Checks for SW 4.0.8 and above
 *
 * Class Shopware_Components_UpdateCheck_Versions_408
 */
class Shopware_Components_UpdateCheck_Versions_408 extends Shopware_Components_UpdateCheck_Base
{

    /**
     * @return array
     */
    public function getTestResults()
    {
        $directoryResults = $this->checkWritableDirectories(array(
            'cache',
            'engine/Shopware/Models/Attribute'
        ));

        $directoryResults2 = $this->checkExistingDirectories(array(
            'cache',
            'engine/Shopware/Models/Attribute',
            'engine/Shopware/Proxies',
        ));



        return array_merge($directoryResults, $directoryResults2);
    }


}