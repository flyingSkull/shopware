{*
 * Copyright (c) 2012 SOFORT AG
 *
 * $Date: 2013-02-27 09:03:55 +0100 (Wed, 27 Feb 2013) $
 * @version Shopware SOFORT AG Multipay 1.1.0 $Id: lastschriftbysofort.tpl 6023 2013-02-27 08:03:55Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
*}

<div class="grid_10 last">
	<!--  {$payment_mean.additionaldescription}-->
	{block name='lastschriftbysofort'}
		<div class="debit">
			<p class="none">
			{if 'lastschriftbysofort_account_number'|in_array:$errors}
				<div class="error"><b>{s name="error_missing_bankdata" namespace="sofort_multipay_bootstrap"}{/s}</b></div>
			{/if}
			<label for="kontonr">{s name="sofort_multipay_account_number" namespace="sofort_multipay_finish"}{/s}*:</label>
			<input type="text" class="text " id="kontonr" name="lastschriftbysofort_account_number" value="{$bankAccount['ls_account_number']}">
			</p>
			<p class="none">
			{if 'lastschriftbysofort_bank_code'|in_array:$errors}
				<div class="error"><b>{s name="error_missing_bankdata" namespace="sofort_multipay_bootstrap"}{/s}</b></div>
			{/if}
			<label for="blz">{s name="sofort_multipay_bank_code" namespace="sofort_multipay_finish"}{/s}*:</label>
			<input type="text" class="text " id="blz" name="lastschriftbysofort_bank_code" value="{$bankAccount['ls_bank_code']}">
			</p>
			<p class="none">
			{if 'lastschriftbysofort_holder'|in_array:$errors}
				<div class="error"><b>{s name="error_missing_bankdata" namespace="sofort_multipay_bootstrap"}{/s}</b></div>
			{/if}
			<label for="bank2">{s name="sofort_multipay_holder" namespace="sofort_multipay_finish"}{/s}*:</label>
			<input type="text" class="text " id="bank2" name="lastschriftbysofort_holder" value="{$bankAccount['ls_holder']}">
			</p>
			<p class="description">{s name="mandatory_fields" namespace="sofort_multipay_checkout"}{/s}
			</p>
			<p>
		</div>
	{/block}
</div>