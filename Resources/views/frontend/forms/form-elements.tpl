{extends file="parent:frontend/forms/form-elements.tpl"}
{block name='frontend_forms_form_elements_form_submit'}
    {if $DSVGO.addForms == 'snippet'}
        {s name="SupportPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}
    {/if}
    {$smarty.block.parent}
{/block}