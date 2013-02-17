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

{block name='frontend_index_navigation'}
    <div id="header">
        <div class="inner">

        {* Search *}
            {block name='frontend_index_search'}
            {include file="frontend/index/search.tpl"}
            {/block}

        {* Shop navigation *}
        {block name='frontend_index_checkout_actions'}
            {action module=widgets controller=checkout action=info}
        {/block}

        {block name='frontend_index_navigation_inline'}
            {if $sCompareShow}
                <div id="compareContainerAjax">
                    {action module=widgets controller=compare}
                </div>
            {/if}
        {/block}

        </div>
    </div>

    {* Maincategories navigation top *}
    {block name='frontend_index_navigation_categories_top'}
        {include file='frontend/index/categories_top.tpl'}
    {/block}

    <div id="wrapper">
        <div class="wrap_top"></div>
        <div class="wrap_inner">

        {* Maincategories navigation top *}{*
        {block name='frontend_index_navigation_categories_top'}
            {include file='frontend/index/categories_top.tpl'}
        {/block}*}

{/block}

    <div class="container_20">
    {* Breadcrumb *}
    {block name='frontend_index_breadcrumb'}
    {include file='frontend/index/breadcrumb.tpl'}
    {/block}

    {* Content section *}
        <div id="content">
            <div class="inner">

            {* Content top container *}
            {block name="frontend_index_content_top"}{/block}

            {* Sidebar left *}
            {block name='frontend_index_content_left'}
            {include file='frontend/index/left.tpl'}
            {/block}

            {* Main content *}
            {block name='frontend_index_content'}{/block}

            {* Sidebar right *}
            {block name='frontend_index_content_right'}{/block}

                <div class="clear">&nbsp;</div>
            </div>
        </div>
    {* Footer *}
    {block name="frontend_index_footer"}
        {if $sLastArticlesShow}
            {action module=widgets controller=lastArticles}
        {/if}
    {/block}
    </div>

{block name="frontend_index_shopware_footer"}
</div>
    <div class="wrap_cap"></div>
</div>

{* FOOTER *}

<div id="footer_wrapper">
    <div class="footer_inner">
        <div class="clear"></div>
    {include file='frontend/index/footer.tpl'}
    </div>

    <div class="shopware_footer">
        <a href="http://www.shopware.de" target="_blank" title="{s name='IndexRealizedShopsystem'}Shopware{/s}"></a>
        <div class="clear"></div>
    </div>

    <div class="clear"></div>

</div>
{/block}

{* Add snippets for free shipping, hotline and so on *}
{*{block name='frontend_index_actions'}
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
{/block}*}
