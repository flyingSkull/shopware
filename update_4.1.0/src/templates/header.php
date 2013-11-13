<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en"> <!--<![endif]-->

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title><?php echo $language['title']; ?></title>
    <link rel="shortcut icon" href="<?php echo $baseUrl ?>../templates/_default/frontend/_resources/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<?php echo $baseUrl ?>/assets/styles/bootstrap.min.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="<?php echo $baseUrl ?>assets/styles/styles.css" media="all"/>
    <script>
        var shopwareTranslations = {
            'counterTextMigrations': '<?php echo $language['migration_counter_text_migrations']; ?>',
            'counterTextAssignments': '<?php echo $language['migration_counter_text_assignments']; ?>',
            'counterTextAlsoBought': '<?php echo $language['migration_counter_text_alsobought']; ?>',
            'counterTextTopSellers': '<?php echo $language['migration_counter_text_topsellers']; ?>',
            'counterTextSimilarShown': '<?php echo $language['migration_counter_text_similarshown']; ?>',
            'updateSuccess': '<?php echo $language['migration_update_success']; ?>'
        }
    </script>
</head>
<body>

<div class="info">
    <img src="<?php echo $baseUrl ?>assets/images/logo_updater.png" alt="<?php echo $language['title']; ?>" class="logo"/>

    <div class="meta">
        <p>
            <?php echo $language['meta_text']; ?>

        </p>
    </div>
</div>
<div class="wrapper">
    <header>
        <ul class="navi-tabs clearfix">
            <li class="<?php if ($tab == "start") echo "active"; else { echo "disabled";}; ?>"><?php echo $language["tab_start"];?></li>
            <li class="<?php if ($tab == "system") echo "active"; else { echo "disabled";}; ?>"><?php echo $language["tab_check"];?></li>
            <li class="<?php if ($tab == "dbmigration") echo "active"; else { echo "disabled";}; ?>"><?php echo $language["tab_migration"];?></li>
            <li class="<?php if ($tab == "done") echo "active"; else { echo "disabled";}; ?>"><?php echo $language["tab_done"];?></li>
        </ul>
    </header>

    <section class="content">
        <div class="inner-container">
