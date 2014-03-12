<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/product.png" alt="" /> <?php echo $text_faq; ?></h1>
      <div class="buttons"><a href="<?php echo $insert ?>" class="button"><?php echo $button_insert; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
		</div>
		<div class="content">
			<form method="post" action="<?php echo $action; ?>" id="form" enctype="multipart/form-data">
				<div class="faq-list-container">
					<div class="faq-header">
					</div>
					<?php foreach ($faqs as $faq) { ?>
					<div class="faq-admin" style="width: 100%; float: left; ">
						<div class="row-top">
							<div class="left_box"><input type="checkbox" name="id[]" value="<?php echo $faq['faq_id']; ?>" /></div>
							<div class="faq_subject" onclick="showHideDescription(this);"><?php echo $faq['faq_subject']; ?></div>
							<div class="right_box" style="border: none; ">[<a href="<?php echo $faq['load_url']; ?>">Modositas</a>]</div>
						</div>
						<div class="row-bottom" style="display: none;">
							<div class="left_box"></div>
							<div class="faq_description" style="width: 89%; float: left;"><?php echo $faq['faq_description']; ?></div>
							<div class="right_box"></div>
						</div>
					</div>
					<?php } ?>
				</div>
			</form>
		</div>
	</div>
</div>
<?php echo $footer; ?>

