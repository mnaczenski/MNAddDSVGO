{extends file="parent:frontend/detail/comment/form.tpl"}
{block name='frontend_detail_comment_input_actions'}
    {if $DSVGO.addComment == '1'}
        <p>{s name="CommentPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</p>
    {/if}
    {$smarty.block.parent}
{/block}