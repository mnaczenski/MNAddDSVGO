{extends file="parent:frontend/index/footer-navigation.tpl"}
{block name="frontend_index_footer_column_newsletter_form"}
    {$smarty.block.parent}
    {if $DSVGO.addNewsletter == '1'}
        {s name="IndexFooterNewsletterPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}
    {/if}
{/block}