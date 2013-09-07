{extends file='parent:frontend/detail/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_breadcrumb'}
    {include file='frontend/detail/navigation.tpl'}
{/block}

{* Sidebar left *}
{block name='frontend_index_content_left'}{/block}

{block name="frontend_detail_index_navigation"}{/block}


{block name='frontend_index_content'}
    <div id="detail" class="grid_16 first last">

{* General detailbox *}
    <div id="detailbox"><!-- detailbox -->

        {* Previous article *}
        {block name='frontend_detail_article_back'}
            {if $sArticle.sNavigation.sPrevious}
                <div class="article_back">
                    <a href="{$sArticle.sNavigation.sPrevious.link|rewrite:$sArticle.sNavigation.sPrevious.name}"
                       title="{$sArticle.sNavigation.sPrevious.name}" class="article_back">{s name='DetailNavPrevious'}
                            Zurück{/s}</a>
                </div>
            {/if}
        {/block}

        {* Next article *}
        {block name='frontend_detail_article_next'}
            {if $sArticle.sNavigation.sNext}
                <div class="article_next">
                    <a href="{$sArticle.sNavigation.sNext.link|rewrite:$sArticle.sNavigation.sNext.name}"
                       title="{$sArticle.sNavigation.sNext.name}"
                       class="article_next">{s name='DetailNavNext'}Vor{/s}</a>
                </div>
            {/if}
        {/block}

        {* Detailbox left *}
        <div class="left">
            <div id="img" class="grid_6 first">
                <div class="wrapper">
                    {* Images *}
                    {include file="frontend/detail/image.tpl"}
                </div>
            </div>
        </div>

        <div class="right"><!-- Right -->

            {* Article name *}
            {block name='frontend_detail_index_name'}
                <div id="supplierWrapper">
                    <div id="supplierImg">
                        <img src="{link file=$sArticle.supplierImg}" alt="{$sArticle.supplierName}" border="0" title="{$sArticle.supplierName}" />
                    </div>
                    <h1>{if $sArticle.supplierName} {$sArticle.supplierName} {/if} {$sArticle.articleName}</h1>
                </div>
            {/block}


            {* Detailbox right *}

            {* Configurator table // div buybox *}
            {if $sArticle.sConfigurator && $sArticle.sConfiguratorSettings.type==2}
            <div class="grid_16 first last" id="buybox">{else}
                <div class="right" id="buybox">{/if}
                    <div id="detail_more"></div>

                    {* Article notification *}
                    {block name="frontend_detail_index_notification"}
                        {if $sArticle.notification && ($sArticle.instock <= 0 || $sArticle.sVariants) && $ShowNotification}
                            {include file="frontend/plugins/notification/index.tpl"}
                        {/if}
                    {/block}

                    {* Article Data: - Info - Preis - Art.-Nummer - Verfügbarkeit *}
                    {block name='frontend_detail_index_data'}
                        {include file="frontend/detail/data.tpl" sArticle=$sArticle sView=1}
                    {/block}

                    {* Configurator drop down menu *}
                    {* Dropdown - Größe *}
                    {block name="frontend_detail_index_configurator"}
                        {if $sArticle.sConfigurator}
                            {if $sArticle.sConfiguratorSettings.type eq 1}
                                {include file="frontend/detail/config_step.tpl"}
                            {elseif $sArticle.sConfiguratorSettings.type != 2}
                                {include file="frontend/detail/config_upprice.tpl"}
                            {/if}
                        {/if}
                    {/block}

                    {* Caching article details for future use *}
                     {*{if $sArticle.sBundles || $sArticle.sRelatedArticles && $sArticle.crossbundlelook || $sArticle.sVariants}
                         <div id="{$sArticle.ordernumber}" class="displaynone">
                         {include file="frontend/detail/data.tpl" sArticle=$sArticle}
                         </div>
                     {/if}*}


                    {* Caching variant article details *}
                    {*{if $sArticle.sVariants}
                        {foreach name=line from=$sArticle.sVariants item=sVariant}
                            <div id="{$sVariant.ordernumber}" class="displaynone">
                            {include file="frontend/detail/data.tpl" sArticle=$sVariant}
                            </div>
                        {/foreach}
                    {/if}*}

                    {*{block name='frontend_detail_index_after_data'}{/block}*}

                    {* Include buy button and quantity box *}
                    {* Menge - In den Warenkorb - Button *}
                    {block name="frontend_detail_index_buybox"}
                        {include file="frontend/detail/buy.tpl"}
                    {/block}


                    {* Beschreibung *}
                    {block name="frontend_detail_index_detail"}
                        <div id="detailinfo">
                            {block name="frontend_detail_index_tabs_description"}
                                {include file="frontend/detail/description.tpl"}
                            {/block}
                        </div>
                    {/block}


                    {* Detailinfo *}

                </div>
                <!-- //buybox -->

            </div>
            <!-- //Right -->

            {* Detailbox middle *}
            <div id="detailbox_middle" class="grid_4">

                {* Additional links *}
                {block name="frontend_detail_index_actions"}
                    {include file="frontend/detail/actions.tpl"}
                {/block}
            </div>
        </div>
        <!-- //detailbox -->


        <div class="clear">&nbsp;</div>

        {* Detailinfo *}
        {block name="frontend_detail_index_detail"}{/block}
    </div>
{/block}