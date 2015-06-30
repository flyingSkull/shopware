INSERT INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_version', '1.0.4', NOW(), NOW()),
('sofort_multipay', 1, 187, 'sofort_multipay_plugin_description', 'Gateway sofort jest zintegrowanym rozwiązaniem dla naszych produktów w połączeniu z kontem bankowym Sofort Bank. Zakładają Państwo projekt i mają Państwo do dyspozycji wszystkie nasze metody płatnicze. Wybór płatności przez klienta końcowego ma miejsce w Państwa sklepie internetowym. Dzięki temu oszczędzają Państwo czas i zyskują Państwo elastyczność w wymianie płatniczej e-commerce. Wszystkie płatności przeprowadzane są w walucie Euro.', NOW(), NOW()),
('sofort_multipay', 1, 187, 'sofort_project_settings', 'Ustawienia projektu SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 187, 'sofort_multipay_api_key', 'Klucz konfiguracyjny nadany przez SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 187, 'sofort_multipay_test_api_key', 'Przetestuj klucz konfiguracji/API-Key', NOW(), NOW()),
('sofort_multipay', 1, 187, 'test_api_key_button', 'test', NOW(), NOW()),
('sofort_multipay', 1, 187, 'order_status_pending_desc', 'Tymczasowy status zamówienia<br />Status zamówienia nie zakończonych transakcji. Zamówienie zostało zakończone ale transakcja nie została jeszcze potwierdzona przez SOFORT AG.', NOW(), NOW()),
('sofort_multipay', 1, 187, 'order_status_confirmed_desc', 'Potwierdzony status zamówienia<br />Status zamówienia po zakończonej transkacji.', NOW(), NOW()),
('sofort_multipay', 1, 187, 'order_status_canceled_desc', 'Anulowany status zamówienia<br />Status zamówienia po pełnym anulowaniu faktury.', NOW(), NOW()),
('sofort_multipay', 1, 187, 'order_status_partially_credited_desc', 'Płatność w ratach<br />Status zamówienia po wpłynięciu raty całej kwoty.', NOW(), NOW()),
('sofort_multipay', 1, 187, 'customer_protection_su', 'SOFORT Banking z ochroną kupującgo', NOW(), NOW()),
('sofort_multipay', 1, 187, 'customer_protection_sv', 'Płatność z góry', NOW(), NOW()),
('sofort_multipay', 1, 187, 'banner_su_desc', 'Baner w SOFORT Banking', NOW(), NOW()),
('sofort_multipay', 1, 187, 'text_su_desc', 'Logo i tekst w SOFORT Banking', NOW(), NOW()),
('sofort_multipay', 1, 187, 'banner_sl_desc', 'Baner w SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 187, 'text_sl_desc', 'Logo i tekst w SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 187, 'save', 'zapisz', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_holder', 'Właściciel konta', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_account_number', 'Numer konta', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_bank_code', 'Numer rozliczeniowy banku', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_iban', 'IBAN', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_bic', 'BIC', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_amount', 'Kwota', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_reason_1', 'Tytuł przelewu 1', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_reason_2', 'Tytuł przelewu 2', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_transaction_id', 'ID transakcji', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_su_not_credited_yet', 'Zamówienie z SOFORT Banking zostało pomyślnie przesłane. Państwa numer ID: {{transaction}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_su_status_loss', 'Wpływ pieniędzy nie został jak do tej pory odnotowany. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_not_credited', 'Towar jest przygotowywany do wysłania.', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_credited', 'Nadejście płatności', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_credited_to_seller', 'Nastąpił wpływ środków na konto sprzedawcy.', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_confirm_invoice2_vorkasse', 'Zamówienie z {{paymentMethodStr}} pomyślnie przekazane. ID transakcji: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_confirm_invoice2_sofortlastschrift', 'Zamówienie z {{paymentMethodStr}} pomyślnie przekazane. ID transakcji: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_confirm_invoice2_lastschriftbysofort', 'Zamówienie z {{paymentMethodStr}} pomyślnie przekazane. ID transakcji: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_debit_returned2', 'Ta transakcja oznaczona jest obciążeniem zwrotnym. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_accept_conditions', 'Prosimy o zaakceptowanie polityki prywatności.', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_condition', 'Polityka prywatności', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_condition_notice', 'Przeczytałem {{conditions}}.', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'sofort_multipay_payment_instructions', 'Wskazówki dotyczące płatności', NOW(), NOW()),
('sofort_multipay_finish', 1, 187, 'checkout.sv.reasons_hint', 'Proszę zwrócić uwagę na to, aby przejąć podany tutaj tytuł przelewu, abyśmy mogli przyporządkować Twoją płatność.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 187, 'payment_cancel', 'Wybrana metoda płatnicza nie jest niestety możliwa lub została przerwana na życzenie klienta. Prosimy o wybranie innej metody płatniczej.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 187, 'order_cancel', 'Zamówienie zostało anulowane.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_public_title', 'SOFORT Banking', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_public_title', 'Płatność z góry', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_private_title', 'Rechnung by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_public_title', 'Kauf auf Rechnung', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_public_title', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_ls_public_title', 'Pobranie z konta (polecenie obciążenia konta)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_ls_private_title', 'Lastschrift by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_landing_url', 'https://images.sofort.com/pl/su/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_banner_img', '<img src=\"https://images.sofort.com/pl/su/banner_300x100.png\" alt=\"SOFORT Banking\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_banner_ks_img', 'https://images.sofort.com/pl/su/banner_400x100_ks.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_banner_img2', 'https://images.sofort.com/pl/su/banner_150x200.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_banner_img3', 'https://images.sofort.com/pl/su/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_banner_img_alt', 'SOFORT Banking', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_title_img', '<img src=\"https://images.sofort.com/pl/su/logo_90x30.png\" alt=\"Logo SOFORT Banking\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_landing_url', 'https://images.sofort.com/pl/sv/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_banner_img', '<img src=\"https://images.sofort.com/de/sv/banner_300x100.png\" alt=\"Vorkasse\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_title_img', '<img src=\"https://images.sofort.com/pl/sv/logo_90x30.png\" alt=\"Logo Vorkasse by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_refunded_compensation', 'Część kwoty z rachunku została zwrócona. Całkowita zwrócona kwota: {{refunded_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_received_overpayment', '{{paymentMethodStr}} - Wpłynęła wyższa kwota niż początkowo żądana. Kwota: {{received_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_partially_credited', '{{paymentMethodStr}} - Wpłynęła tylko część początkowo żądanej kwoty. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_landing_url', 'https://images.sofort.com/pl/sr/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_banner_img', '<img src=\"https://images.sofort.com/pl/sr/banner_300x100.png\" alt=\"Kauf auf Rechnung\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_title_img', '<img src=\"https://images.sofort.com/pl/sr/logo_90x30.png\"  alt=\"Logo Rechnung by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_checkout_description', 'Płatność z Kauf auf Rechnung: zapłata dopiero po 14 dniach po otrzymaniu towaru/usługi. Rejestracja nie jest konieczna.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_landing_url', 'https://images.sofort.com/pl/sl/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_banner_img', '<img src=\"https://images.sofort.com/pl/sl/banner_300x100.png\" alt=\"SOFORT Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_banner_img2', 'https://images.sofort.com/pl/sl/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_banner_img_alt', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_title_img', '<img src=\"https://images.sofort.com/pl/sl/logo_90x30.png\" alt=\"Logo SOFORT Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_loss', 'Płatność nie wpłynęła. Środki płatnicze zostają cofnięte.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_ls_landing_url', 'https://images.sofort.com/pl/ls/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_ls_banner_img', '<img src=\"https://images.sofort.com/pl/ls/banner_300x100.png\" alt=\"Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'error_missing_bankdata', 'Prosimy o uzupełnienie numeru konta, numeru rozliczeniowego banku lub właściciela konta.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_ls_title_img', '<img src=\"https://images.sofort.com/pl/ls/logo_90x30.png\" alt=\"Logo Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_pending', 'SOFORT Banking wybrany jako metoda płatnicza. Transakcja nie została zakończona.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_refunded', 'Kwota faktury zostanie zwrócona. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_customerprotection_credited', 'Środki płatnicze wpłynęły na konto powiernicze.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_pending', 'Zapłata z góry SOFORT wybrana jako metoda płatnicza. Transakcja nie została zakończona.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_pending', 'Kauf auf Rechnung wybrany jako metoda płatnicza. Transakcja nie jest zakończona.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_confirm_invoice', 'Zamówienie z Kauf auf Rechnung zostało pomyślnie przekazane : potwierdzenia sprzedawcy jeszcze nie odnotowano. Państwa ID transakcji:', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_not_credited_yet', 'Towar jest przygotowywany do wysłania.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_refunded', 'Faktura została cofnięta. Zapis na koncie został przeprowadzony. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_canceled', 'Faktura została cofnięta.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sr_confirmation_period_expired', 'Faktura została automatycznie anulowana. Okres 30-dniowy dla potwierdzenia upłynął.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sl_pending', 'SOFORT Lastschrift wybrany jako metoda płatnicza. Transakcja nie została zakończona.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_ls_pending', 'Lastschrift by SOFORT jako metoda płatnicza wybrane. Transakcja nie jest zakończona.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_su_public_title_ks', 'SOFORT Banking z ochroną kupującgo', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_sv_public_title_ks', 'Płatność z góry', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_banner_or_text', 'Baner lub tekst przy wyborze opcji płatniczej', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'no_payment_chosen', 'Wystąpił błąd: metoda płatnicza nie została wybrana.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'sofort_multipay_payment_modules', 'SOFORT Banking i inne produkty SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'payment_secret', 'Payment Secret', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'payment_state_open', 'w oczekiwaniu', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'payment_state_confirmed', 'całkowicie zapłacony', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'payment_state_canceled', 'Prozes został przerwany.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'payment_state_refunded', 'Kwota została zapisana na dobro rachunku.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'date', 'Data', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'date_last_update', 'Data (ostatnia aktualizacja)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 187, 'ordernumber', 'Numer zamówienia', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'beta_products', 'https://documents.sofort.com/general/shopinfo/pl', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'actions', 'Akcje', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.cp_image', 'https://images.sofort.com/de/su/ks_60x60.png', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.customerprotection_activated', 'Ochrona kupującego aktywowana', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'date', 'Data', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'customer_number', 'Numer klienta', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'order_number', 'Numer zamówienia', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'payment_status', 'Status płatności', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'payment_method', 'Metoda płatności', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'total', 'Suma faktury', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'article_total', 'Suma pozycji', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'tax_value', 'Stawka podatku VAT', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'net_value', 'Cena netto', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'gross_value', 'Cena brutto', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'search', 'Szukaj', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'search_for', 'szukaj.....', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'search_for_error', 'W czasie wyszukiwania wystąpił błąd.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'orders', 'Zamówienia', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'confirm_invoice', 'Potwierdź fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sv.status_credited', '{{paymentMethodStr}} - Pieniądze nadeszły. {{time}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sv.status_partially_credited', 'W płynęła część kwoty z rachunku .', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'no_transaction_found', 'Nie odnaleziono żadnych transakcji.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'question_confirm_sr', 'Czy na pewno chcą Państwo potwierdzić ten rachunek?', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'confirm_sr', 'Rachunek zostanie potwierdzony.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'confirm_sr_error', 'Podczas potwierdzania rachunku wystąpił błąd.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'question_cancel_sr', 'Czy rzeczywiście chcą Państwo anulować fakturę?  Proces ten nie może być cofnięty.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'question_cancel_confirmed_sr', 'Jesteś pewien, że rzeczywiście chcesz zapisać fakturę na dobro rachunku? Tej operacji nie da się wycofać.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'cancel_sr', 'Rachunek zostanie anulowany.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'button_confirm_sr', 'Potwierdź fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'invoice_status.reminder', 'Stopień upomnienia {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'invoice_status.delcredere', 'Przekazanie Inkasso', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'edit_invoice.CartItemsEdited', 'Koszyk został dopasowany.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.sr.edit_invoice.CartReset', 'Koszyk został przywrócony do stanu wyjściowego.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.sr.current_amount', 'Aktualna kwota faktury:', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'button_cancel_sr', 'Anulować fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'button_download_sr', 'Pobierz fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'button_download_sr2', 'Pobierz fakturę/zapis na koncie', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'order_details', 'Szczegóły zamówienia', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'cancel_sr_error', 'Podczas procesu anulowania rachunku wystąpił błąd.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'cancel_sr_title', 'Anulować fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'download_invoice', 'Ściągnąć rachunek jako PDF', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'download_invoice_error', 'Podczas ściągania rachunku wystąpił błąd', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'invoice_objection', 'Zarzut', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'please_wait', 'Proszę czekać', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'test_connection', 'Połączenie zostanie sprawdzone.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'connection_ok', 'Połączenie ze złączami odbyło się pomyślnie.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'connection_failed', 'Połączenie ze złączami nie mogło zostać zrealizowane.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'wrong_credentials', 'Nieprawidłowe dane dostępu.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'enter_credentials', 'Proszę podać swój klucz konfiguracji.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'success', 'Sukces', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'inactive_module', 'Moduł nieaktywny', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'activate_module', 'Prosimy uaktywnić ten moduł!', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'advice', 'Wskazówka do modułu sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'reason', 'Tytuł przelewu', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'payment_secret', 'Payment Secret', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'orders_by_sofort', 'Płatności przez sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.transactionStateLabel', 'Status zamówienia:', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.InvoiceStateLabel', 'Status rachunku:', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.PendingConfirmInvoice', 'Zamówienie za pomocą zakupu na rachunek zostało pomyślnie przekierowane. Potwierdzenie ze strony sprzedawcy jeszcze nie nastąpiło. Państwa numer transakcji ID:', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.LossConfirmationPeriodExpired', 'Rachunek został automatycznie anulowny. Czas potwierdzenia 30 dni został przekroczony.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.ConfirmedWaitingForMoney', 'Rachunek został potwierdzony, proszę czekać na wpływ środków płatniczych.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.PendingInvoice', 'Rachunek jeszcze nie pokryty.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.DunningLevel', 'Stopień upomnienia {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.InvoiceMoneyReceived', 'Rachunek został wypłacony.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.MoneyRefunded', 'Pieniądze zostają zwrócone.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.InvoiceRefunded', 'Rachunek został wyrównany.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.PaidByCustomer', 'Kupujący zapłacił rachunek.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.Encashment', 'Przekazanie Inkasso', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.InvoiceCancelled', 'Rachunek został anulowany.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.ReceiptOfPayment', 'Wpływ płatności', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.ReadyForShipment', 'Towar w przygotowaniu do wysyłki.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'sr.statusRefunded', 'Faktura została cofnięta. Zapis na koncie został przeprowadzony.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.cancel_invoice', 'Anulować fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.cancel_confirmed_invoice', 'Zapisać fakturę na dobro rachunku', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.confirm_invoice', 'Zatwierdzić fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.article', 'Artykuł', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.description', 'Opis', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.article_number', 'Numer artykułu', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.cancel_invoice.question', 'Czy naprawdę chcesz anulować tą fakturę?', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.download_invoice', 'Pobrać fakturę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.download_invoice.hint', 'Pobierz tu odpowiedni dokument (podgląd faktury, fakturę, zapis na koncie).', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.download_credit_memo', 'Pobrać zapis na koncie', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.download_invoice_preview', 'Pobierz podgląd faktury', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_cart', 'Zapisać koszyk', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_cart.question', 'Czy rzeczywiście chcesz dopasować koszyk?', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_cart.error', 'W trakcie opracowywania koszyka wystąpił błąd.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_cart.hint', 'Zapisz tutaj Twoje zmiany koszyka. W przypadku potwierdzonej faktury artykuł o mniejszej ilości lub artykuł anulowany prowadzi do zapisania na dobro rachunku.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.remove_from_invoice', 'Usuń pozycję', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.remove_from_invoice.question', 'Czy naprawdę chcesz anulować następujące artykuły: %s ?', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.remove_from_invoice.hint', 'Proszę zaznaczyć arktykuły do wykasowania. W przypadku potwierdzonej faktury wykasowanie artykułu prowadzi do zapisania na dobro rachunku.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.quantity', 'Ilość', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_quantity', 'Dopasować ilość', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_quantity.hint', 'Możesz dopasować liczbę artykułów do każdej pozycji. Ilość jednakże można zmniejszyć, ale nie da się jej zwiększyć.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.price', 'Cena', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_price', 'Dopasować cenę', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_price.hint', 'Możesz dopasować cenę do poszczególnach artykułów. Ceny jednakże mogą zostać obniżone, ale nie da się ich podwyższyć.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_price_and_quantity.hint', 'Nie może zostać równocześnie dopasowana cena i ilość.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_confirmed_invoice', 'Proszę wpisać komentarz', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_confirmed_invoice.hint', 'Dopasowując już zatwierdzoną fakturę należy dołączyć odpowiednie uzasadnienie. Pojawi się ono później przy zapisie na koncie jako komentarz do danego artykułu.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.update_shipping_costs.hint', 'W przypadku zwrotów koszty wysyłki nie mogą pojawić się na fakturze jako osobna pozycja.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.remove_last_article.hint', 'Na skutek zmniejszenia ilości wszystkich artykułów lub usunięcie ostatniego artykułu faktura zostanie całkowicie anulowana.', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.invoice_details', 'Szczegóły odnośnie płatności', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.order_details', 'Szczegóły odnośnie zamówienia', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.invoice_history', 'Historia zmian płatności', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.hint', 'Uwaga', NOW(), NOW()),
('sofort_multipay_backend', 1, 187, 'admin.action.warning', 'Ostrzeżenie', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'orderstatusset', 'Pańskie zamówienie zmieniło status na następujący:', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'order_error', 'Wystąpił błąd podczas zamówienia.', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'cart_id', 'ID koszyka', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'dhw_sr_conditions', 'https://documents.sofort.com/de/sr/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'dhw_sv_conditions', 'https://documents.sofort.com/de/sv/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'dhw_ls_conditions', 'https://documents.sofort.com/de/ls/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'shipping_costs', 'Koszty wysyłki', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'checkout.sl.description', '<ul><li>System płatniczy ze sprawdzoną przez TÜV ochroną danych</li><li>Rejestracja nie jest konieczna</li><li>Towar/usługa zostanie natychmiast wysłana</li><li>Prosimy o przygotowanie PINu bankowości internetowej</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'checkout.su.description', '<ul><li>System płatniczy ze sprawdzoną przez TÜV ochroną danych</li><li>Rejestracja nie jest konieczna</li><li>Towar/usługa zostanie NATYCHMIAST wysłana</li><li>Prosimy o przygotowanie danych bankowości internetowej(PIN/TAN)</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 187, 'mandatory_fields', 'Pola oznaczone * są obowiązkowymi polami.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010', 'Dane są niepełne lub błędne. Prosimy o poprawienie ich lub o kontakt ze sprzedawcą.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.shipping_address.country_code', 'Kod kraju adresu wysyłki towaru nie może być pusty.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.invoice_address.country_code', 'Kod kraju adresu faktury nie może być pusty.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.invoice_address.firstname', 'Imię przy adresie wysyłki nie może być puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.invoice_address.lastname', 'Nazwisko przy adresie faktury nie może być puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.invoice_address.street', 'Ulica i numer mieszkania muszą być oddzielone.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.invoice_address.zipcode', 'Miejsce na kod pocztowy w adresie nie może pozostać puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.invoice_address.city', 'Miejsce na nazwę miejscowości w adresie na rachunku nie może zostać puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.shipping_address.firstname', 'Miejsce na imię w adresie wysyłki nie może zostać puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.shipping_address.lastname', 'Miejsce na nazwisko w adresie wysyłki nie może zostać puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.shipping_address.street', 'Nazwa ulicy i numer domu muszą być oddzielone spacją.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.shipping_address.zipcode', 'Miejsce na kod pocztowy adresu wysyłki nie może pozostać puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8010.shipping_address.city', 'MIejsce na nazwę miejscowości w adresie wysyłki nie może pozostać puste.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8013', 'Obecnie obsługujemy jedynie zamówienia w euro. Prosimy o poprawienie tego i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8015', 'Całkowita kwota jest zbyt wysoka lub niska. Prosimy o jej poprawienie lub o kontakt ze sprzedawcą.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8019', 'Zamówienie nie może zostać przeprowadzone z powodu nieprawidłowego adresu e-mail.Prosimy o jego poprawienie i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8020', 'Zamówienie nie może zostać przeprowadzone z powodu nieprawidłowego numeru telefonu. Prosimy o jego poprawienie i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8023', 'Zamówienie nie może zostać przeprowadzone z powodu nieprawidłowego kodu BIC (Bank Identifier Code). Prosimy o jego poprawienie i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8024', 'Zamówienie nie może zostać przeprowadzone z powodu nieprawidłowego kodu kraju. Adres wysyłki/ rachunku musi znajdować się w Niemczech. Prosimy o jego poprawienie i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8029', 'Obsługujemy jedynie konta niemieckie. Prosimy o poprawienie błędu lub wybranie innej metody płatności.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8033', 'Całkowita kwota jest zbyt wysoka. Prosimy o poprawienie jej i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8034', 'Całkowita kwota jest zbyt niska. Prosimy o poprawienie jej i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8051', 'Zapytanie zawiera niewłaściwe pozycje koszyka. Prosimy o poprawienie ich lub o kontakt ze sprzedawcą.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8058', 'Prosimy o podanie przynajmniej właściciela konta i o ponowienie próby.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8061', 'Transakcja z podanymi przez Ciebie danymi już istnieje.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8062', 'Zakup na rachunek jest obecnie dostępny tylko dla klientów indywidulanych.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_8068', 'Zakup na rachunek jest obecnie dostępny tylko dla klientów indywidulanych.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9000', 'Nie znaleziono faktury- transakcji.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9001', 'Faktura nie mogła zostać zatwierdzona.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9002', 'Podana kwota rachunku przekracza limit kredytowy.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9003', 'Faktura nie mogła zostać anulowana.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9004', 'Zapytanie zawierało nieprawidłowe pozycje w koszyku.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9005', 'Koszyk nie mógł zostać dopasowany.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9006', 'Dostęp do interfejsu traci ważność po 30 dniach od wpłynięcia płatności.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9007', 'Faktura już została anulowana.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9008', 'Suma przekazanego podatku VAT jest zbyt wysoka.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9009', 'Kwoty stawek podatku VAT przekazanych dla artykułów są ze sobą sprzeczne.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9010', 'Dostosowanie koszyka nie jest możliwe.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9011', 'Nie przekazano komentarza dotyczącego dopasowania zawartości koszyka.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9012', 'Nie można dodać pozycji do koszyka. Nie jest również możliwe podwyższenie ilości dla danej pozycji rachunku. Kwoty pojedynczych pozycji nie mogą przekroczyć kwoty pierwotnej.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9013', 'W koszyku znajdują się wyłącznie artykuły niefakturowane.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9014', 'Podany numer faktury już znajduje się w użyciu.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9015', 'Podany numer dotyczący zapisania na dobro konta jest już w użyciu.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9016', 'Podany numer zamówienia jest już w użyciu.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9017', 'Faktura już została zatwierdzona.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_9018', 'Nie zostały dostosowane żadne dane faktury.', NOW(), NOW()),
('sofort_multipay_errors', 1, 187, 'error_10001', 'Prosimy o kompletne wypełnienie pól numer konta, numer rozliczeniowy banku i właściciel konta.', NOW(), NOW());