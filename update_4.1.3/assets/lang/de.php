<?php
/** Installer locale - de_DE */
return array(
    'title'         => "Shopware 4 - Update Script 4.1.0 zu 4.1.3",
    'meta_text'     => '<strong>Shopware-Update:</strong> 4.1.0 zu 4.1.3',
    'tab_start'     => 'Aktualisierung starten',
    'tab_check'     => 'Systemvoraussetzungen',
    'tab_migration' => 'Datenbank Migration',
    'tab_done'      => 'Fertig',

    "start_update" => "Aktualisierung starten",

    "configuration" => "Konfiguration",
    "thank_you_message" => "<strong>Danke</strong>, dass Sie sich für Shopware 4 entschieden haben. Mit diesem Installer wird die Installation und Basis-Konfiguration von Shopware vorgenommen, so dass Sie nach der Installation direkt mit der Einrichtung Ihres Shops beginnen können.",
    "select_language" => "Sprache wählen",
    "select_language_choose" => "Bitte wählen",
    "select_language_de" => "Deutsch",
    "select_language_en" => "Englisch",
    "back" => "Zurück",
    "forward" => "Weiter",

    'noaccess_title' => "Zugang Verweigert",
    'noaccess_info'  => 'Bitte fügen Sie Ihre IP-Adresse "<strong>%s</strong>" der Datei <strong>%s</strong> hinzu.',

    // Step 2 # New #
    'step2_header_files' => "Dateien und Verzeichnisse",    // File & Directory permissions
    'step2_files_info' => "Die nachfolgenden Dateien und Verzeichnisse müssen vorhanden sein und Schreibrechte besitzen",   // The following files and directories must exist and be writable
    'step2_files_delete_info' => "Die nachfolgenden Verzeichnisse müssen <strong>gelöscht</strong> sein.",
    'step2_tablefiles_colcheck' => 'Datei/Verzeichnis', // Check
    'step2_tablefiles_colstatus' => 'Status', // Status
    'step2_error' => 'Einige Voraussetzungen werden nicht erfüllt', //Some system requirements are not met
    'step2_php_info' => "Ihr Server muss die folgenden Systemvoraussetzungen erfüllen, damit Shopware lauffähig ist", // Your server must meet the following requirements in order to run shopware
    'step2_system_colcheck' => 'Voraussetzung',  // Check
    'step2_system_colrequired' => 'Erforderlich',   // Required
    'step2_system_colfound' => 'Ihr System',  // Found
    'step2_system_colstatus' => 'Status', // Status

    'migration_progress_text' => 'Bitte starten Sie das Datenbank-Update mit einen Klick auf den Button "Starten"',
    'migration_header'        => 'Datenbank Update durchführen',

    'migration_counter_text_migrations'   => 'Datenbank-Migration wird durchgeführt',
    'migration_update_success'            => 'Datenbank Update wurde erfolgreich durchgeführt',

    'done_title' => 'Aktualisierung abgeschlossen', // Finished
    'done_info' => 'Die Aktualisierung wurde erfolgreich abgeschlossen.', // The installation was finished successful
    'done_delete' => 'Ihr Shop befindet sich zurzeit im Wartungsmodus.<br/>Bitte löschen Sie den Updater (/update) nun via FTP vom Server.',
    'done_frontend' => 'Zum Shop-Frontend', // Open shop frontend
    'done_backend' => 'Zum Shop-Backend (Administration)', // Open shop backend
);
