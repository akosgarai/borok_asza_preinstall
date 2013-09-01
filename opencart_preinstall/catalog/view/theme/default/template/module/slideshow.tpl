<div class="about_us_container">
	<div class="about_us_subject">
		<h1>Aszok Bora / Borok Asza</h1>
	</div>
	<div class="about_us_content">
		<p>If you haven't already located the OpenCart upload folder on the left side, you need to do so now and keep it open. In the Remote Site directory (right side), you need to open the folder that the OpenCart shop will be located in. The location of shop varies based on whether the you want the shop to be seen on the main page, a sub-folder, a subdomain, etc. If you want to make OpenCart the main page, you would need to upload files to the root folder of their website. </p>
		<p>Be aware that some hosting services require public files to be upload to a public directory, such as public_html, if they are to be visible on the website. You should check with your hosting provider to see where you can upload public files.</p>
		<p>Once the location of the OpenCart shop has been determined, all the content within the “upload” folder on the computer's (left) side of Filezilla must be selected, right-clicked, and uploaded. Uploading all the files might take a few minutes on the FTP client.</p>
		<p>If you want the shop to be on the main page, for example www.shopnow.com, you must upload the contents of the “upload” folder, but not the “upload” folder itself. Including the “upload” folder will create a sub-folder, making the shop available only on www.shopnow.com/upload.</p>
		<p>After Filezilla finishes uploading the files to the location specified, you should see the same files on both the left side(computer) and on the right side (the website); as seen in the screenshot below:</p>
	</div>
</div>
<!--
<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript">
-->
<!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
-->
<!--
</script>
-->
