<?php
class Shopware_Plugins_Frontend_SwagCaptcha_Bootstrap extends Shopware_Components_Plugin_Bootstrap
{

	public function install()
	{
		$this->subscribeEvent('sAdmin::sValidateStep1::after', 'afterValidateStep1');

		$form = $this->Form();
		$form->setElement('text', 'publicKey', array('label' => 'Public-Key', 'value' => '', 'scope' => Shopware\Models\Config\Element::SCOPE_SHOP));
		$form->setElement('text', 'privateKey', array('label' => 'Private-Key', 'value' => '', 'scope' => Shopware\Models\Config\Element::SCOPE_SHOP));
		$form->setElement('checkbox', 'useSSL', array('label' => 'Verbindung über SSL', 'value' => 0, 'scope' => Shopware\Models\Config\Element::SCOPE_SHOP));
		$form->setElement('text', 'headline', array('label' => 'Captchafeld Überschrift', 'required' => true, 'value' => 'Sicherheitsüberprüfung', 'scope' => Shopware\Models\Config\Element::SCOPE_SHOP));
		$form->setElement('select', 'theme',
			array(
				'label' => 'Theme',
				'value' => 'red',
				'store' => array(
					array('red', 'Red (Standard)'),
					array('blackglass', 'Blackglass'),
					array('white', 'White'),
					array('clean', 'Clean')
				),
				'scope' => Shopware\Models\Config\Element::SCOPE_SHOP
			)
		);
		$form->setElement('select', 'language',
			array(
				'label' => 'Captcha-Sprache',
				'value' => 'de',
				'store' => array(
					array('de', 'Deutsch'),
					array('en', 'Englisch'),
					array('it', 'Italienisch'),
					array('fr', 'Französisch'),
					array('nl', 'Niederländisch'),
					array('pt', 'Portugiesisch'),
					array('es', 'Spanisch'),
					array('ru', 'Russisch'),
					array('tr', 'Türkisch')
				),
				'scope' => Shopware\Models\Config\Element::SCOPE_SHOP
			)
		);

		$this->subscribeEvent('Enlight_Controller_Action_PostDispatch_Frontend_Register', 'onPostDispatchRegister');
		$this->subscribeEvent('Enlight_Controller_Action_PostDispatch_Frontend_PrivateRegister', 'onPostDispatchRegister');

		return true;
	}

	function onPostDispatchRegister(Enlight_Event_EventArgs $args)
	{
		require_once('recaptchalib.php');

		$config = $this->Config();
		$view = $args->getSubject()->View();

		$view->captcha = recaptcha_get_html($config->publicKey, false, $config->useSSL);
		$view->captchaTheme = $config->theme;
		$view->captchaLanguage = $config->language;
		$view->captchaHeadline = $config->headline;

		$view->addTemplateDir($this->Path().'Views/');
		$view->extendsTemplate('frontend/plugins/swag_captcha/index.tpl');
	}

	public function afterValidateStep1(Enlight_Hook_HookArgs $args)
	{
		require_once('recaptchalib.php');

		$config = $this->Config();
		$request = Shopware()->Front()->Request();
		$getReturn = $args->getReturn();

		$resp = recaptcha_check_answer (
			$config->privateKey,
			$_SERVER["REMOTE_ADDR"],
			$_POST["recaptcha_challenge_field"],
			$_POST["recaptcha_response_field"]
		);

		if (!$resp->is_valid && $request->getQuery("action") == "saveRegister") {
			$getReturn["sErrorFlag"]["captcha"] = true;
			$getReturn["sErrorMessages"][] = Shopware()->Snippets()->getSnippet()->get('RegisterCaptchaError','Bitte geben sie das Captcha richtig ein.',true);
		}
		$args->setReturn($getReturn);
	}

	public function getInfo()
	{
		return include($this->Path().'Meta.php');
	}
	
	public function getVersion()
	{
		return "1.0.5";
	}
}