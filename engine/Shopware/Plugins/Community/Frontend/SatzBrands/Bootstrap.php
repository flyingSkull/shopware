<?php

/**
 * Das Plugin erstellt eine Seite mit allen Logos aus dem Shop
 * Diese Seite ist unter /brands erreichbar
 * @author Waldemar Kunz <w.kunz@satzmedia.de>
 */
class Shopware_Plugins_Frontend_SatzBrands_Bootstrap extends Shopware_Components_Plugin_Bootstrap
{

    /**
     * Gibt Meta Informationen zum Plugin zurück
     * @return type
     * @author Waldemar Kunz <w.kunz@satzmedia.de>
     */
    public function getInfo()
    {
        return include(dirname(__FILE__) . '/Meta.php');
    }
    
    
    /**
      * Gibt Meta Informationen zum Plugin zurück
      * @return string Name des Plugin im Backend
      * @author Waldemar Kunz <w.kunz@satzmedia.de>
      */
    public function getLabel()
    {
        return 'Marken auf einer Seite';
    }
    
    /**
     * Die aktuelle Version des Plugins wird zurück gegeben
     * @return string Version
     * @author Waldemar Kunz <w.kunz@satzmedia.de>
     */
    public function getVersion()
    {
        return "4.0.1";
    }

    /**
     * Install Methode, wird beim Installieren des Plugins aufgerufen
     * @return boolean
     * @author Waldemar Kunz <w.kunz@satzmedia.de>
     */
    public function install()
    {
        $event = $this->createEvent(
                'Enlight_Controller_Dispatcher_ControllerPath_Frontend_Brands',
                'onGetControllerPathFrontend'
        );
        $this->subscribeEvent($event);

        return TRUE;
    }


    /**
     * Aufruf des Controllers
     * @param Enlight_Event_EventArgs $args
     * @return string Pfad zum Controller
     * @author Waldemar Kunz <w.kunz@satzmedia.de>
     */
    public static function onGetControllerPathFrontend(Enlight_Event_EventArgs $args)
    {
        return dirname(__FILE__) . '/Controllers/Brands.php'; 
    }

}