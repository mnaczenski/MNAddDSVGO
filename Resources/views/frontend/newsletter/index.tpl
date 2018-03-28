{extends file="parent:frontend/newsletter/index.tpl"}
{block name="frontend_newsletter_form_submit"}
    {if $DSVGO.addNewsletter == '1'}
        {s name="IndexFooterNewsletterPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}
    {/if}
    {$smarty.block.parent}
{/block}