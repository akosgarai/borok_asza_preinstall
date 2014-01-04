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
  	<h1><?php echo $heading_title; ?></h1>
   	<h2><?php echo $text_location; ?></h2>
    <div class="contact-info">
      <div class="content">
				<div class="address-box">
					<b><?php echo $text_address; ?></b><br />
        	<?php echo $store; ?><br />
        	<?php echo $address; ?><br />
					<?php if ($telephone) { ?>
					<b><?php echo $text_telephone; ?></b><br />
					<?php echo $telephone; ?><br />
					<br />
					<?php } ?>
					<?php if ($fax) { ?>
					<b><?php echo $text_fax; ?></b><br />
					<?php echo $fax; ?>
					<?php } ?>
				</div>
      	<div class="map-box">
					<div class="map-container">
						<iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.hu/maps?f=q&amp;source=s_q&amp;hl=hu&amp;geocode=&amp;q=Kossuth+t%C3%A9r,+Budapest,+Kossuth+Lajos+t%C3%A9r&amp;aq=0&amp;oq=budapest+kossuth+ter&amp;sll=47.161162,19.505383&amp;sspn=4.467371,10.283203&amp;t=h&amp;ie=UTF8&amp;hq=Kossuth+t%C3%A9r,+Budapest,+Kossuth+Lajos+t%C3%A9r&amp;ll=47.507113,19.046342&amp;spn=0.006295,0.006295&amp;output=embed&amp;iwloc=near"></iframe>
					</div>
      	</div>
				<div id="write-us-text" onclick="document.getElementById('write-us-form').style.display='block'"><span>Leveliras</span></div>
			</div>
		</div>
		<div id="write-us-form" style="display:none;">
  		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    		<h2><?php echo $text_contact; ?></h2>
    		<div class="content">
					<div style="float: left; width: 34%;">
    			<b><?php echo $entry_name; ?></b><br />
    			<input type="text" name="name" value="<?php echo $name; ?>" /><br />
    			<?php if ($error_name) { ?>
    				<span class="error"><?php echo $error_name; ?></span>
    			<?php } ?>
    			<br />
    			<b><?php echo $entry_email; ?></b><br />
    			<input type="text" name="email" value="<?php echo $email; ?>" /><br />
    			<?php if ($error_email) { ?>
    				<span class="error"><?php echo $error_email; ?></span>
    			<?php } ?>
    			<br />
					</div>
					<div style="float: left; width: 66%;">
    				<b><?php echo $entry_enquiry; ?></b><br />
    				<textarea name="enquiry" cols="60" rows="10" ><?php echo $enquiry; ?></textarea>
					</div>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
    <br />
    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
			</form>
		</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
