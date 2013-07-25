INSERT INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_version', '1.0.4', NOW(), NOW()),
('sofort_multipay', 1, 1, 'sofort_multipay_plugin_description', 'Das sofort Gateway ist eine integrierte Lösung für unsere Produkte in Kombination mit einem Bankkonto bei der Sofort Bank. Sie legen ein Projekt an und Ihnen stehen alle unsere Zahlarten optional zur Verfügung. Die Zahlungsauswahl für Ihre Endkunden erfolgt in Ihrem Shop. Dies erspart Ihnen Zeit und gibt Ihnen die höchst mögliche Flexibilität im E-Commerce-Zahlungsverkehr. Alle Zahlungen werden in der Währung Euro abgewickelt.', NOW(), NOW()),
('sofort_multipay', 1, 1, 'sofort_project_settings', 'Projekteinstellungen SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 1, 'sofort_multipay_api_key', 'Von SOFORT AG zugewiesener Konfigurationsschlüssel', NOW(), NOW()),
('sofort_multipay', 1, 1, 'sofort_multipay_test_api_key', 'Konfigurationsschlüssel/API-Key testen', NOW(), NOW()),
('sofort_multipay', 1, 1, 'test_api_key_button', 'test', NOW(), NOW()),
('sofort_multipay', 1, 1, 'order_status_pending_desc', 'Temporärer Bestellstatus<br />Bestellstatus für nicht abgeschlossene Transaktionen. Die Bestellung wurde erstellt aber die Transaktion von der SOFORT AG noch nicht bestätigt.', NOW(), NOW()),
('sofort_multipay', 1, 1, 'order_status_confirmed_desc', 'Bestätigter Bestellstatus<br />Bestellstatus nach abgeschlossener Transaktion.', NOW(), NOW()),
('sofort_multipay', 1, 1, 'order_status_canceled_desc', 'Stornierter Bestellstatus<br />Bestellstatus nach einer vollen Stornierung der Rechnung.', NOW(), NOW()),
('sofort_multipay', 1, 1, 'order_status_partially_credited_desc', 'Teilzahlung<br />Bestellstatus nach einer Teilzahlung des Gesamtbetrages.', NOW(), NOW()),
('sofort_multipay', 1, 1, 'customer_protection_su', 'SOFORT Überweisung mit Käuferschutz', NOW(), NOW()),
('sofort_multipay', 1, 1, 'customer_protection_sv', 'Vorkasse mit Käuferschutz', NOW(), NOW()),
('sofort_multipay', 1, 1, 'banner_su_desc', 'Banner bei SOFORT Überweisung', NOW(), NOW()),
('sofort_multipay', 1, 1, 'text_su_desc', 'Logo und Text bei SOFORT Überweisung', NOW(), NOW()),
('sofort_multipay', 1, 1, 'banner_sl_desc', 'Banner bei SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 1, 'text_sl_desc', 'Logo und Text bei SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 1, 'save', 'save', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_holder', 'Kontoinhaber', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_account_number', 'Kontonummer', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_bank_code', 'Bankleitzahl', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_iban', 'IBAN', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_bic', 'BIC', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_amount', 'Betrag', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_reason_1', 'Verwendungszweck 1', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_reason_2', 'Verwendungszweck 2', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_transaction_id', 'Transaktions-ID', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_su_not_credited_yet', 'Bestellung mit SOFORT Überweisung erfolgreich übermittelt. Ihre Transaktions-ID: {{transaction}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_su_status_loss', 'Der Zahlungseingang konnte bis dato noch nicht festgestellt werden. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_not_credited', 'Die Ware wird zum Versand bereit gestellt.', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_credited', 'Zahlungseingang.', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_credited_to_seller', 'Zahlungseingang auf Händlerkonto ist erfolgt.', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_confirm_invoice2_vorkasse', 'Bestellung mit {{paymentMethodStr}} erfolgreich übermittelt. Transaktions-ID: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_confirm_invoice2_sofortlastschrift', 'Bestellung mit {{paymentMethodStr}} erfolgreich übermittelt. Transaktions-ID: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_confirm_invoice2_lastschriftbysofort', 'Bestellung mit {{paymentMethodStr}} erfolgreich übermittelt. Transaktions-ID: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_debit_returned2', 'Zu dieser Transaktion liegt eine Rücklastschrift vor. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_accept_conditions', 'Bitte die Datenschutzhinweise akzeptieren.', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_condition', 'Datenschutzhinweise', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_condition_notice', 'Ich habe die {{conditions}} gelesen.', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'sofort_multipay_payment_instructions', 'Zahlungshinweise', NOW(), NOW()),
('sofort_multipay_finish', 1, 1, 'checkout.sv.reasons_hint', 'Bitte achten Sie darauf, bei der Überweisung den hier angegebenen Verwendungszweck zu übernehmen, damit wir Ihre Zahlung zuordnen können.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 1, 'payment_cancel', 'Die gewählte Zahlart ist leider nicht möglich oder wurde auf Kundenwunsch abgebrochen. Bitte wählen Sie eine andere Zahlweise.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 1, 'order_cancel', 'Die Bestellung wurde storniert.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_public_title', 'SOFORT Überweisung', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_public_title', 'Vorkasse', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_private_title', 'Rechnung by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_public_title', 'Kauf auf Rechnung', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_public_title', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_ls_public_title', 'Bankeinzug (Lastschrift)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_ls_private_title', 'Lastschrift by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_landing_url', 'https://images.sofort.com/de/su/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_banner_img', '<img src=\"https://images.sofort.com/de/su/banner_300x100.png\" alt=\"SOFORT Überweisung\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_banner_ks_img', 'https://images.sofort.com/de/su/banner_400x100_ks.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_banner_img2', 'https://images.sofort.com/de/su/banner_150x200.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_banner_img3', 'https://images.sofort.com/de/su/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_banner_img_alt', 'SOFORT Überweisung', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_title_img', '<img src=\"https://images.sofort.com/de/su/logo_90x30.png\" alt=\"Logo SOFORT Überweisung\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_landing_url', 'https://images.sofort.com/de/sv/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_banner_img', '<img src=\"https://images.sofort.com/de/sv/banner_300x100.png\" alt=\"Vorkasse\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_title_img', '<img src=\"https://images.sofort.com/de/sv/logo_90x30.png\" alt=\"Logo Vorkasse by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_refunded_compensation', 'Ein Teil des Rechnungsbetrages wird zurückerstattet. Insgesamt zurückgebuchter Betrag: {{refunded_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_received_overpayment', '{{paymentMethodStr}} - Es wurde ein höherer Betrag als ursprünglich gefordert empfangen. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_partially_credited', '{{paymentMethodStr}} - Es wurde nur ein Teilbetrag des ursprünglich geforderten Betrages empfangen. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_landing_url', 'https://images.sofort.com/de/sr/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_banner_img', '<img src=\"https://images.sofort.com/de/sr/banner_300x100.png\" alt=\"Kauf auf Rechnung\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_title_img', '<img src=\"https://images.sofort.com/de/sr/logo_90x30.png\"  alt=\"Logo Rechnung by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_checkout_description', 'Zahlung durch Kauf auf Rechnung: Bezahlung erst 14 Tage nach Erhalt der Ware/Dienstleistung. Keine Registrierung notwendig. Ware/Dienstleistung kann SOFORT versendet werden.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_landing_url', 'https://images.sofort.com/de/sl/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_banner_img', '<img src=\"https://images.sofort.com/de/sl/banner_300x100.png\" alt=\"SOFORT Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_banner_img2', 'https://images.sofort.com/de/sl/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_banner_img_alt', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_title_img', '<img src=\"https://images.sofort.com/de/sl/logo_90x30.png\" alt=\"Logo SOFORT Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_loss', 'Zahlung nicht erhalten. Das Geld wird zurückgebucht. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_ls_landing_url', 'https://images.sofort.com/de/ls/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_ls_banner_img', '<img src=\"https://images.sofort.com/de/ls/banner_300x100.png\" alt=\"Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'error_missing_bankdata', 'Bitte füllen Sie die Felder Kontonummer, Bankleitzahl und Kontoinhaber vollständig aus.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_ls_title_img', '<img src=\"https://images.sofort.com/de/ls/logo_90x30.png\" alt=\"Logo Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_pending', 'SOFORT Überweisung als Zahlungsart gewählt. Transaktion nicht abgeschlossen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_refunded', 'Rechnungsbetrag wird zurückerstattet. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_customerprotection_credited', 'Geld ist auf dem Treuhandkonto eingegangen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_pending', 'Vorkasse by SOFORT als Zahlungsart gewählt. Transaktion nicht abgeschlossen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_pending', 'Kauf auf Rechnung als Zahlungsart gewählt. Transaktion nicht abgeschlossen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_confirm_invoice', 'Bestellung mit Kauf auf Rechnung erfolgreich übermittelt. Bestätigung durch Händler noch nicht erfolgt. Ihre Transaktions-ID:', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_not_credited_yet', 'Die Ware wird zum Versand bereit gestellt.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_refunded', 'Die Rechnung wurde storniert. Gutschrift erstellt. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_canceled', 'Die Rechnung wurde storniert', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sr_confirmation_period_expired', 'Rechnung wurde automatisch storniert. Bestätigungszeitraum von 30 Tagen abgelaufen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sl_pending', 'SOFORT Lastschrift als Zahlungsart gewählt. Transaktion nicht abgeschlossen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_ls_pending', 'Lastschrift by SOFORT als Zahlungsart gewählt. Transaktion nicht abgeschlossen.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_su_public_title_ks', 'SOFORT Überweisung mit Käuferschutz', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_sv_public_title_ks', 'Vorkasse mit Käuferschutz', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_banner_or_text', 'Banner oder Text bei der Auswahl der Zahlungsoptionen', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'no_payment_chosen', 'Es ist ein Fehler aufgetreten: Keine Bezahlart ausgewählt.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'sofort_multipay_payment_modules', 'SOFORT Überweisung und andere SOFORT-Produkte', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'payment_secret', 'Payment Secret', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'payment_state_open', 'Offen', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'payment_state_confirmed', 'Komplett bezahlt', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'payment_state_canceled', 'Vorgang wurde abgebrochen', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'payment_state_refunded', 'Betrag wurde gutgeschrieben', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'date', 'Datum', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'date_last_update', 'Datum (letztes Update)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 1, 'ordernumber', 'Bestellnummer', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'beta_products', 'https://documents.sofort.com/general/shopinfo/de', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'actions', 'Aktionen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.cp_image', 'https://images.sofort.com/de/su/ks_60x60.png', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.customerprotection_activated', 'Käuferschutz aktiviert', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'date', 'Datum', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'customer_number', 'Kundennummer', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'order_number', 'Bestellnummer', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'payment_status', 'Zahlstatus', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'payment_method', 'Zahlart', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'total', 'Rechnungssumme', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'article_total', 'Summe Position', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'tax_value', 'Mehrwertsteuersatz', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'net_value', 'Nettopreis', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'gross_value', 'Bruttopreis', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'search', 'Suche', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'search_for', 'nach ... suchen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'search_for_error', 'Bei der Suche ist ein Fehler aufgetreten', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'orders', 'Bestellungen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'confirm_invoice', 'Rechnung bestätigen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sv.status_credited', '{{paymentMethodStr}} - Geld ist eingegangen. {{time}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sv.status_partially_credited', 'Teilzahlung des Rechnungsbetrages eingegangen.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'no_transaction_found', 'Keine Transaktion gefunden', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'question_confirm_sr', 'Wollen Sie diese Rechnung tatsächlich bestätigen?', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'confirm_sr', 'Rechnung wird bestätigt', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'confirm_sr_error', 'Beim Bestätigen der Rechnung ist ein Fehler aufgetreten', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'question_cancel_sr', 'Sind Sie sicher, dass Sie die Rechnung wirklich stornieren wollen? Dieser Vorgang kann nicht rückgängig gemacht werden.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'question_cancel_confirmed_sr', 'Sind Sie sicher, dass Sie die Rechnung wirklich gutschreiben wollen? Dieser Vorgang kann nicht rückgängig gemacht werden.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'cancel_sr', 'Rechnung wird storniert', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'button_confirm_sr', 'Rechnung bestätigen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'invoice_status.reminder', 'Mahnstufe {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'invoice_status.delcredere', 'Inkassoübergabe', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'edit_invoice.CartItemsEdited', 'Der Warenkorb wurde angepasst.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.sr.edit_invoice.CartReset', 'Der Warenkorb wurde zurückgesetzt.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.sr.current_amount', 'Aktueller Rechnungsbetrag:', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'button_cancel_sr', 'Rechnung stornieren', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'button_download_sr', 'Rechnung herunterladen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'button_download_sr2', 'Rechnung/Gutschrift herunterladen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'order_details', 'Details zur Bestellung', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'cancel_sr_error', 'Beim Stornieren der Rechnung ist ein Fehler aufgetreten', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'cancel_sr_title', 'Rechnung stornieren', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'download_invoice', 'Rechnung als PDF herunterladen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'download_invoice_error', 'Beim Herunterladen der Rechnung ist ein Fehler aufgetreten', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'invoice_objection', 'Einrede', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'please_wait', 'Bitte warten', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'test_connection', 'Verbindung wird geprüft', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'connection_ok', 'Verbindung zur Schnittstelle erfolgreich', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'connection_failed', 'Verbindung zur Schnittstelle konnte nicht hergestellt werden', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'wrong_credentials', 'Falsche Zugangsdaten', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'enter_credentials', 'Bitte geben Sie Ihren Konfigurationsschlüssel ein.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'success', 'Erfolg', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'inactive_module', 'Modul inaktiv', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'activate_module', 'Bitte aktivieren Sie das Modul!', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'advice', 'Hinweis zum Modul von sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'reason', 'Verwendungszweck', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'payment_secret', 'Payment Secret', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'orders_by_sofort', 'Zahlungen per sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.transactionStateLabel', 'Transaktionsstatus:', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.InvoiceStateLabel', 'Rechnungsstatus:', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.PendingConfirmInvoice', 'Bestellung mit Kauf auf Rechnung erfolgreich übermittelt. Bestätigung durch Händler noch nicht erfolgt. Ihre Transaktions-ID:', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.LossConfirmationPeriodExpired', 'Rechnung wurde automatisch storniert. Bestätigungszeitraum von 30 Tagen abgelaufen.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.ConfirmedWaitingForMoney', 'Die Rechnung wurde bestätigt, warte auf Geldeingang.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.PendingInvoice', 'Rechnung noch offen.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.DunningLevel', 'Mahnstufe {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.InvoiceMoneyReceived', 'Die Rechnung wurde ausbezahlt.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.MoneyRefunded', 'Das Geld wird zurückerstattet.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.InvoiceRefunded', 'Rechnung wird gutgeschrieben.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.PaidByCustomer', 'Käufer hat Rechnung bezahlt.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.Encashment', 'Inkassoübergabe', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.InvoiceCancelled', 'Die Rechnung wurde storniert.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.ReceiptOfPayment', 'Zahlungseingang', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.ReadyForShipment', 'Die Ware wird zum Versand bereit gestellt.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'sr.statusRefunded', 'Die Rechnung wurde storniert. Gutschrift erstellt.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.cancel_invoice', 'Rechnung stornieren', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.cancel_confirmed_invoice', 'Rechnung gutschreiben', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.confirm_invoice', 'Rechnung bestätigen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.article', 'Artikel', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.description', 'Beschreibung', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.article_number', 'Artikelnummer', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.cancel_invoice.question', 'Wollen Sie die Rechnung wirklich stornieren?', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.download_invoice', 'Rechnung herunterladen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.download_invoice.hint', 'Laden Sie hier das entsprechende Dokument (Rechnungsvorschau, Rechnung, Gutschrift) herunter.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.download_credit_memo', 'Gutschrift herunterladen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.download_invoice_preview', 'Rechnungsvorschau herunterladen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_cart', 'Warenkorb speichern', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_cart.question', 'Wollen Sie den Warenkorb wirklich anpassen?', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_cart.error', 'Beim Bearbeiten des Warenkorbs ist ein Fehler aufgetreten.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_cart.hint', 'Speichern Sie hier Ihre Änderungen am Warenkorb. Bei bereits bestätigten Rechnung führt ein mengenmäßig reduzierter sowie ein von der Rechnung gelöschter Artikel zu einer Gutschrift.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.remove_from_invoice', 'Position löschen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.remove_from_invoice.question', 'Sie möchten folgende Artikel wirklich löschen: %s ?', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.remove_from_invoice.hint', 'Markieren Sie Artikel um sie zu löschen. Bei einer bereits bestätigten Rechnung führt das Löschen eines Artikels zu einer Gutschrift.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.quantity', 'Menge', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_quantity', 'Menge anpassen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_quantity.hint', 'Sie können die Anzahl der Artikel pro Position anpassen. Es dürfen lediglich Mengen reduziert, nicht jedoch hinzugefügt werden.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.price', 'Preis', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_price', 'Preis anpassen', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_price.hint', 'Sie können den Preis der einzelnen Artikel pro Position anpassen. Preise können lediglich reduziert, nicht erhöht werden.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_price_and_quantity.hint', 'Es können nicht gleichzeitig Preis und Menge angepasst werden.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_confirmed_invoice', 'Bitte Kommentar eingeben', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_confirmed_invoice.hint', 'Bei Anpassung einer bereits bestätigten Rechnung muss eine entsprechende Begründung hinterlegt werden. Diese erscheint später auf der Gutschrift als Kommentar zum entsprechenden Artikel.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.update_shipping_costs.hint', 'Bei Retouren dürfen Versandkosten nicht als alleinstehender Posten auf einer Rechnung erscheinen.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.remove_last_article.hint', 'Durch das Reduzieren der Anzahl aller bzw. durch Entfernen des letzten Artikels wird die Rechnung komplett storniert.', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.invoice_details', 'Details zur Zahlung', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.order_details', 'Details zur Bestellung', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.invoice_history', 'Historie der Änderungen zur Zahlung', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.hint', 'Achtung', NOW(), NOW()),
('sofort_multipay_backend', 1, 1, 'admin.action.warning', 'Warnung', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'orderstatusset', ' - Ihre Bestellung wurde auf folgenden Status gesetzt: ', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'order_error', 'Fehler bei der Bestellung aufgetreten.', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'cart_id', 'Warenkorb-ID', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'dhw_sr_conditions', 'https://documents.sofort.com/de/sr/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'dhw_sv_conditions', 'https://documents.sofort.com/de/sv/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'dhw_ls_conditions', 'https://documents.sofort.com/de/ls/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'shipping_costs', 'Versandkosten', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'checkout.sl.description', '<ul><li>Zahlungssystem mit TÜV-geprüftem Datenschutz</li><li>Keine Registrierung notwendig</li><li>Ware/Dienstleistung kann SOFORT versendet werden</li><li>Bitte halten Sie Ihre Online-Banking-PIN bereit</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'checkout.su.description', '<ul><li>Zahlungssystem mit TÜV-geprüftem Datenschutz</li><li>Keine Registrierung notwendig</li><li>Ware/Dienstleistung wird bei Verfügbarkeit SOFORT versendet</li><li>Bitte halten Sie Ihre Online-Banking-Daten (PIN/TAN) bereit</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 1, 'mandatory_fields', 'Die mit einem * markierten Felder sind Pflichtfelder.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010', 'Die Daten sind unvollständig oder fehlerhaft. Bitte korrigieren Sie diese oder kontaktieren Sie den Shopbetreiber.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.shipping_address.country_code', 'Das Länderkennzeichen der Versandadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.invoice_address.country_code', 'Das Länderkennzeichen der Rechnungsadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.invoice_address.firstname', 'Der Vorname der Rechnungsadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.invoice_address.lastname', 'Der Nachname der Rechnungsadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.invoice_address.street', 'Straße und Hausnummer müssen durch ein Leerzeichen getrennt werden.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.invoice_address.zipcode', 'Die Postleitzahl der Rechnungsadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.invoice_address.city', 'Der Städtename der Rechnungsadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.shipping_address.firstname', 'Der Vorname der Versandadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.shipping_address.lastname', 'Der Nachname der Versandadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.shipping_address.street', 'Straße und Hausnummer müssen durch ein Leerzeichen getrennt werden.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.shipping_address.zipcode', 'Die Postleitzahl der Versandadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8010.shipping_address.city', 'Der Städtename der Versandadresse darf nicht leer sein.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8013', 'Es werden im Moment nur Bestellungen in Euro unterstützt. Bitte korrigieren Sie dies und versuchen es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8015', 'Der Gesamtbetrag ist zu groß oder zu klein. Bitte korrigieren Sie dies oder kontaktieren Sie den Shopbetreiber.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8019', 'Die Bestellung kann aufgrund fehlerhafter E-Mail-Adresse nicht durchgeführt werden. Bitte korrigieren Sie diese und versuchen Sie es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8020', 'Die Bestellung kann aufgrund fehlerhafter Telefonnummer nicht durchgeführt werden. Bitte korrigieren Sie diese und versuchen Sie es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8023', 'Die Bestellung kann aufgrund fehlerhafter BIC (Bank Identifier Code) nicht durchgeführt werden. Bitte korrigieren Sie diese und versuchen Sie es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8024', 'Die Bestellung kann aufgrund fehlerhafter Länderkennung nicht durchgeführt werden. Die Liefer-/Rechnungsadresse muss in Deutschland liegen. Bitte korrigieren Sie diese und versuchen Sie es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8029', 'Es werden nur deutsche Konten unterstützt. Bitte korrigieren Sie dies oder wählen Sie eine andere Zahlart.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8033', 'Der Gesamtbetrag ist zu hoch. Bitte korrigieren Sie dies und versuchen es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8034', 'Der Gesamtbetrag ist zu niedrig. Bitte korrigieren Sie dies und versuchen es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8051', 'Die Anfrage enthielt ungültige Warenkorbpositionen. Bitte korrigieren Sie dies oder kontaktieren Sie den Shopbetreiber.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8058', 'Bitte geben Sie mindestens den Kontoinhaber an und versuchen Sie es dann erneut.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8061', 'Eine Transaktion mit den von Ihnen übermittelten Daten existiert bereits.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8062', 'Kauf auf Rechnung steht momentan nur Privatkunden zur Verfügung.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_8068', 'Kauf auf Rechnung steht momentan nur Privatkunden zur Verfügung.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9000', 'Keine Rechnungs-Transaktion gefunden.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9001', 'Die Rechnung konnte nicht bestätigt werden.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9002', 'Die Übergebene Rechnungssumme übersteigt das Kreditlimit.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9003', 'Die Rechnung konnte nicht storniert werden.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9004', 'Die Anfrage enthielt ungültige Warenkorbpositionen.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9005', 'Der Warenkorb konnte nicht angepasst werden.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9006', 'Der Zugriff zur Schnittstelle ist 30 Tage nach Zahlungseingang nicht mehr möglich.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9007', 'Die Rechnung wurde bereits storniert.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9008', 'Der Betrag der übergebenen Mehrwertsteuer ist zu hoch.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9009', 'Die Beträge der übergeben Mehrwertsteuersätze der Artikel stehen in Konflikt zueinander.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9010', 'Die Anpassung des Warenkorbs ist nicht möglich.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9011', 'Es wurde kein Kommentar für die Anpassung des Warenkorbs übergeben.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9012', 'Es können keine Positionen zum Warenkorb hinzugefügt werden. Ebenso kann die Menge pro Rechnungsposition nicht heraufgesetzt werden. Beträge einzelner Positionen dürfen den Ursprungsbetrag nicht überschreiten.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9013', 'Es befinden sich ausschließlich nichtfakturierbare Artikel im Warenkorb.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9014', 'Die übergebene Rechnungsnummer wird bereits verwendet.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9015', 'Die übergebene Nummer der Gutschrift wird bereits verwendet.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9016', 'Die übergebene Bestellnummer wird bereits verwendet.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9017', 'Die Rechnung wurde bereits bestätigt.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_9018', 'Es wurden keine Daten der Rechnung angepasst.', NOW(), NOW()),
('sofort_multipay_errors', 1, 1, 'error_10001', 'Bitte füllen Sie die Felder Kontonummer, Bankleitzahl und Kontoinhaber vollständig aus.', NOW(), NOW());