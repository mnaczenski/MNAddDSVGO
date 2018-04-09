<?php
namespace MNAddDSVGO;
use Shopware\Components\Plugin\Context\ActivateContext;
use Shopware\Components\Plugin\Context\DeactivateContext;
use Shopware\Components\Plugin\Context\InstallContext;
use Shopware\Components\Plugin\Context\UninstallContext;




class MNAddDSVGO extends \Shopware\Components\Plugin
{
    public function activate(ActivateContext $context)
    {
        $context->scheduleClearCache(ActivateContext::CACHE_LIST_DEFAULT);
    }
    public function deactivate(DeactivateContext $context)
    {
        $context->scheduleClearCache(DeactivateContext::CACHE_LIST_DEFAULT);
    }
    public static function getSubscribedEvents()
    {
        return [
            'Enlight_Controller_Action_PostDispatch_Frontend' => 'onFrontend',
            'Enlight_Controller_Action_PostDispatch_Widgets' => 'onFrontend'
        ];
    }

    /**
     * @param InstallContext $context
     * @throws \Exception
     */
    public function install(InstallContext $context)
    {

    }

    /**
     * @param UninstallContext $context
     * @throws \Exception
     */
    public function uninstall(UninstallContext $context)
    {
    }


    /**
     * @param \Enlight_Event_EventArgs $args
     * @throws \Exception
     */

    public function onFrontend(\Enlight_Event_EventArgs $args)
    {
        $this->container->get('Template')->addTemplateDir(
            $this->getPath() . '/Resources/views/'
        );

        /** @var \Enlight_Controller_Action $controller */
        $controller = $args->get('subject');
        $view = $controller->View();
        $view->assign('DSVGO', [
            'addRegister' => $this->container->get('config')->getByNamespace('MNAddDSVGO','addRegister'),
            'addForms' => $this->container->get('config')->getByNamespace('MNAddDSVGO','addForms'),
            'addNewsletter' => $this->container->get('config')->getByNamespace('MNAddDSVGO','addNewsletter'),
            'addComment' => $this->container->get('config')->getByNamespace('MNAddDSVGO','addComment'),
            'addBlog' => $this->container->get('config')->getByNamespace('MNAddDSVGO','addBlog'),
            'addCheckout' => $this->container->get('config')->getByNamespace('MNAddDSVGO','addcheckout'),
            'addNotification' => $this->container->get('config')->getByNamespace('MNAddDSVGO', 'addNotification')
        ]
        );
    }
}