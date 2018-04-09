{extends file="parent:frontend/newsletter/index.tpl"}
{block name="frontend_newsletter_form_submit"}
    {if $DSVGO.addNewsletter == 'snippet'}
        {s name="DSVGOPrivacy" namespace="frontend/DSVGO/"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}
    {elseif $DSVGO.addComment == 'checkbox' }
        <p>
            <input name="form-checkbox" type="checkbox" id="formcheckbox" required="required" aria-required="true" value="1" class="chkbox is--required" />
            <label for="formcheckbox" class="chklabel">{s name="DSVGOPrivacy" namespace="frontend/DSVGO/"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</label>
        </p>
    {/if}
    {$smarty.block.parent}
{/block}