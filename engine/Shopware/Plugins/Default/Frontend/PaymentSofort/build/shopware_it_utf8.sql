INSERT INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_version', '1.0.4', NOW(), NOW()),
('sofort_multipay', 1, 136, 'sofort_multipay_plugin_description', 'sofort Gateway è una soluzione integrata di vari prodotti sofort in combinazione con un conto presso la nostra banca \"Sofort Bank\". Se crei un progetto sofort Gateway, avrai a completa disposizione tutte le nostre modalità di pagamento. Sará l´acquirente a decidere come pagare. Questa opzione ti assicura un´assoluta flessibilità sulle maggiori modalità di pagamento online. Tutti i pagamenti vengono effettuati in Euro.', NOW(), NOW()),
('sofort_multipay', 1, 136, 'sofort_project_settings', 'Configurazione del progetto di SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 136, 'sofort_multipay_api_key', 'Chiave di configurazione assegnata da SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 136, 'sofort_multipay_test_api_key', 'Test della chiave di configurazione/API key', NOW(), NOW()),
('sofort_multipay', 1, 136, 'test_api_key_button', 'test', NOW(), NOW()),
('sofort_multipay', 1, 136, 'order_status_pending_desc', 'Stato dell\'ordine temporaneo<br />Stato dell\'ordine per transazioni non concluse. L\'ordine è stato eseguito, ma la transazione non è stata ancora confermata da SOFORT AG.', NOW(), NOW()),
('sofort_multipay', 1, 136, 'order_status_confirmed_desc', 'Stato dell\'ordine confermato<br />Stato dell\'ordine dopo l\'avvenuta transazione.', NOW(), NOW()),
('sofort_multipay', 1, 136, 'order_status_canceled_desc', 'Stato dell\'ordine annullato<br />Stato dell\'ordine dopo un annullamento della fattura.', NOW(), NOW()),
('sofort_multipay', 1, 136, 'order_status_partially_credited_desc', 'Pagamento parziale<br />Stato dell\'ordine dopo il pagamento parziale dell\'importo complessivo.', NOW(), NOW()),
('sofort_multipay', 1, 136, 'customer_protection_su', 'SOFORT Banking con protezione acquirenti', NOW(), NOW()),
('sofort_multipay', 1, 136, 'customer_protection_sv', 'Vorkasse con protezione acquirenti', NOW(), NOW()),
('sofort_multipay', 1, 136, 'banner_su_desc', 'Banner su SOFORT Banking', NOW(), NOW()),
('sofort_multipay', 1, 136, 'text_su_desc', 'Logo e testo su SOFORT Banking', NOW(), NOW()),
('sofort_multipay', 1, 136, 'banner_sl_desc', 'Banner su SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 136, 'text_sl_desc', 'Logo e testo presso SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 136, 'save', 'salvare', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_holder', 'Intestatario del conto', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_account_number', 'Numero di conto', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_bank_code', 'Codice ABI', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_iban', 'IBAN', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_bic', 'BIC', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_amount', 'Importo', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_reason_1', 'Causale 1', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_reason_2', 'Causale 2', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_transaction_id', 'ID della transazione', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_su_not_credited_yet', 'Ordine con SOFORT Banking trasmesso con successo. Il tuo ID della transazione: {{transaction}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_su_status_loss', 'Non è stato ancora possibile riscontare l\'accredito. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_not_credited', 'La merce è pronta per la spedizione.', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_credited', 'Accredito.', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_credited_to_seller', 'L\'accredito sul conto del venditore è andato a buon fine.', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_confirm_invoice2_vorkasse', 'Ordine con {{paymentMethodStr}} trasmesso con successo. ID della transazione: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_confirm_invoice2_sofortlastschrift', 'Ordine con {{paymentMethodStr}} trasmesso con successo. ID della transazione: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_confirm_invoice2_lastschriftbysofort', 'Ordine con {{paymentMethodStr}} trasmesso con successo. ID della transazione: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_debit_returned2', 'Per questa transazione vi è un addebito respinto. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_accept_conditions', 'Ti preghiamo di accettare l\'informativa sulla tutela dei dati personali.', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_condition', 'Informativa sulla privacy', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_condition_notice', 'Ho letto le {{conditions}}.', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'sofort_multipay_payment_instructions', 'Indicazioni per il pagamento', NOW(), NOW()),
('sofort_multipay_finish', 1, 136, 'checkout.sv.reasons_hint', 'Si prega di indicare la causale del bonifico in modo da poter identificare il pagamento.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 136, 'payment_cancel', 'La modalità di pagamento selezionata non è disponibile o è stata annullata dall\'acquirente. Ti preghiamo di selezionare un\'altra modalità di pagamento.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 136, 'order_cancel', 'L\'ordine è stato annullato.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_public_title', 'SOFORT Banking', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_public_title', 'Vorkasse', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_private_title', 'Rechnung by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_public_title', 'Acquisto su fattura', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_public_title', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_ls_public_title', 'Prelievo bancario (addebito)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_ls_private_title', 'Lastschrift by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_landing_url', 'https://images.sofort.com/it/su/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_banner_img', '<img src=\"https://images.sofort.com/it/su/banner_300x100.png\" alt=\"SOFORT Banking\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_banner_ks_img', 'https://images.sofort.com/it/su/banner_400x100_ks.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_banner_img2', 'https://images.sofort.com/it/su/banner_150x200.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_banner_img3', 'https://images.sofort.com/it/su/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_banner_img_alt', 'SOFORT Banking', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_title_img', '<img src=\"https://images.sofort.com/it/su/logo_90x30.png\" alt=\"Logo SOFORT Banking\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_landing_url', 'https://images.sofort.com/it/sv/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_banner_img', '<img src=\"https://images.sofort.com/it/sv/banner_300x100.png\" alt=\"Vorkasse\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_title_img', '<img src=\"https://images.sofort.com/it/sv/logo_90x30.png\" alt=\"Logo Vorkasse by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_refunded_compensation', 'Una parte dell\'importo della fattura verrà rimborsato. Importo totale rimborsato: {{refunded_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_received_overpayment', '{{paymentMethodStr}} - È stato ricevuto un importo superiore a quello inizialmente richiesto. Betrag: {{received_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_partially_credited', '{{paymentMethodStr}} - È stato ricevuto solo un importo parziale dell\'importo originariamente richiesto. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_landing_url', 'https://images.sofort.com/it/sr/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_banner_img', '<img src=\"https://images.sofort.com/it/sr/banner_300x100.png\" alt=\"Acquisto su fattura\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_title_img', '<img src=\"https://images.sofort.com/it/sr/logo_90x30.png\"  alt=\"Logo Rechnung by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_checkout_description', 'Pagamento con acquisto su fattura: Pagamento solo 14 giorni dopo la ricezione della merce/servizio. Registrazione non necessaria. Merce/servizio può essere spedita/o SUBITO.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_landing_url', 'https://images.sofort.com/it/sl/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_banner_img', '<img src=\"https://images.sofort.com/it/sl/banner_300x100.png\" alt=\"SOFORT Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_banner_img2', 'https://images.sofort.com/it/sl/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_banner_img_alt', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_title_img', '<img src=\"https://images.sofort.com/it/sl/logo_90x30.png\" alt=\"Logo SOFORT Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_loss', 'Pagamento non ricevuto. L\'importo verrà riaccreditato. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_ls_landing_url', 'https://images.sofort.com/it/ls/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_ls_banner_img', '<img src=\"https://images.sofort.com/it/ls/banner_300x100.png\" alt=\"Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'error_missing_bankdata', 'Ti preghiamo di compilare completamente i campi relativi al numero di conto, codice ABI e intestatario del conto.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_ls_title_img', '<img src=\"https://images.sofort.com/it/ls/logo_90x30.png\" alt=\"Logo Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_pending', 'SOFORT Banking selezionata come modalità di pagamento. Transazione non conclusa.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_refunded', 'L\'importo della fattura verrà rimborsato. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_customerprotection_credited', 'Il denaro è stato accreditato sul conto fiduciario.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_pending', 'Vorkasse by SOFORT selezionata come modalità di pagamento. Transazione non conclusa.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_pending', 'Acquisto su fattura selezionato come metodo di pagamento. Transazione non conclusa.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_confirm_invoice', 'Ordine con acquisto su fattura trasmesso con successo. Conferma del venditore non ancora avvenuta. Il tuo ID della transazione:', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_not_credited_yet', 'La merce è pronta per la spedizione.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_refunded', 'La fattura è stata annullata. Importo accreditato. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_canceled', 'La fattura è stata annullata', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sr_confirmation_period_expired', 'La fattura è stata annullata automaticamente. Il termine di conferma di 30 giorni è scaduto.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sl_pending', 'SOFORT Lastschrift selezionato come metodo di pagamento. Transazione non conclusa.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_ls_pending', 'Lastschrift by SOFORT selezionato come metodo di pagamento. Transazione non conclusa.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_su_public_title_ks', 'SOFORT Banking con protezione acquirenti', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_sv_public_title_ks', 'Vorkasse con protezione acquirenti', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_banner_or_text', 'Banner o testo nella selezione delle opzioni di pagamento', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'no_payment_chosen', 'Si è verificato un errore: modalità di pagamento non selezionata.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'sofort_multipay_payment_modules', 'SOFORT Banking e altri prodotti di SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'payment_secret', 'Payment Secret', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'payment_state_open', 'in sospeso', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'payment_state_confirmed', 'Pagato completamente', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'payment_state_canceled', 'L\'operazione è stata annullata', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'payment_state_refunded', 'L\'importo è stato accreditato.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'date', 'Data', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'date_last_update', 'Data (ultimo aggiornamento)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 136, 'ordernumber', 'Numero d\'ordine', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'beta_products', 'https://documents.sofort.com/general/shopinfo/it', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'actions', 'Promozioni', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.cp_image', 'https://images.sofort.com/de/su/ks_60x60.png', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.customerprotection_activated', 'Protezione acquirenti attivata', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'date', 'Data', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'customer_number', 'ID cliente', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'order_number', 'Numero d\'ordine', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'payment_status', 'Stato del pagamento', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'payment_method', 'Metodo di pagamento', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'total', 'Somma fatturata', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'article_total', 'Somma posizioni', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'tax_value', 'Aliquota IVA', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'net_value', 'Prezzo netto', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'gross_value', 'Prezzo lordo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'search', 'Ricerca', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'search_for', 'ricercare...', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'search_for_error', 'Si è verificato un errore durante la ricerca', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'orders', 'Ordini', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'confirm_invoice', 'Confermare fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sv.status_credited', '{{paymentMethodStr}} - Accredito ricevuto. {{time}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sv.status_partially_credited', 'Pagamento parziale dell\'importo ricevuto.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'no_transaction_found', 'Non sono state trovare transazioni', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'question_confirm_sr', 'Vuoi veramente confermare questa fattura?', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'confirm_sr', 'Conferma della fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'confirm_sr_error', 'Si è verificato un errore durante la conferma della fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'question_cancel_sr', 'Sei sicuro di voler annullare la fattura? Questa operazione non potrà più essere annullata.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'question_cancel_confirmed_sr', 'Sei sicuro di voler accreditare l\'importo? Questa procedura non può essere annullata.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'cancel_sr', 'Annullamento della fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'button_confirm_sr', 'Confermare fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'invoice_status.reminder', 'Livello di sollecito {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'invoice_status.delcredere', 'Consegna dell\'incasso', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'edit_invoice.CartItemsEdited', 'Il carrello è stato modificato.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.sr.edit_invoice.CartReset', 'Il carrello è stato ripristinato.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.sr.current_amount', 'Importo attuale della fattura:', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'button_cancel_sr', 'Annullare fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'button_download_sr', 'Scaricare fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'button_download_sr2', 'Scaricare fattura/ricevuta di accredito', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'order_details', 'Dettagli dell\'ordine', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'cancel_sr_error', 'Si è verificato un errore durante l\'annullamento della fattura.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'cancel_sr_title', 'Annullare fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'download_invoice', 'Scaricare la fattura in PDF', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'download_invoice_error', 'Si è verificato un errore durante il download della fattura.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'invoice_objection', 'Eccezione', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'please_wait', 'Ti preghiamo di attendere', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'test_connection', 'Verifica della connessione', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'connection_ok', 'Connessione all\'interfaccia riuscita', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'connection_failed', 'Non è stato possibile stabilire una connessione con l\'interfaccia', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'wrong_credentials', 'Dati di accesso errati', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'enter_credentials', 'Si prega di inserire la chiave di configurazione.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'success', 'Successo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'inactive_module', 'Modulo inattivo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'activate_module', 'Attivare il modulo!', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'advice', 'Informazioni sul modulo di sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'reason', 'Causale', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'payment_secret', 'Payment Secret', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'orders_by_sofort', 'Pagamenti per sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.transactionStateLabel', 'Stato della transazione:', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.InvoiceStateLabel', 'Stato della fattura:', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.PendingConfirmInvoice', 'Ordine con acquisto su fattura tramesso con successo. Conferma del venditore non ancora avvenuta. Il tuo ID della transazione:', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.LossConfirmationPeriodExpired', 'La fattura è stata annullata automaticamente. Il termine di conferma di 30 giorni è scaduto.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.ConfirmedWaitingForMoney', 'La fattura è stata confermata. In attesa del pagamento.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.PendingInvoice', 'Fattura in sospeso.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.DunningLevel', 'Livello di sollecito {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.InvoiceMoneyReceived', 'Il conto è stato pagato.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.MoneyRefunded', 'L\'importo verrà rimborsato.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.InvoiceRefunded', 'L\'importo verrà accreditato.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.PaidByCustomer', 'L\'acquirente ha pagato il conto.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.Encashment', 'Consegna dell\'incasso', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.InvoiceCancelled', 'La fattura è stata annullata.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.ReceiptOfPayment', 'Accredito', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.ReadyForShipment', 'La merce è pronta per la spedizione.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'sr.statusRefunded', 'La fattura è stata annullata. Importo accreditato.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.cancel_invoice', 'Stornare la fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.cancel_confirmed_invoice', 'Accredita l\'importo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.confirm_invoice', 'Confermare fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.article', 'Articolo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.description', 'Descrizione', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.article_number', 'Articolo n.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.cancel_invoice.question', 'Vuoi veramente stornare la fattura?', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.download_invoice', 'Scaricare la fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.download_invoice.hint', 'È possibile scaricare il documento corrispondente (anteprima fattura, fattura, nota di credito).', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.download_credit_memo', 'Scaricare la nota di credito', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.download_invoice_preview', 'Scaricare l\'anteprima della fattura', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_cart', 'Salvare il carrello', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_cart.question', 'Vuoi veramente modificare il carrello?', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_cart.error', 'Durante la modifica del carrello si è verificato un errore.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_cart.hint', 'Salvare qui le modifiche al carrello. In caso di fattura già confermata, la riduzione della quantità di un articolo o la sua eliminazione avrà come conseguenza la creazione di una nota di credito.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.remove_from_invoice', 'Eliminare la posizione', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.remove_from_invoice.question', 'Sei sicuro di voler eliminare i seguenti articoli: %s ?', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.remove_from_invoice.hint', 'Selezionare gli articoli che si desiderano eliminare. In caso di fattura già confermata, l\'eliminazione di un articolo ha come conseguenza la creazione di una nota di credito.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.quantity', 'Quantità', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_quantity', 'Modificare la quantità', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_quantity.hint', 'È possibile modificare la quantità degli articoli per ogni posizione. La quantità si può solo ridurre, non aumentare.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.price', 'Prezzo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_price', 'Modificare il prezzo', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_price.hint', 'È possibile modificare il prezzo dei singoli articoli per posizione. I prezzi si possono solo ridurre, non aumentare.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_price_and_quantity.hint', 'Non si possono modificare contemporaneamente sia prezzo che quantità.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_confirmed_invoice', 'Inserire un commento', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_confirmed_invoice.hint', 'Se si modifica una fattura già confermata va inserita una motivazione per il cambiamento effettuato. Questa apparirà sulla nota di credito come commento al relativo articolo.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.update_shipping_costs.hint', 'In caso di resa, le spese di spedizione non devono comparire sulla fattura come singolo articolo.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.remove_last_article.hint', 'Riducendo il numero di tutti gli articoli o rimuovendo l\'ultimo articolo, la fattura verrà completamente stornata.', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.invoice_details', 'Dettagli del pagamento', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.order_details', 'Dettagli dell\'ordine', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.invoice_history', 'Cronologia delle modifiche dei pagamenti', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.hint', 'Attenzione', NOW(), NOW()),
('sofort_multipay_backend', 1, 136, 'admin.action.warning', 'Avviso', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'orderstatusset', '- Il tuo ordine è stato impostato sul seguente stato:', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'order_error', 'Si è verificato un errore durante l\'ordinazione.', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'cart_id', 'ID carrello', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'dhw_sr_conditions', 'https://documents.sofort.com/de/sr/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'dhw_sv_conditions', 'https://documents.sofort.com/de/sv/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'dhw_ls_conditions', 'https://documents.sofort.com/de/ls/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'shipping_costs', 'Costi di spedizione', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'checkout.sl.description', '<ul><li>Sistema di pagamento con protezione dei dati certificata TÜV</li><li>Registrazione non necessaria</li><li>Merce/servizio può essere spedita/o SUBITO</li><li>Ti preghiamo di avere a disposizione il codice PIN per la banca online</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'checkout.su.description', '<ul><li>Sistema di pagamento con protezione dei dati certificata TÜV</li><li>Registrazione non necessaria</li><li>Merce/servizio può essere spedita/o SUBITO</li><li>Ti preghiamo di avere a disposizione i dati per l\'online banking (PIN/password dispositiva)</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 136, 'mandatory_fields', 'I campi marcati con * sono obbligatori.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010', 'I dati inseriti sono incompleti o errati. Ti preghiamo di correggerli o contattare il gestore.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.shipping_address.country_code', 'Il campo relativo al codice paese dell\'indirizzo di fatturazione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.invoice_address.country_code', 'Il campo relativo al codice paese dell\'indirizzo di fatturazione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.invoice_address.firstname', 'Il campo relativo al nome e all\'indirizzo di fatturazione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.invoice_address.lastname', 'Il campo relativo al cognome dell\'indirizzo di fatturazione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.invoice_address.street', 'Via e numero civico devono essere separati da uno spazio.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.invoice_address.zipcode', 'Il campo relativo al codice postale dell\'indirizzo di fatturazione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.invoice_address.city', 'Il campo relativo alla città dell\'indirizzo di fatturazione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.shipping_address.firstname', 'Il campo relativo al nome dell\'indirizzo di spedizione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.shipping_address.lastname', 'Il campo relativo al nome dell\'indirizzo di spedizione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.shipping_address.street', 'Via e numero civico devono essere separati da uno spazio.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.shipping_address.zipcode', 'Il campo relativo al codice postale dell\'indirizzo di spedizione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8010.shipping_address.city', 'Il campo relativo alla città e l\'indirizzo di spedizione non deve essere vuoto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8013', 'Al momento vengono supportati solo ordini in Euro. Ti preghiamo di correggere il valore e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8015', 'L\'importo complessivo è troppo alto o troppo basso. Ti preghiamo di correggere l\'informazione o contattare il fornitore.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8019', 'L\'ordine non può essere effettuato a causa dell\'indirizzo e-mail non valido. Ti preghiamo di correggerlo e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8020', 'L\'ordine non può essere eseguito a causa di un numero di telefono errato. Ti preghiamo di correggere i dati e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8023', 'L\'ordine non può essere eseguito a causa di un BIC (Bank Identifier Code) errato. Ti preghiamo di correggere i dati e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8024', 'L\'ordine non può essere eseguito a causa di un codice paese errato. L\'indirizzo di spedizione/fatturazione deve essere in Germania. Ti preghiamo di correggere i dati e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8029', 'Sono compatibili solo conti tedeschi. Ti preghiamo di correggere l\'informazione o selezionare un\'altra modalità di pagamento.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8033', 'L\'importo totale è troppo alto. Ti preghiamo di correggerlo e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8034', 'L\'importo totale è troppo basso. Ti preghiamo di correggerlo e riprovare di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8051', 'La richiesta contiene articoli non validi. Si prega di effettuare le dovute correzioni o di contattare il proprietario del negozio.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8058', 'Inserire almeno l\'intestatario del conto e riprovate di nuovo.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8061', 'Esiste già una transazione con i dati trasmessi.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8062', 'Acquisto su fattura è disponibile al momento solo per clienti privati.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_8068', 'Kauf auf Rechnung è attualmente disponibile solo per clienti privati.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9000', 'Non è stata trovata la transazione della fattura.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9001', 'Non è stato possibile confermare la fattura.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9002', 'La somma inserita supera il limite di credito.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9003', 'Non è stato possibile annullare la fattura.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9004', 'La richiesta contiene voci del carrello non valide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9005', 'Non è stato possibile aggiornare il carrello.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9006', 'L\'accesso all\'interfaccia non è più possibile dopo 30 giorni dal ricevimento del pagamento.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9007', 'La fattura è stata già annullata.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9008', 'L\'importo dell\'IVA inserito è troppo alto.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9009', 'Gli importi delle aliquote IVA indicati negli articoli sono in conflitto tra loro.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9010', 'Non è stato possibile attualizzare il carrello.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9011', 'Non è stato indicato alcun commento relativo alla modifica del carrello.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9012', 'Non può essere aggiunta alcuna posizione nel carrello. Analogamente non si può aumentare la quantità delle singole voci.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9013', 'Nel carrello si trovano solamente articoli non fatturabili.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9014', 'Il numero di fattura inserito viene già utilizzato.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9015', 'Il numero di nota di credito inserito è stato già utilizzato.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9016', 'Il numero d\'ordine inserito viene già utilizzato.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9017', 'La fattura è stata già confermata.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_9018', 'Non è stato modificato alcun dato della fattura.', NOW(), NOW()),
('sofort_multipay_errors', 1, 136, 'error_10001', 'Compilare i campi relativi al numero di conto, codice ABI e intestatario del conto.', NOW(), NOW());