{extends file="parent:frontend/blog/comment/form.tpl"}
{block name='frontend_blog_comments_input_submit'}
    {if $DSVGO.addBlog == '1'}
        <p>{s name="BlogPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</p>
    {/if}
    {$smarty.block.parent}
{/block}