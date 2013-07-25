{*
 * Copyright (c) 2012 SOFORT AG
 *
 * $Date: 2013-02-27 09:03:55 +0100 (Wed, 27 Feb 2013) $
 * @version Shopware SOFORT AG Multipay 1.1.0  $Id: payment_timeout.tpl 6023 2013-02-27 08:03:55Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
*}
 {extends file="frontend/checkout/finish.tpl"}
{block name="frontend_index_content"}
<div class="grid_20 finish" id="center">
	<div class="teaser">
		<h2>Timeout der Bezahlung mit <b>{$sofortPaymentMethod.description}</b> </h2>
	<h3>
		<a href="{$checkoutUrl}">zum Warenkorb</a>
	</h3>
	</div>
	<div class="doublespace">&nbsp;</div>
	{include file="basket.tpl"}
</div>
{/block}