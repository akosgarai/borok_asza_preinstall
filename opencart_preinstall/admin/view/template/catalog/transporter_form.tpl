<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $text_transporter; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
		<div class="content">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      	<table class="form">
					<?php foreach ($transporters as $transporter) {?>
          <tr>
						<td>Szállító neve:</td>
            <td><input type="text" name="name" value="<?php echo $transporter['transporter_name']; ?>" size="100" />
						</td>
          </tr>
          <tr>
						<td>Szállító címe:</td>
            <td><input type="text" name="address" value="<?php echo $transporter['transporter_address']; ?>" size="100" />
						</td>
          </tr>
          <tr>
						<td>Belföldre szállítás:</td>
            <td><input type="text" name="p_local" value="<?php echo $transporter['price_local']; ?>" size="100" />
						</td>
          </tr>
          <tr>
						<td>Külföldre szállítás:</td>
            <td><input type="text" name="p_abroad" value="<?php echo $transporter['price_abroad']; ?>" size="100" />
						</td>
          </tr>
          <tr>
						<td>Információk:</td>
            <td><textarea cols="100" rows="20" type="text" name="information"><?php echo $transporter['transporter_information']; ?></textarea>
						</td>
          </tr>
				<?php } ?>
				</table>
			</form>
		</div>
	</div>
</div>
<?php echo $footer; ?>

