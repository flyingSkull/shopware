<!-- Start page -->
<div id="start">
    <div class="page-header">
        <h2><?php echo $language["noaccess_title"];?></h2>
    </div>
    <div class="alert alert-error">
        <?php printf($language["noaccess_info"], $clientIp, $filePath); ?>
    </div>
</div>
