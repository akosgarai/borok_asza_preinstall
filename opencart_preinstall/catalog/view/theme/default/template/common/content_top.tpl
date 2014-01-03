<?php if ($categories) { ?>
<div id="menu">
	<ul>
    <?php foreach ($categories as $category) { ?>
		<li>
			<div style="padding-left: 10px;">
				<label class="menu_label"><?php echo $category['name']; ?></label>
				<a href="<?php echo $category['href']; ?>" class="round_button_url">
					<div class="round_button" style="width:23px; height:23px;">
					</div>
				</a>
				<!--Alkategoriak a gombokhoz-->
			<!--	<div class ="round_button_subcat">
					<?php if ($category['children']) { ?>
						<div>
							<?php for ($i = 0; $i < count($category['children']);) { ?>
							<ul>
								<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
								<?php for (; $i < $j; $i++) { ?>
									<?php if (isset($category['children'][$i])) { ?>
										<li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
									<?php } ?>
								<?php } ?>
							</ul>
							<?php } ?>
						</div>
					<?php } ?>
				</div>-->
			</div>
		</li>
    <?php } ?>
	</ul>
</div>
<?php } ?>
<?php foreach ($modules as $module) { ?>
<?php echo $module; ?>
<?php } ?>
