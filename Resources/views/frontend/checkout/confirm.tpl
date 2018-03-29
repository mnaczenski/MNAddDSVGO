{extends file="parent:frontend/checkout/confirm.tpl"}
{block name='frontend_checkout_confirm_agb_checkbox'}
    {if $DSVGO.addCheckout == 'snippet'}
        <p>{s name="CheckoutPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</p>
    {elseif $DSVGO.addCheckout == 'checkbox' }
        <li class="block-group row--tos">
            <span class="block column--checkbox">
                <input name="checkout-checkbox" type="checkbox" id="checkoutcheckbox" required="required" aria-required="true" value="1" class="chkbox is--required" />
            </span>
            <span class="block column--label">
                <label for="checkoutcheckbox" data-modalbox="true" data-targetSelector="a" data-mode="ajax" data-height="500" data-width="750">{s name="CheckoutPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen{/s}</label>
            </span>
        </li>
    {/if}
    {$smarty.block.parent}
{/block}