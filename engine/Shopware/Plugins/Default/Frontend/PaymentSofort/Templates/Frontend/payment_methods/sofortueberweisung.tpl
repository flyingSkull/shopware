{*
 * Copyright (c) 2012 SOFORT AG
 *
 * $Date: 2013-05-31 12:38:49 +0200 (Fri, 31 May 2013) $
 * @version Shopware SOFORT AG Multipay 1.1.0 $Id: sofortueberweisung.tpl 6191 2013-05-31 10:38:49Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
*}
<div class="grid_10 last">
{$payment_mean.additionaldescription = ''}
	{if $suBannerOrText eq 1}
		{if $suCustomerProtection == 'on'}
			<div id="sofortueberweisung_logo"><a href="{s name='sofort_multipay_su_landing_url' namespace='sofort_multipay_bootstrap'}{/s}" target="_blank"><img src="{s name='sofort_multipay_su_banner_ks_img' namespace='sofort_multipay_bootstrap'}{/s}" alt="{s name='sofort_multipay_su_banner_img_alt' namespace='sofort_multipay_bootstrap'}{/s}" /></a></div>
		{else}
		<div id="sofortueberweisung_logo"><a href="{s name='sofort_multipay_su_landing_url' namespace='sofort_multipay_bootstrap'}{/s}" target="_blank">{s name='sofort_multipay_su_banner_img' namespace='sofort_multipay_bootstrap'}{/s}</a></div>
		{/if}
	{else}
		{if $suCustomerProtection == 'on'}
			<div id="sofortueberweisung_logo"><a href="{s name='sofort_multipay_su_landing_url' namespace='sofort_multipay_bootstrap'}{/s}" target="_blank"><img src="{s name='sofort_multipay_su_banner_ks_img' namespace='sofort_multipay_bootstrap'}{/s}" alt="{s name='sofort_multipay_su_banner_img_alt' namespace='sofort_multipay_bootstrap'}{/s}" /></a></div>
		{else}
			<div id="sofortueberweisung_logo"><a href="{s name='sofort_multipay_su_landing_url' namespace='sofort_multipay_bootstrap'}{/s}" target="_blank">{s name='sofort_multipay_su_banner_img' namespace='sofort_multipay_bootstrap'}{/s}</a></div>
		{/if}
			{s name='checkout.su.description' namespace='sofort_multipay_checkout'}{/s}
	{/if}
</div>