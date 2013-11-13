<!-- Start page -->
<div id="start">

	<div class="page-header">
		<h2><?php echo $language["migration_header"];?></h2>
	</div>


    <div style="display: none;" class="alert alert-error">
        &nbsp;
    </div>

	<div class="progress-container">
		<div class="progress progress-info progress-striped">
			<div class="bar" style="width: 0%"></div>
		</div>

		<div class="counter-text hidden">
			<strong class="counter-numbers">&nbsp;</strong>
			<p class="counter-content">
				&nbsp;
			</p>
		</div>

		<div class="progress-text">
            <?php echo $language["migration_progress_text"];?>
		</div>

		<div class="progress-actions actions clearfix">
			<input type="submit" id="start-ajax" class="right primary" value="Starten" />
		</div>
	</div>

    <form action="<?php echo $app->urlFor('done'); ?>" method="get">
        <div class="actions clearfix">
            <a href="<?php echo $app->urlFor('checks'); ?>?force=1" class="secondary"><?php echo $language["back"];?></a>
            <input type="submit" class="right primary invisible" value="<?php echo $language["forward"];?>"" />
        </div>
    </form>
</div>
