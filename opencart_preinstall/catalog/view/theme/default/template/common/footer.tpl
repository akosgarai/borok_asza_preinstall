<div id="footer">
	<div style="width: 100%;">
		<div class="gplus-box">
			<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
			<g:plusone></g:plusone>
		</div>
		<div class="facebook-box">
			<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="standard" data-action="like" data-show-faces="false" data-share="false"></div>
		</div>
	</div>
  <?php if ($informations) { ?>
	<ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
	</ul>
	<?php } ?>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!--dont need
<div id="powered"><?php echo $powered; ?></div>
-->
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</body></html>
