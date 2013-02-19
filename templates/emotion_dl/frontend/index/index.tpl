{extends file='parent:frontend/index/index.tpl'}

{* Remove the checkout actions here... *}
{block name='frontend_index_checkout_actions'}{/block}

{* ...and move them above the header container *}
{block name="frontend_index_no_script_message" prepend}
	<div class="outer_my_options">
		<div class="inner_my_options">
	
			{* Please note that we're using the new action plugin to support esi *}
			{action module=widgets controller=checkout action=info}
			
			<div class="clear"></div>
		</div>
	</div>
{/block}

{* Add snippets for free shipping, hotline and so on *}
{block name='frontend_index_actions'}
	<div class="header_teaser">
		<div class="column first_column">
			{s name="IndexTeaserShippingFree"}<strong>Kostenloser</strong><br/>Versand und Rückversand{/s}
		</div>
		<div class="column">
			{s name="IndexTeaserRevocation"}<strong>14 Tage</strong><br/>Rückgaberecht{/s}
		</div>
		<div class="column last_column">
			{s name="IndexTeaserShippingHotline"}<strong>Kostenlose</strong><br/>Hotline 0180 - 000000{/s}
		</div>
		
		<div class="clear"></div>
	</div>
{/block}