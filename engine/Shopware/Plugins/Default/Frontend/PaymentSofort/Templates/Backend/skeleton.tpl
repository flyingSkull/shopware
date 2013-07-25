{*
 * Copyright (c) 2012 SOFORT AG
 *
 * $Date: 2013-02-27 09:03:55 +0100 (Wed, 27 Feb 2013) $
 * @version Shopware SOFORT AG Multipay 1.1.0  $Id: skeleton.tpl 6023 2013-02-27 08:03:55Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
*}
{
	"init": {
		"title": "{s name="orders_by_sofort" namespace="sofort_multipay_backend"}{/s}",
		"width": 900,
		"height": 650,
		"id": "pnag",
		"minwidth": 800,
		"minheight": 650,
		"content": "",
		"loader": "action",
		"url": "{url action='index'|escape:'javascript'}",
		"help": "https://www.payment-network.com/sue_de/integration/list/88"
	}
}