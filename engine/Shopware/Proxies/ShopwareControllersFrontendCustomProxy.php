<?php
class Shopware_Proxies_ShopwareControllersFrontendCustomProxy extends Shopware_Controllers_Frontend_Custom implements Enlight_Hook_Proxy
{
    public function excuteParent($method, $args = array())
    {
        return $this->executeParent($method, $args);
    }

    public function executeParent($method, $args = array())
    {
        return call_user_func_array(array($this, 'parent::' . $method), $args);
    }

    public static function getHookMethods()
    {
        return array ();
    }
    
}
