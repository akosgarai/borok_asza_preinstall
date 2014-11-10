<?php echo $header; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php //echo $column_left; ?>
 <!-- <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>-->
	<div class="region_selector_container<?php if ($hide_map == 1) { ?> hidden<?php } ?>">
		<div class="region_selector_list">
  		<div style="width:300px;"><h1 style="color: #7d1a16; padding-left: 49px; font-size: 37px; margin: 15px 0 0 0; position: absolute; z-index: 2;"><?php echo $heading_title; ?></h1></div>
			<?php if ($listing_regions) { ?>
				<h2 class="hidden"><?php echo $text_refine; ?></h2>
				<div class="category-list" style="margin-top: 70px; position: absolute; z-index: 2;">
					<ul style="padding-left: 15px; width: 240px;">
						<?php foreach ($listing_regions as $category) { ?>
						<?php if ($category['category_id'] != "62") { ?>
							<li style="height: 20px; padding-top:19px;">
								<a class="round_button_url" href="<?php echo $category['href']; ?>" style="float: left; width:240px;">
									<div class="round_button_vertical" id="region_<?php echo $category['category_id'] ?>" style="width:20px;height:20px; float: left;" onmouseover="hover_on_button(<?php echo $category['category_id']; ?>)" onmouseout="mouse_out_button(<?php echo $category['category_id']; ?>);"></div>
									<label class="menu_label" style="padding-left:13px; min-width: 210px; color: #123e1e;" id="region_label_<?php echo $category['category_id'] ?>" onmouseover="hover_on_label(<?php echo $category['category_id']; ?>)" onmouseout="mouse_out_label(<?php echo $category['category_id']; ?>);"><?php echo $category['name']; ?></label>
								</a>
							</li>
      			<?php } ?>
      			<?php } ?>
   				</ul>
  			</div>
  		<?php } ?>
		</div>
		<div class="region_selector_map<?php if ($hide_map == 1) { ?> hidden<?php } ?>">
			<?php if ($listing_regions) { ?>
				<?php foreach ($listing_regions as $category) { ?>
						<?php if ($category['category_id'] < "69") { ?>
						<a href="<?php echo $category['href']; ?>">
							<div class="selectable_region" id="map_region_<?php echo $category['category_id'] ?>" onmouseover="hover_on_map(<?php echo $category['category_id']; ?>);" onmouseout="mouse_out_map(<?php echo $category['category_id']; ?>);"></div>
						</a>
  					<?php } ?>
  			<?php } ?>
  		<?php } ?>
		</div>
	</div>
	<div class="other_categories<?php if ($hide_map == 1) { ?> hidden<?php } ?>">
		<ul>
			<?php foreach($category_params as $param) { ?>
				<li class="other_categories_list" onmouseout="mouse_out_checkbox(<?php echo $param['category_param_id']; ?>);" onmouseover="hover_on_checkbox(<?php echo $param['category_param_id']; ?>)">
					<a href="<?php echo $param['href']; ?>">
						<div class="glass <?php if ($param['category_param_id'] == $wineColor || $param['category_param_id'] == $wineSugar) { ?> full <?php } ?>" id="<?php echo $param['category_param_id']; ?>" ></div>
						<div class="glass_text"><?php echo $param['name']; ?></div>
					</a>
				</li>
			<?php } ?>
		</ul>
	</div>
  <?php if ($products) { ?>
  <div class="product-filter hidden">
    <div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?> 
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="product-compare hidden"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
    <div <?php if ($hide_map == 1) { ?> style="margin-top: 20px;"<?php } ?>>
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <?php if(!$product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" width="200" height="200" /></a></div>
      <?php } ?>
	  <div class="info_holder_box">
	      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
	      <div class="description"><?php echo $product['description']; ?></div>
	      <?php if ($product['price']) { ?>
		      <div class="price">
			<?php if (!$product['special'] && $product['price'] != 0) { ?>
			<div class="price1">
			<?php echo $product['price']; ?>
			<?php if ($product['ltrPrice'] && $product['ltrPrice'] != '') { ?>
				<?php echo " (" . $product['ltrPrice'] . " Ft/l)";?>
			<?php } ?>
			</div>
			<?php } else { ?>
		       <!-- <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new">--><?php echo $product['special']; ?><!--</span>-->
		<?php } ?>
			<?php if ($product['tax']) { ?>
		       <!-- <br />
			<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>-->
			<?php } ?>
			<div class="ltrPrice">
			</div>
		      </div>
	  </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <!--<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>-->
      <?php } ?>
     <!-- <div class="cart">
        <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
      </div>
      <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
      <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>-->
    </div>
    <?php } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php /* 
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div> */
  ?>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
		/*	html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';*/			
			
			html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var holder = $(element).find('.info_holder_box').html();
			html += '<div class="info_holder_box">' + holder + '</div>';
/*
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
*/			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
		/*	html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';*/
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>
