{extends file="parent:frontend/blog/comment/form.tpl"}
{block name='frontend_blog_comments_input_submit'}
    {if $DSVGO.addBlog == 'snippet'}
        <p>{s name="BlogPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</p>
    {elseif $DSVGO.addComment == 'checkbox' }
        <p>
            <input name="form-checkbox" type="checkbox" id="formcheckbox" required="required" aria-required="true" value="1" class="chkbox is--required" />
            <label for="formcheckbox" class="chklabel">{s name="CommentPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</label>
        </p>
    {/if}
    {$smarty.block.parent}
{/block}