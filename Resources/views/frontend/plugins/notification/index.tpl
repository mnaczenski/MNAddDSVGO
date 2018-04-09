{extends file="parent:frontend/plugins/notification/index.tpl"}
{block name="frontend_detail_index_notification_button"}
    {$smarty.block.parent}
    {if $DSVGO.addNotification == 'snippet'}
        {s name="IndexFooterNewsletterPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}
    {elseif $DSVGO.addNotification == 'checkbox' }
        <p>
            <input name="form-checkbox" type="checkbox" id="formcheckbox" required="required" aria-required="true" value="1" class="chkbox is--required" />
            <label for="formcheckbox" class="chklabel">{s name="CommentPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</label>
        </p>
    {/if}
{/block}