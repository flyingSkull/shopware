{*
 * Copyright (c) 2012 SOFORT AG
 *
 * $Date: 2013-02-27 09:03:55 +0100 (Wed, 27 Feb 2013) $
 * @version Shopware SOFORT AG Multipay 1.1.0 $Id: finish.tpl 6023 2013-02-27 08:03:55Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
*}
{extends file="frontend/checkout/finish.tpl"}
	{block name="frontend_checkout_finish_teaser" append}
	{if $paymentMethod != ""}
	<div id="finished">
		<div class="table">
			<div class="table_head">
				<div class="grid_6">{s name="sofort_multipay_payment_instructions" namespace="sofort_multipay_finish"}{/s}</div>
			</div>
			<div class="table_row">
				{if $paymentMethod eq "vorkassebysofort_multipay"}
				<div class="grid_6">
					<p class="holder">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_holder" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$holder}</b>
					</p>
					<p class="accountnumber">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_account_number" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$accountNumber}</b>
					</p>
					<p class="iban">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_iban" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$iban}</b>
					</p>
					<p class="bank_code">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_bank_code" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$bank_code}</b>
					</p>
					<p class="bic">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_bic" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$bic}</b>
					</p>
					<p class="amount">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_amount" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$amount} &euro;</b>
					</p>
					<p class="reason_1">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_reason_1" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$reason_1}</b>
					</p>
					<p class="reason_2">
						<span class="frontend_checkout_cart_item shopware_studio_snippet">{s name="sofort_multipay_reason_2" namespace="sofort_multipay_finish"}{/s}: </span> <b>{$reason_2}</b>
					</p>
					<p>({s name="sofort_multipay_transaction_id" namespace="sofort_multipay_finish"}{/s}: <i>{$transactionId}</i>)</p>
					<p><b>{s name="checkout.sv.reasons_hint" namespace="sofort_multipay_finish"}{/s}</b></p>
					</div>
				{else}
				<div class="grid_12">
					<h2>{$paymentDescription}</h2>
					<p>({s name="sofort_multipay_transaction_id" namespace="sofort_multipay_finish"}{/s}: <span id="transaction_id" style="font-style:italic;">{$transactionId}</span>)</p>
				</div>
				{/if}
				<div class="clear">&nbsp;</div>
			</div>
		</div>
	</div>
	{/if}
	{/block}
