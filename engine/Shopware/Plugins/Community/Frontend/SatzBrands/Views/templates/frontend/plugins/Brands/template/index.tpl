{extends file = 'frontend/index/index.tpl'}

{block name='frontend_index_content_left'}
&nbsp;
{/block}

{block name='frontend_index_content' append}
    {foreach from=$preSuppliers item=supplier}
        {if $supplier.image}
            <div class="brandLogoSite">
                <a href="{$supplier.link}" title="{$supplier.name}"{if $supplier.image} style="background-image:url({$supplier.image}no-repeat);"{/if}>
                    {if $supplier.image}
                        <img src="{$supplier.image}" alt="{$supplier.name}" />
                    {/if}
                </a>
            </div>
        {/if}
    {/foreach}
{/block}

{block name="frontend_index_header_css_screen" append}
    <link type="text/css" rel="stylesheet" href="{link file='frontend/plugins/Brands/_resources/css/index.css'}" />
{/block}