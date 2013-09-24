<?php
/**
 * Der Controller bereitet Daten für die Markenseite
 *
 * @author Waldemar Kunz <w.kunz@satzmedia.de>
 */
class Shopware_Controllers_Frontend_Brands extends Enlight_Controller_Action{

    /**
     * Alle Logos ausgeben, die der obersten Kategorie des aktuellen Shops gehören.
     * Breadcrumb wird auch gesetzt.
     * 
     * @return void
     * @author Waldemar Kunz <w.kunz@satzmedia.de>
     */
    public function indexAction(){
        $topCategory = Shopware()->Shop()->get('parentID');  // Top Kategorie des aktuellen Shops
        $suppliers = Shopware()->Modules()->Articles()->sGetAffectedSuppliers($topCategory,1000);
        
        $this->View()->addTemplateDir(dirname(__FILE__) . '/../Views/templates/');
        $this->View()->loadTemplate('frontend/plugins/Brands/template/index.tpl');
        
        $this->View()->preSuppliers = $suppliers;
        $this->View()->sBreadcrumb = array(
            array(
                'link' => Shopware()->Front()->Router()->assemble(array('controller' => 'brands')),
                'name' => Shopware()->Snippets()->getSnippet('frontend/plugins/brands')->get('BreadcrumbBrands', 'Marken', true)
            )
        );
    }
}
