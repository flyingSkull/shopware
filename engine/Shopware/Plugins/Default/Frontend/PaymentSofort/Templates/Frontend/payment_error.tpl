{*
 * Copyright (c) 2012 SOFORT AG
 *
 * $Date: 2013-02-27 09:03:55 +0100 (Wed, 27 Feb 2013) $
 * @version Shopware SOFORT AG Multipay 1.1.0  $Id: payment_error.tpl 6023 2013-02-27 08:03:55Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
*}
 {extends file="frontend/checkout/finish.tpl"}
{block name="frontend_index_content"}
<div class="grid_20 finish" id="center">
	<div class="teaser">
		{if $sofortPaymentMethod.description == ""}
			<h2>Hier ist leider ein Fehler aufgetreten.</h2>
		{else}
			<h2>Hier ist leider ein Fehler aufgetreten, die Zahlung mit <b>{$sofortPaymentMethod.description}</b> konnte nicht durchgef�hrt werden.</h2>
		{/if}
		
	</div>
	<div class="doublespace">&nbsp;</div>
	{include file="basket.tpl"}
</div>
{/block}