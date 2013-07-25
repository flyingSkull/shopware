{extends file="frontend/index/header.tpl"}

{block name="frontend_index_header_css_screen"}
	<style type="text/css">
		div.sofort_dhw {
			position: absolute;
			z-index: 1;
			left: 40px;
			top: 100px;
		}
		
		div.sofort_dhw label {
			height: 16px;
			line-height: 16px;
			font-size: 12px;
			font-weight: bold;
			margin: 3px;
			padding: 2px;
			color: #444;
		}
		
		div.sofort_dhw input {
			margin: 3px 0;
		}
		
		div.sofort_dhw.error {
			padding: 12px 35px 12px 14px;
			margin-bottom: 18px;
			text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
			color: #B94A48;
			background: #F2DEDE;
			width: 867px;
			left: 20px;
			position: relative;
			border-radius: 0;
		}
		
	</style>
{/block}

{block name="frontend_index_header_javascript" append}
<script type="text/javascript">
	var dhwModal = function(url, headline) {
		return $.modalFrame(url, headline, {
			headlineCls: 'headingbox',
			width: 480,
			frameHeight: 500,
			useOverlay: true,
			position: 'fixed',
		});
	}
</script>
{/block}

{block name="frontend_checkout_confirm_error_messages"}
{if $dhw_error}
	<div class="clear">&nbsp;</div>
	<div class="error">
		<div class="center">
			<strong>
				Bitte bestätigen Sie unsere Datenschutzhinweise
			</strong>
		</div>
	</div>
{/if}
{/block}

{* overwrite if Payment method is one from sofort.com *}
{block name='frontend_checkout_confirm_agb_checkbox' append}
	<div class="sofort_dhw">
		<input type="checkbox" class="left" name="sofort_dhw" />
		<label for="sofort_dhw" class="chklabel {if $dhw_error}instyle_error{/if}">
			Bitte bestätigen Sie unsere
			<a href="javascript:void(0)" onclick="new dhwModal('{$SofortDatenschutzUrl}', 'Datenschutzhinweise')">
				<span style="text-decoration:underline">Datenschutzhinweise</span>
			</a>
		</label>
	</div>
{/block}