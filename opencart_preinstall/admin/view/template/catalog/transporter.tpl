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
		</div>
		<div class="content">
			<?php foreach ($transporters as $transporter) {?>
			<table>
				<tr>
					<td>Szállító neve:</td>
					<td><?php echo $transporter['transporter_name']; ?></td>
				</tr>
				<tr>
					<td>Szállító cime:</td>
					<td><?php echo $transporter['transporter_address']; ?></td>
				</tr>
				<tr>
					<td>Belföldre szállítás:</td>
					<td><?php echo $transporter['price_local']; ?> Ft</td>
				</tr>
				<tr>
					<td>Külföldre szállítás:</td>
					<td><?php echo $transporter['price_abroad']; ?> Ft</td>
				</tr>
				<tr>
					<td>Információk:</td>
					<td><?php echo $transporter['transporter_information']; ?></td>
				</tr>
			</table>
      <div class="buttons"><a href="<?php echo $update_transporter; ?>" class="button">Szerkesztés</a></div>
			<?php } ?>
		</div>
	</div>
</div>
<?php echo $footer; ?>
