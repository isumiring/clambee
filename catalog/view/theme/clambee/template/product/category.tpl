<?php echo $header; ?>
<?php echo $filter_left; ?>
<div class="product-catalog row">
    <!-- start left side -->
    <div class="col-md-3 col-xs-12 col-sm-3 col-lg-3 catalog-items">
        <div class="price">
            <h2>Price</h2>
            <ul>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked><label for="demo_box_1" name="demo_lbl_1" class="css-label"><span>$0.00 — $100.00 <b>(27)</b></span></label></label>
                </li>
                <li class="disabled">
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked="" disabled><label for="demo_box_2" name="demo_lbl_2" class="css-label"><span>$100.00 — $200.00 <b>(32)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_3" name="demo_lbl_3" class="css-label"><span>$200.00 — $400.00 <b>(17)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked="checked"><label for="demo_box_4" name="demo_lbl_4" class="css-label"><span>$400.00 — $500.00 <b>(11)</b></span></label></label>
                </li>
            </ul>
        </div>
        <div class="color">
            <h2>Color</h2>
            <ul>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Brown <b>(27)</b></span></label></label>
                </li>
                <li class="disabled">
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked="" disabled><label for="demo_box_1" name="demo_lbl_6" class="css-label"><span>Green <b>(32)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked><label for="demo_box_7" name="demo_lbl_7" class="css-label"><span>Red <b>(17)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_8" name="demo_lbl_8" class="css-label"><span>White <b>(11)</b></span></label></label>
                </li>
            </ul>
        </div>
        <div class="brands">
            <h2>Brands</h2>
            <ul>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Animal <b>(29)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Bullet <b>(47)</b></span></label></label>
                </li>                            
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Castelli <b>(17)</b></span></label></label>
                </li>                            
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Cult <b>(7)</b></span></label></label>
                </li>                            
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Duo <b>(5)</b></span></label></label>
                </li>                           
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Polaris <b>(34)</b></span></label></label>
                </li>                            
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>SwissStop <b>(5)</b></span></label></label>
                </li>                            
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Uvex <b>(9)</b></span></label></label>
                </li>                            
            </ul>
        </div>
        <div class="size">
            <h2>Size</h2>
            <ul>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Small <b>(1,027)</b></span></label></label>
                </li>
                <li class="disabled">
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked="" disabled><label for="demo_box_1" name="demo_lbl_6" class="css-label"><span>Medium <b>(5,982)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked><label for="demo_box_7" name="demo_lbl_7" class="css-label"><span>Large <b>(17)</b></span></label></label>
                </li>
                <li>
                    <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_8" name="demo_lbl_8" class="css-label"><span>One size <b>(809)</b></span></label></label>
                </li>
            </ul>
        </div>
    </div>
    <!-- end of left side -->
    
    <!-- content -->
    <div class="col-md-9 col-xs-12 col-sm-9 col-lg-9 catalog">
        <div class="row filter">
            <div class="col-md-2 col-xs-6 col-lg-2">
            </div>
            <div class="col-md-3 col-xs-6 col-lg-3">
                <div class="sort-by sort">
                    <span class=""><?php echo $text_sort; ?></span>
                    <select onchange="location = this.value;" class="selectpicker">
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
            <div class="col-md-4 col-xs-4 col-lg-4">
                <div class="show limit">
                    <span class=""><?php echo $text_limit; ?></span>
                    <select onchange="location = this.value;" class="selectpicker">
                        <?php foreach ($limits as $limits) { ?>
                            <?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                    <span class="per-page">per page</span>
                </div>
            </div>
            <div class="col-md-3 col-xs-8 col-lg-3">
                <div class="pagination">
                    <?php echo $pagination; ?>
                </div>
            </div>
        </div>
        <?php $i=0; ?>
        <?php foreach ($products as $product) : ?>
            <?php if (($i%3)==0) : ?>
            <div class="row">
            <?php endif; ?>
            <div class="catalog-item col-sm-12 col-lg-4 col-xs-12 col-md-4">
                <a href="<?php echo $product['href']; ?>">
                    <div class="item-image">
                        <?php if ($product['thumb']) : ?>
                        <img src="<?php echo $product['thumb']; ?>" alt=""/>
                        <?php endif; ?>
                    </div>
                    <div class="item-description">
                        <div class="item-title">
                            <?php echo $product['name']; ?>
                        </div>
                        <div class="item-price">
                            <div class="price">
                                <?php if ($product['price']) : ?>
                                <?php 
                                if (!$product['special']) { 
                                    echo $product['price'];
                                } else { 
                                    echo '<span class="price-old">'.$product['price'].'</span> <span class="price-new">'.$product['special'].'</span>';
                                }
                                ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <?php $i++; ?>
            <?php if (($i%3)==0 || count($products)==$i) : ?>
            </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <!--content-->
</div>



<?php echo $footer; ?>



<!--
<div id="content">
    <h1><?php echo $heading_title; ?></h1>
    <?php if ($thumb || $description) { ?>
    <div class="category-info">
        <?php if ($thumb) { ?>
        <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <?php echo $description; ?>
        <?php } ?>
    </div>
    <?php } ?>
    <?php if ($categories) { ?>
    <h2><?php echo $text_refine; ?></h2>
    <div class="category-list">
        <?php if (count($categories) <= 5) { ?>
        <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
        </ul>
        <?php } else { ?>
        <?php for ($i = 0; $i < count($categories);) { ?>
        <ul>
            <?php $j = $i + ceil(count($categories) / 4); ?>
            <?php for (; $i < $j; $i++) { ?>
            <?php if (isset($categories[$i])) { ?>
            <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
        </ul>
        <?php } ?>
        <?php } ?>
    </div>
    <?php } ?>
    <?php if ($products) { ?>
    <div class="product-filter">
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
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="product-list">
        <?php foreach ($products as $product) { ?>
        <div>
            <?php if ($product['thumb']) { ?>
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
            <?php } ?>
            <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
            <div class="description"><?php echo $product['description']; ?></div>
            <?php if ($product['price']) { ?>
            <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <br />
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
            </div>
            <?php } ?>
            <?php if ($product['rating']) { ?>
            <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
            <?php } ?>
            <div class="cart">
                <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
            </div>
            <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
            <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
        </div>
        <?php } ?>
    </div>
    <div class="pagination"><?php echo $pagination; ?></div>
    <?php } ?>
    <?php if (!$categories && !$products) { ?>
    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <?php } ?>
    <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
function display(view) {
            if (view == 'list') {
            $('.product-grid').attr('class', 'product-list');
                    $('.product-list > div').each(function(index, element) {
            html = '<div class="right">';
                    html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
                    html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                    html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
                    html += '</div>';
                    html += '<div class="left">';
                    var image = $(element).find('.image').html();
                    if (image != null) {
            html += '<div class="image">' + image + '</div>';
            }

            var price = $(element).find('.price').html();
                    if (price != null) {
            html += '<div class="price">' + price + '</div>';
            }

            html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
                    html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
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
            html += '<div class="price">' + price + '</div>';
            }

            var rating = $(element).find('.rating').html();
                    if (rating != null) {
            html += '<div class="rating">' + rating + '</div>';
            }

            html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
                    html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                    html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
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
//-></script> 