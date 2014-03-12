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
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
		<div class="content">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      	<table class="form">
          <tr>
						<td>Kérdés címe:</td>
            <td><input 	type="text" 
												name="faq_title" 
												size="100" 
												<?php if ($faq_title) { ?>value="<?php echo $faq_title; ?>" <?php } ?>
												/>
						</td>
          </tr>
          <tr>
						<td>Válasz:</td>
            <td><textarea cols="100" rows="20" type="text" name="faq_description"><?php if ($faq_description) { ?><?php echo $faq_description; ?><?php } ?></textarea>
						</td>
          </tr>
				</table>
				<?php if ($faq_id) { ?>
				<input type="hidden" name="id" value="<?php echo $faq_id; ?>" />
				<?php } ?>
			</form>
		</div>
	</div>
</div>
<?php echo $footer; ?>

