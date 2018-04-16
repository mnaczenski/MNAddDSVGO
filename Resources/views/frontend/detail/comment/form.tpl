{extends file="parent:frontend/detail/comment/form.tpl"}
{block name='frontend_detail_comment_input_actions'}
    {if $DSVGO.addComment == 'snippet'}
        <p>{s name="DSVGOPrivacy" namespace="frontend/DSVGO/"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</p>
    {elseif $DSVGO.addComment == 'checkbox' }
    <p>
        <input name="form-checkbox" type="checkbox" id="formcheckbox" required="required" aria-required="true" value="1" class="chkbox is--required" />
        <label for="formcheckbox" class="chklabel">{s name="DSVGOPrivacy" namespace="frontend/DSVGO/"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</label>
    </p>
    {/if}
    {$smarty.block.parent}
{/block}
