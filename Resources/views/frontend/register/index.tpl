{extends file="parent:frontend/register/index.tpl"}

{block name='frontend_register_index_form_submit'}
    {if $DSVGO.addRegister == 'snippet'}
        <div class="register--privacy">
            {s name="RegisterPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}
        </div>
    {/if}
    {$smarty.block.parent}
{/block}