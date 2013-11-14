<?php
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
 * @package    Shopware_Core
 * @subpackage Class
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author     Stefan Hamann
 * @author     $Author$
 */

/**
 * Deprecated Shopware Class providing helper functions for post dispatch url rewriting
 *
 * todo@all: Documentation
 */
class sCore
{
	/**
	* Pointer to Shopware-Core-Functions
	*
	* @var    object
	* @access private
	*/
	var $sSYSTEM;
	

	public function sBuildLink($sVariables, $sUsePost=false)
	{
		$cat = array("sCategory","sPage");
		
		$tempGET = $this->sSYSTEM->_GET;	

		// If viewport is available, this will be the first variable
		if (!empty($tempGET["sViewport"])){
			$url['sViewport'] = $tempGET["sViewport"];
			if ($url["sViewport"]=="cat"
			){
				foreach ($cat as $catAllowedVariable){
					if (!empty($tempGET[$catAllowedVariable])){
						$url[$catAllowedVariable] = $tempGET[$catAllowedVariable];
						unset($tempGET[$catAllowedVariable]);
					}
				}
				$tempGET = array();
			}
			unset ($tempGET["sViewport"]);
		}
		
		// Strip new variables from _GET
		foreach ($sVariables as $getKey => $getValue)
		{
			$tempGET[$getKey] = $getValue;
		}
		
		// Strip session from array
		unset($tempGET['coreID']);
		unset($tempGET['sPartner']);
		
		
		if(!empty($tempGET))
		foreach ($tempGET as $getKey => $getValue){
			if ($getValue) $url[$getKey] = $getValue;
		}
		
		if(!empty($url))
			$queryString = '?'.http_build_query($url,"","&");
		else 
			$queryString = '';
		
		return $queryString;
	}
	
	public function sRewriteLink($link=null, $title=null)
	{
		$url = str_replace(',', '=', $link);
		$url = html_entity_decode($url);
		$query = parse_url($url, PHP_URL_QUERY);
		parse_str($query, $query);
		
		if(!empty($title)) {
			$query['title'] = $title;
		}
		$query['module'] = 'frontend';
		return Shopware()->Front()->Router()->assemble($query);
	}
	
	public function __call($name, $params=null)
	{
		switch ($name)
		{
			case 'rewriteLink':
				return call_user_func(array($this, 'sRewriteLink'), $params[0][2], empty($params[0][3]) ? null : $params[0][3]);
			default:
				return null;
		}
		return null;
	}
	
	public function sCustomRenderer($sRender,$sPath,$sLanguage)
	{
		return $sRender;
	}
}