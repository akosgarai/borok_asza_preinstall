<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1>Köszönjük megrendelését!</h1>
  <?php echo $text_message; ?>
  <div class="buttons" style="background-color: #eade92; border: none;">
    <div class="right"><a href="<?php echo $continue; ?>" class="button">Vissza a kezdőlapra</a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
