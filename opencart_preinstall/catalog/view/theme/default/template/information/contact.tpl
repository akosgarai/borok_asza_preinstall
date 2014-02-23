<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<div class="menu-bc-container">
				<?php echo $content_top; ?>
					<div class="breadcrumb">
						<?php foreach ($breadcrumbs as $breadcrumb) { ?>
						<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
						<?php } ?>
					</div>
	</div>
	<div id="contact-box">
    <div class="contact-info">
      <div class="content" style="min-height: 700px;">
				<div class="address-box">
					<h1 class="cred"><?php echo $heading_title; ?>:</h1>
					<h2 class="cred"><?php echo $text_address; ?></h2>
        	<span class="contact-text"><?php echo $store; ?></span><br />
        	<span class="contact-text"><?php echo $address; ?></span><br />
					<?php if ($telephone) { ?>
					<h2 class="cred"><?php echo $text_telephone; ?></h2>
					<span class="contact-text"><?php echo $telephone; ?></span><br />
					<br />
					<?php } ?>
					<?php if ($fax) { ?>
					<h2><?php echo $text_fax; ?></h2><br />
					<?php echo $fax; ?>
					<?php } ?>
					<div class="store_open">
						<h2 class="cred">Nyitvatartás</h2>
						<div class="store_open_day">Hétfő: </div><div class="open_from">15 - </div><div class="open_to">19</div>
						<div class="store_open_day">Kedd: </div><div class="open_from">15 - </div><div class="open_to">19</div>
						<div class="store_open_day">Szerda: </div><div class="open_from">15 - </div><div class="open_to">19</div>
						<div class="store_open_day">Csütörtök: </div><div class="open_from">14 - </div><div class="open_to">19</div>
						<div class="store_open_day">Péntek: </div><div class="open_from">13 - </div><div class="open_to">19</div>
						<div class="store_open_day">Szombat: </div><div class="open_from">9 - </div><div class="open_to">12</div>
					</div>
					<div onclick="showHideMailForm();" style="margin-top: 20px; width: 200px;">
						<div class="round_button" style="float: left; margin-top: 15px; margin-left: 20px"></div>
						<div id="write-us-text" ><h1 class="cred" style="margin-top: 190px;">Írjon Nekünk</h1></div>
					</div>
					<div id="write-us-form" style="display:none;">
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<div class="content" style="border: none;">
								<div>
									<div style="width: 30%; float: left;">
										<b><?php echo $entry_name; ?></b>
									</div>
									<div style="width: 70%; float: left;">
										<input type="text" name="name" value="<?php echo $name; ?>" style="width: 198px; background-color: #79ba90;" /><br />
										<?php if ($error_name) { ?>
											<span class="error"><?php echo $error_name; ?></span>
										<?php } ?>
										<br />
									</div>
									<div style="width: 30%; float: left;">
										<b><?php echo $entry_email; ?></b>
									</div>
									<div style="width: 70%; float: left;">
										<input type="text" name="email" value="<?php echo $email; ?>" style="width: 198px; background-color: #79ba90;"/><br />
										<?php if ($error_email) { ?>
											<span class="error"><?php echo $error_email; ?></span>
										<?php } ?>
										<br />
									</div>
								</div>
								<div>
									<b><?php echo $entry_enquiry; ?></b><br />
									<textarea name="enquiry" cols="40" rows="10" style="resize: none; background-color: #79ba90; color: #123e1e;"><?php echo $enquiry; ?></textarea>
								</div><br />
								<?php if ($error_enquiry) { ?>
								<span class="error"><?php echo $error_enquiry; ?></span>
								<?php } ?>
   							<div style="display: none;"><br />
    						<b><?php echo $entry_captcha; ?></b><br />
    						<input type="text" name="captcha" value="<?php echo $captcha; ?>" /><br />
    						<img src="index.php?route=information/contact/captcha" alt="" />
    						<?php if ($error_captcha) { ?>
    							<span class="error"><?php echo $error_captcha; ?></span>
    						<?php } ?></div>
      					<div class="right"><input type="submit" value="Küldés" class="mailsubmitbutton" /></div>
    					</div>
						</form>
					</div>
				</div>
      	<div class="map-box">
					<div class="map-container">
						<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.hu/maps?f=q&amp;source=s_q&amp;hl=hu&amp;geocode=&amp;q=Kossuth+t%C3%A9r,+Budapest,+Kossuth+Lajos+t%C3%A9r&amp;aq=0&amp;oq=budapest+kossuth+ter&amp;sll=47.161162,19.505383&amp;sspn=4.467371,10.283203&amp;t=h&amp;ie=UTF8&amp;hq=Kossuth+t%C3%A9r,+Budapest,+Kossuth+Lajos+t%C3%A9r&amp;ll=47.507113,19.046342&amp;spn=0.006295,0.006295&amp;output=embed&amp;iwloc=near"></iframe>
					</div>
					<div class="content_transporter">
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
						<?php } ?>
					</div>
					<div class="travel-info-box">
						<h1 class="cred">Megközelítés:</h1>
						<h3>Megközelítés autóval:</h3>
						<p>Könnyen megközelíthető autóval a főbb közlekedési útvonalakon. Az épület a Könyves Kálmán krt. és a Mester utca találkozásánál fekszik. Az autósokat tágas nyitott parkolóval és garázzsal várjuk.</p>
						<h3>Megközelítés tömegközlekedéssel:</h3>
						<p>Metró: A 3-as vonalról 1 átszállással a 103-as buszra vagy az 1-es villamosra
					Villamos: Az 1-es illetve az 51-es jelzésű villamos a Ház előtt áll meg
					Busz: A 103-as autóbusz a Ház előtt áll meg
					HÉV:Elővárosi vasút Csepelről és Ráckevéről. Egy átszállással a 103-as buszra vagy az 1-es villamosra.</p>
					</div>
      	</div>
			</div>
		</div>
  <?php echo $content_bottom; ?></div>
<?php echo
$footer; ?>
