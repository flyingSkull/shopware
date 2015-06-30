INSERT INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_version', '1.0.4', NOW(), NOW()),
('sofort_multipay', 1, 108, 'sofort_multipay_plugin_description', 'sofort Gateway est un solution intégrée pour nos produits en combinaison avec un compte bancaire chez Sofort Bank. Vous créez un projet et tous nos modes de paiement seront en option à votre disposition. Le choix de paiement pour vos clients finals sera effectué dans votre boutique en ligne. Ceci vous économise du temps et vous donne la plus grande flexibilité pour les opérations de paiements de l\'e-commerce. Tous les paiements sont effectués en Euro.', NOW(), NOW()),
('sofort_multipay', 1, 108, 'sofort_project_settings', 'Paramètres du projet SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 108, 'sofort_multipay_api_key', 'Clé de configuration attribué par SOFORT AG', NOW(), NOW()),
('sofort_multipay', 1, 108, 'sofort_multipay_test_api_key', 'Tester clé de configuration/API-Key', NOW(), NOW()),
('sofort_multipay', 1, 108, 'test_api_key_button', 'test', NOW(), NOW()),
('sofort_multipay', 1, 108, 'order_status_pending_desc', 'État de commande temporaire<br />État de commande pour transaction non-conclues. La commande a été placée mais la transaction n\'a pas encore été confirmée par SOFORT AG.', NOW(), NOW()),
('sofort_multipay', 1, 108, 'order_status_confirmed_desc', 'État de commande confirmé<br />État de commande après transaction conclue.', NOW(), NOW()),
('sofort_multipay', 1, 108, 'order_status_canceled_desc', 'État de commande annulé<br />État de commande après une annulation complète de la facture.', NOW(), NOW()),
('sofort_multipay', 1, 108, 'order_status_partially_credited_desc', 'Paiement partiel<br />État de la commande après paiement partiel du montant entier.', NOW(), NOW()),
('sofort_multipay', 1, 108, 'customer_protection_su', 'SOFORT Banking avec protection du consommateur', NOW(), NOW()),
('sofort_multipay', 1, 108, 'customer_protection_sv', 'Paiement d\'avance avec protection du consommateur', NOW(), NOW()),
('sofort_multipay', 1, 108, 'banner_su_desc', 'Bannière chez SOFORT Banking', NOW(), NOW()),
('sofort_multipay', 1, 108, 'text_su_desc', 'Logo et texte chez SOFORT Banking', NOW(), NOW()),
('sofort_multipay', 1, 108, 'banner_sl_desc', 'Bannière chez SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 108, 'text_sl_desc', 'Logo et texte chez SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay', 1, 108, 'save', 'sauvegarder', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_holder', 'Titulaire du compte', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_account_number', 'Numéro de compte', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_bank_code', 'Code banque', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_iban', 'IBAN', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_bic', 'BIC', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_amount', 'Montant', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_reason_1', 'Référence 1', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_reason_2', 'Référence 2', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_transaction_id', 'ID de transaction', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_su_not_credited_yet', 'Commande avec SOFORT Banking transmis avec succès. Votre ID de transaction: {{transaction}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_su_status_loss', 'Le réception du paiement n\'a pas pu être constaté à ce jour. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_not_credited', 'La marchandise est en train d\'être préparée pour l\'envoi.', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_credited', 'Réception du paiement.', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_credited_to_seller', 'Réception du paiement sur le compte du commerçant a eu lieu.', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_confirm_invoice2_vorkasse', 'Commande avec {{paymentMethodStr}} transmise avec succès. ID de transaction: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_confirm_invoice2_sofortlastschrift', 'Commande avec {{paymentMethodStr}} transmise avec succès. ID de transaction: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_confirm_invoice2_lastschriftbysofort', 'Commande avec {{paymentMethodStr}} transmise avec succès. ID de transaction: {{tId}} {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_debit_returned2', 'Un remboursement existe pour cette transaction. {{time}}', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_accept_conditions', 'Veuillez accepter la politique de confidentialité.', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_condition', 'Politique de confidentialité', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_condition_notice', 'J\'ai lu la {{conditions}}.', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'sofort_multipay_payment_instructions', 'Politique de confidentialité', NOW(), NOW()),
('sofort_multipay_finish', 1, 108, 'checkout.sv.reasons_hint', 'Veuillez faire attention à employer le motif de paiement indiqué ici pour le virement, afin que nous puissions attribuer votre paiement.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 108, 'payment_cancel', 'Le mode de paiement sélectionné n\'est malheureusement pas possible ou a été annulé à la demande du client. Vous êtes prié de sélectionner un autre mode de paiement.', NOW(), NOW()),
('sofort_multipay_cancel', 1, 108, 'order_cancel', 'La commande a été annulée.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_public_title', 'SOFORT Banking', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_public_title', 'Paiement d\'avance', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_private_title', 'Rechnung by SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_public_title', 'Kauf auf Rechnung', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_public_title', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_ls_public_title', 'Prélèvement bancaire (prélèvement automatique)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_ls_private_title', 'Lastschrift by SOFORT (prélèvement automatique)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_landing_url', 'https://images.sofort.com/fr/su/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_banner_img', '<img src=\"https://images.sofort.com/fr/su/banner_300x100.png\" alt=\"SOFORT Banking\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_banner_ks_img', 'https://images.sofort.com/fr/su/banner_400x100_ks.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_banner_img2', 'https://images.sofort.com/fr/su/banner_150x200.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_banner_img3', 'https://images.sofort.com/fr/su/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_banner_img_alt', 'SOFORT Banking', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_title_img', '<img src=\"https://images.sofort.com/fr/su/logo_90x30.png\" alt=\"Logo SOFORT Banking\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_landing_url', 'https://images.sofort.com/fr/sv/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_banner_img', '<img src=\"https://images.sofort.com/de/sv/banner_300x100.png\" alt=\"Vorkasse (paiement d\'vanace)\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_title_img', '<img src=\"https://images.sofort.com/de/sv/logo_90x30.png\" alt=\"Logo Vorkasse by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_refunded_compensation', 'Une partie du montant facturé sera remboursé. Montant total remboursé: {{refunded_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_received_overpayment', '{{paymentMethodStr}} - Un montant supérieur à celui initialement demandé a été reçu. Montant: {{received_amount}}. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_partially_credited', '{{paymentMethodStr}} - Seulement un montant partiel de celui initialement demandé a été reçu. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_landing_url', 'https://images.sofort.com/fr/sr/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_banner_img', '<img src=\"https://images.sofort.com/de/sr/banner_300x100.png\" alt=\"Kauf auf Rechnung\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_title_img', '<img src=\"https://images.sofort.com/de/sr/logo_90x30.png\"  alt=\"Logo Rechnung by SOFORT\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_checkout_description', 'Paiement par Kauf auf Rechnung: paiement seulement 14 jours après réception de la marchandise/du service. Pas d\'enregistrement. Marchandise/service peut être envoyé IMMÉDIATEMENT.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_landing_url', 'https://images.sofort.com/fr/sl/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_banner_img', '<img src=\"https://images.sofort.com/de/sl/banner_300x100.png\" alt=\"SOFORT Lastschrift\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_banner_img2', 'https://images.sofort.com/fr/sl/logo_155x50.png', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_banner_img_alt', 'SOFORT Lastschrift', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_title_img', '<img src=\"https://images.sofort.com/de/sl/logo_90x30.png\" alt=\"Logo SOFORT Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_loss', 'Paiement pas reçu. L\'argent sera remboursé. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_ls_landing_url', 'https://images.sofort.com/fr/ls/landing.php', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_ls_banner_img', '<img src=\"https://images.sofort.com/de/ls/banner_300x100.png\" alt=\"Prélèvement automatique\" />', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'error_missing_bankdata', 'Veuillez remplir les champs numéro de compte, code banque et titulaire de compte.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_ls_title_img', '<img src=\"https://images.sofort.com/fr/ls/logo_90x30.png\" alt=\"Logo Lastschrift\"/>', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_pending', 'SOFORT Banking sélectionné comme mode de paiement. Transaction pas conclue.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_refunded', 'Le montant de la facture sera remboursé. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_customerprotection_credited', 'L\'argent a été reçu sur le compte fiduciaire.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_pending', 'Vorkasse by SOFORT (paiement d\'avance) sélectionné comme mode de paiement. Transaction pas conclue.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_pending', 'Kauf auf Rechnung sélectionné comme mode de paiement. Transaction pas conclue.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_confirm_invoice', 'Commande avec Kauf auf Rechnung transmise avec succès. Confirmation par le commerçant n\'a pas encore eu lieu. Votre ID de transaction:', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_not_credited_yet', 'La marchandise est en train d\'être préparée pour l\'envoi.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_refunded', 'La facture a été annulé. Crédit créé. {{time}}', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_canceled', 'La facture a été annulée', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sr_confirmation_period_expired', 'La facture a été annulée automatiquement. Durée de confirmation de 30 jours a expiré.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sl_pending', 'SOFORT Lastschrift sélectionné comme mode de paiement. Transaction non conclue.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_ls_pending', 'Lastschrift by SOFORT sélectionné comme mode de paiement. Transaction pas conclue.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_su_public_title_ks', 'SOFORT Banking avec protection du consommateur', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_sv_public_title_ks', 'Paiement d\'avance avec protection du consommateur', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_banner_or_text', 'Bannière ou texte dans la sélection des options de paiement', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'no_payment_chosen', 'Une erreur s\'est produite: aucun mode de paiement n\'a été sélectionné.', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'sofort_multipay_payment_modules', 'SOFORT Banking et autres produits SOFORT', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'payment_secret', 'paiement secret', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'payment_state_open', 'en attente', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'payment_state_confirmed', 'Payé entièrement', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'payment_state_canceled', 'Opération a été annulée', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'payment_state_refunded', 'entièrement facturé', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'date', 'Date', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'date_last_update', 'Date (dernière mise à jour)', NOW(), NOW()),
('sofort_multipay_bootstrap', 1, 108, 'ordernumber', 'Numéro de commande', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'beta_products', 'https://documents.sofort.com/general/shopinfo/fr', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'actions', 'Actions', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.cp_image', 'https://images.sofort.com/de/su/ks_60x60.png', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.customerprotection_activated', 'Activer protection du consommateur', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'date', 'Date', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'customer_number', 'Numéro client', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'order_number', 'Numéro de commande', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'payment_status', 'État du paiement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'payment_method', 'Mode de paiement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'total', 'Montant de la facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'article_total', 'Somme de la position', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'tax_value', 'T.V.A.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'net_value', 'Prix net', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'gross_value', 'Prix brut', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'search', 'Recherche', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'search_for', 'rechercher ...', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'search_for_error', 'Une erreur s\'est produite pendant la recherche', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'orders', 'Commandes', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'confirm_invoice', 'Confirmer facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sv.status_credited', '{{paymentMethodStr}} - Argent reçu. {{time}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sv.status_partially_credited', 'Paiement partiel du montant de la facture a été reçu.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'no_transaction_found', 'Aucune transaction n\'a été trouvée', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'question_confirm_sr', 'Voulez-vous vraiment confirmer cette facture?', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'confirm_sr', 'Facture est confirmé', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'confirm_sr_error', 'Une erreur s\'est produite en confirmant la facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'question_cancel_sr', 'Êtes-vous sûr de vouloir effectivement annuler la facture? Cette procédure ne peut pas être révoquée.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'question_cancel_confirmed_sr', 'Êtes-vous sûr de vouloir créditer la facture? Cette action ne peut pas être annulée.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'cancel_sr', 'La facture est annulée', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'button_confirm_sr', 'Confirmer facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'invoice_status.reminder', 'Niveau de rappel {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'invoice_status.delcredere', 'Remise de recouvrement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'edit_invoice.CartItemsEdited', 'Le panier a été ajusté.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.sr.edit_invoice.CartReset', 'Le panier a été remis à l\'état initial.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.sr.current_amount', 'Montant de facturation courant:', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'button_cancel_sr', 'Annuler facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'button_download_sr', 'Télécharger facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'button_download_sr2', 'Télécharger facture/crédit', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'order_details', 'Détails sur la commande', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'cancel_sr_error', 'Pendant l\'annulation de la facture une erreur s\'est produite', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'cancel_sr_title', 'Annuler facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'download_invoice', 'Télécharger facture en PDF', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'download_invoice_error', 'Pendant le téléchargement de la facture une erreur s\'est produite', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'invoice_objection', 'Objection', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'please_wait', 'Veuillez attendre', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'test_connection', 'La connexion est vérifiée', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'connection_ok', 'Connexion à l\'interface réussie', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'connection_failed', 'La connexion à l\'interface n\'a pas pu être établie', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'wrong_credentials', 'Donnés d\'accès erronées', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'enter_credentials', 'Veuillez entrer votre clé de configuration.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'success', 'Succès', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'inactive_module', 'Module inactif', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'activate_module', 'Veuillez activer le module', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'advice', 'Note sur le module de sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'reason', 'Référence', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'payment_secret', 'paiement secret', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'orders_by_sofort', 'Paiements pas sofort.com', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.transactionStateLabel', 'État de la transaction:', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.InvoiceStateLabel', 'État de la facture:', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.PendingConfirmInvoice', 'Commande avec Kauf auf Rechnung transmise avec succès. Confirmation par le commerçant n\'a pas encore eu lieu. Votre ID de transaction:', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.LossConfirmationPeriodExpired', 'La facture a été annulée automatiquement. La période de confirmation de 30 jours a expiré.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.ConfirmedWaitingForMoney', 'La facture a été confirmée, en attente du paiement.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.PendingInvoice', 'Facture encore en attente.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.DunningLevel', 'Niveau de relance {{d}}', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.InvoiceMoneyReceived', 'La facture a été payée.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.MoneyRefunded', 'L\'argent sera remboursé.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.InvoiceRefunded', 'La facture sera créditée.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.PaidByCustomer', 'L\'acheteur a payé la facture.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.Encashment', 'Transfert du recouvrement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.InvoiceCancelled', 'La facture a été annulée.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.ReceiptOfPayment', 'Réception du paiement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.ReadyForShipment', 'La marchandise est préparée pour l\'envoi.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'sr.statusRefunded', 'La facture a été annulé. Crédit créé.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.cancel_invoice', 'Annuler facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.cancel_confirmed_invoice', 'Créditer facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.confirm_invoice', 'Confirmer facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.article', 'Article', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.description', 'Description', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.article_number', 'Numéro article', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.cancel_invoice.question', 'Êtes-vous sûr de vouloir annuler la facture?', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.download_invoice', 'Télécharger facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.download_invoice.hint', 'Veuillez télécharger ici le document correspondant (aperçu facture, facture, note de crédit).', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.download_credit_memo', 'Télécharger crédit', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.download_invoice_preview', 'Télécharger aperçu de la facture', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_cart', 'Sauvegarder panier', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_cart.question', 'Êtes-vous sûr de vouloir réajuster le panier?', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_cart.error', 'Une erreur s\'est produite pendant le traitement du panier.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_cart.hint', 'Veuillez sauvegarder ici vos modifications du panier. Si la facture a déjà été confirmée, l\'article réduit en quantité ainsi que supprimé de la facture, sera remboursé en forme d\'un crédit.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.remove_from_invoice', 'Supprimer position', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.remove_from_invoice.question', 'Êtes-vous sûr de vouloir supprimer l\'article suivant: %s?', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.remove_from_invoice.hint', 'Veuillez sélectionner les articles à supprimer. Si une facture a déjà été confirmée, chaque article supprimé sera remboursé en forme de crédit.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.quantity', 'Quantité', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_quantity', 'Ajuster la quantité', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_quantity.hint', 'Vous pouvez ajuster le nombre d\'articles par position. La quantité peut être seulement réduite et ne pas ajoutée.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.price', 'Prix', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_price', 'Ajuster prix', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_price.hint', 'Vous pouvez ajuster le prix de chaque article par position. Les prix peuvent seulement être réduits et ne pas augmentés.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_price_and_quantity.hint', 'Le prix et la quantité ne peuvent pas être ajuster au même temps.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_confirmed_invoice', 'Veuillez entrer un commentaire', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_confirmed_invoice.hint', 'Si une facture déjà confirmée est modifiée, une justification respective doit être déposée. Celle-là apparaîtra plus tard sur la note de crédit comme commentaire de l\'article correspondant.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.update_shipping_costs.hint', 'En cas de retours, les frais d\'envoi ne peuvent pas apparaître en poste singulier sur la facture.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.remove_last_article.hint', 'En réduisant la totalité des articles ou en supprimant le dernier, la facture sera annulée entièrement.', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.invoice_details', 'Détails du paiement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.order_details', 'Détails de la commande', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.invoice_history', 'Historique des modifications du paiement', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.hint', 'Attention', NOW(), NOW()),
('sofort_multipay_backend', 1, 108, 'admin.action.warning', 'Avertissement', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'orderstatusset', '- L\'état suivant à été assigné à votre commande:', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'order_error', 'Un erreur s\'est produite pendant la commande.', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'cart_id', 'ID du panier', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'dhw_sr_conditions', 'https://documents.sofort.com/de/sr/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'dhw_sv_conditions', 'https://documents.sofort.com/de/sv/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'dhw_ls_conditions', 'https://documents.sofort.com/de/ls/privacy_de', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'shipping_costs', 'Coûts d\'envoi', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'checkout.sl.description', '<ul><li>Système de paiement avec protection des données certifiée TÜV</li><li>Pas d\'enregistrement</li><li>Marchandise/service peut être envoyé IMMÉDIATEMENT</li><li>Veuillez tenir à disposition votre code PIN de banque en ligne</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'checkout.su.description', '<ul><li>Système de paiement avec protection des données certifiée TÜV</li><li>Pas d\'enregistrement</li><li>Marchandise/service sera envoyé si disponible IMMÉDIATEMENT</li><li>Veuillez tenir à disposition vos données de banque en ligne (code PIN/TAN)</li></ul>', NOW(), NOW()),
('sofort_multipay_checkout', 1, 108, 'mandatory_fields', 'Le champs marqués d\'une * sont obligatoires.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010', 'Les données sont incomplètes ou erronées. Vous êtes prié de les corriger ou de contacter le gérant de la boutique en ligne.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.shipping_address.country_code', 'Le code du pays de l\'adresse d\'envoi ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.invoice_address.country_code', 'Le code du pays de l\'adresse de facturation ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.invoice_address.firstname', 'Le prénom de l\'adresse de facturation ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.invoice_address.lastname', 'Le nom de l\'adresse de facturation ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.invoice_address.street', 'Rue et numéro de rue doivent être séparés par un espace.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.invoice_address.zipcode', 'Le code postal de l\'adresse de facturation ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.invoice_address.city', 'Le nom de la ville de l\'adresse de facturation ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.shipping_address.firstname', 'Le prénom de l\'adresse d\'envoi ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.shipping_address.lastname', 'Le nom de l\'adresse d\'envoi ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.shipping_address.street', 'Rue et numéro de rue doivent être séparés par un espace.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.shipping_address.zipcode', 'Le code postal de l\'adresse d\'envoi ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8010.shipping_address.city', 'Le nom de la ville de l\'adresse d\'envoi ne peut pas être vide.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8013', 'En ce moment uniquement des commandes en Euro sont possibles. Veuillez corriger cela et essayer ensuite de nouveau.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8015', 'Le total est trop élevé ou trop bas. Veuillez corriger cela ou contacter le gérant de la boutique en ligne.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8019', 'La commande ne peut pas être effectuée en raison d\'une adresse e-mail erronée. Veuillez corriger celle-ci et essayer de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8020', 'La commande ne peut pas être effectué en raison d\'un numéro de téléphone erroné. Veuillez corriger cela et essayer de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8023', 'La commande ne peut pas être effectué en raison d\'un BIC (Bank Identifier Code) erroné. Veuillez corriger cela et essayer de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8024', 'La commande ne peut pas être effectuée en raison d\'un code pays erroné. L\'adresse de livraison/facturation doit être en Allemagne. Veuillez corriger cela et essayer de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8029', 'Seulement les comptes bancaires allemands sont compatibles. Veuillez corriger cela ou sélectionner un autre mode de paiement.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8033', 'Le total est trop élevé. Veuillez corriger cela et essayer de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8034', 'Le total est trop bas. Veuillez corriger cela et essayer de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8051', 'La demande contenait des positions de panier non valables. Veuillez corriger ceci ou contacter le gérant de la boutique en ligne.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8058', 'Veuillez au moins indiquer le titulaire du compte et essayez de nouveau ensuite.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8061', 'Une transaction avec les données que vous avez soumis existe déjà.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8062', 'Kauf auf Rechnung est actuellement disponible uniquement aux clients particuliers.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_8068', 'Kauf auf rechnung (achat sur compte) est disponible en ce moment uniquement aux clients privés.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9000', 'Aucune transaction de facture trouvée.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9001', 'La facture n\'a pas pu être confirmée.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9002', 'La somme de la facture transmise dépasse la limite du crédit.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9003', 'La facture n\'a pas pu être annulée.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9004', 'La demande contenait des positions de panier invalides.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9005', 'La panier n\'a pas pu être ajusté.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9006', 'L\'accès à l\'interface n\'est plus possible 30 jours après la réception du paiement.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9007', 'La facture a déjà été annulée.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9008', 'Le montant de la T.V.A. transmise est trop est trop élevé.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9009', 'Les montants de la T.V.A. transmise des articles sont en conflit les uns aux autres.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9010', 'L\'ajustement du panier n\'est pas possible.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9011', 'Aucun commentaire n\'a été transmis pour l\'ajustement du panier.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9012', 'Aucune position ne peut être ajoutée au panier. De même, le volume par position de la facture ne peut pas être augmenté. Montants de positions singuliers ne peuvent pas dépasser le montant d\'origine.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9013', 'Dans votre panier se trouvent seulement des articles qui ne peuvent pas être facturés.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9014', 'Le numéro de facture transmis est déjà e cours d\'utilisation.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9015', 'Le numéro transmis du crédit est déjà en cours d\'utilisation.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9016', 'Le numéro de commande transmis est déjà en cours d\'utilisation.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9017', 'La facture a déjà été confirmée.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_9018', 'Aucune donné de la facture n\'a été ajustée.', NOW(), NOW()),
('sofort_multipay_errors', 1, 108, 'error_10001', 'Vous êtes prié de remplir entièrement les champs numéro de compte, code banque et titulaire du compte.', NOW(), NOW());