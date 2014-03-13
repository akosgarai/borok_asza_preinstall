<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
	<div class="box">
    <div class="heading">
			<div class="faq_top"></div>
			<div style="height: 100%;">
				<div id="green_container" class="green_container">
					<div class="faq_container" id="faq_container">
					<?php foreach ($faqs as $faq) { ?>
						<div class="faq_subject cred"><?php echo $faq['faq_subject']; ?></div>
						<div class="faq_description"><?php echo $faq['faq_description']; ?></div>
					<?php } ?>
					</div>
				</div>
				<div id="faq_shadow" class="faq_shadow"></div>
			</div>
			<div class="faq_bottom" id="faq_bottom"></div>
		</div>
	</div>
</div>
<?php echo $footer; ?>
<script>
	setWidthFaqShadow();
</script>

