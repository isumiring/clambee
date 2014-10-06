<?php echo $header; ?>

<div class="product-catalog row" id="product-detail">
    <div class="product col-md-6">
        <div class="main-image">
            <!--<i class="item-label sale"></i>-->
            <?php if ($thumb) : ?>
            <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>">
            <?php endif; ?>
        </div>
        <?php if ($images) : ?>
        <ul class="thumb">
            <?php foreach ($images as $image) : ?>
            <li><a href="<?php echo $image['popup']; ?>" class="sp-current"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>"></a></li>
            <?php endforeach; ?>
        </ul>
        <?php endif; ?>
    </div>
    <div class="product-description col-md-6">
        <h1 class="product-title"><?php echo $heading_title; ?></h1>
        <div class="product-price">
            <?php if (!$special) : ?>
            <span class="main"><?php echo $price; ?></span>
            <?php else : ?>
            <span class="main"><?php echo $special; ?></span>
            <span class="old"><?php echo $price; ?></span>
            <?php endif; ?>
            <a class="view-reviews" href="#">19 Reviews ↓</a>
        </div>
        <div class="description">
            <?php echo $description; ?>
        </div>
        <!--
        <div class="color">
            <h5>Color</h5>
            <ul>
                <li><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
                <li><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
                <li class="active"><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
                <li><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
                <li><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
                <li><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
                <li><a href="#"><img src="img/pages/thumb/prod-5.jpg"></a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
        <div class="size">
            <h5>Size</h5>
            <a href="#" class="guide">fit guide</a>
            <ul>
                <li><a href="#">XS</a></li>
                <li><a href="#">S</a></li>
                <li class="active"><a href="#">M</a></li>
                <li><a href="#">L</a></li>
                <li class="#"><a href="#">XL</a></li>
                <li><a href="#">XХL</a></li>
            </ul>
        </div>
        -->
        <div class="quantity">
            <h5>Quantity</h5>
            <input id="quantity" type="text" value="<?php echo $minimum; ?>" name="quantity">
            <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
        </div>                    
        <div class="clearfix"></div>
        <div class="add-cart">
            <button type="button" class="btn btn-primary add-to-cart" id="button-cart"><?php echo $button_cart; ?></button>
            <button type="button" class="btn favorites"><span class="glyphicon glyphicon-heart"></span></button>
            <button type="button" class="btn reply"><span class="glyphicon glyphicon-retweet"></span></button>
        </div>
        <div class="share">
            <h5 class="pull-left">Share</h5>
            <ul>
                <li><a class="fb" href="#"></a></li>
                <li><a class="tw" href="#"></a></li>
                <li><a class="ytube" href="#"></a></li>
                <li><a class="vimeo" href="#"></a></li>
                <li><a class="gplus" href="#"></a></li>
            </ul>        
        </div>
    </div> 
    <div class="clearfix"></div> 
</div>
<div class="product-catalog row product-character">
    <div class="product-attributes">
        <?php 
        $attributes = array();
        if ($attribute_groups) {
            foreach ($attribute_groups as $attribute_group) {
                if ($attribute_group['attribute_group_id'] == 7) {
                    foreach ($attribute_group['attribute'] as $attribute) {
                        $attributes[] = $attribute;
                    }
                }
            }
        }
        ?>
        <!-- Nav tabs -->
        <?php if ($attributes) : $i=0;?>
        <ul class="nav nav-tabs">
            <?php foreach ($attributes as $attribute) : ?>
            <li <?php echo ($i==0) ? 'class="active"' : '' ?>><a href="#<?php echo $attribute['attribute_id']; ?>" data-toggle="tab"><?php echo $attribute['name']; ?></a></li>
            <?php $i++; endforeach; ?>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <?php $i=0; foreach ($attributes as $attribute) : ?>
            <div class="tab-pane fade in <?php echo ($i==0) ? 'active' : '' ?>" id="<?php echo $attribute['attribute_id']; ?>">
                <p><?php echo $attribute['text']; ?></p>
            </div>
            <?php $i++; endforeach; ?>
        </div>
        <?php endif; ?>
    </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
    $('.colorbox').colorbox({
        overlayClose: true,
                opacity: 0.5,
                rel: "colorbox"
        });
    });
//--</script> 
<script type="text/javascript"><!--
    $('select[name="profile_id"], input[name="quantity"]').change(function(){
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
                type: 'post',
                data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
                dataType: 'json',
                beforeSend: function() {
                    $('#profile-description').html('');
                },
                success: function(json) {
                    $('.success, .warning, .attention, information, .error').remove();
                    if (json['success']) {
                        $('#profile-description').html(json['success']);
                    }
                }
            });
    });
    $(document).ready(function() {
        $('.add-cart #button-cart').bind('click', function() {
            var html = '';
            $.ajax({
                url: 'index.php?route=checkout/cart/add',
                type: 'post',
                data: $('#product-detail input[type=\'text\'], #product-detail input[type=\'hidden\'], #product-detail input[type=\'radio\']:checked, #product-detail input[type=\'checkbox\']:checked, #product-detail select, #product-detail textarea'),
                dataType: 'json',
                success: function(json) {
                    $('#notification').html('');
                    if (json['error']) {
                        if (json['error']['option']) {
                            for (i in json['error']['option']) {
                                $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                            }
                        }

                        if (json['error']['profile']) {
                            $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                        }
                    }

                    if (json['success']) {
                        html += '<div class="alert alert-success alert-dismissible" role="alert" style="display:none;">';
                        html += '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
                        html += json['success'];
                        html += '</div>';
                        $('#notification').html(html).focus();

                        $('.alert').fadeIn('slow');

                        $('.items-cart__inner .cart-amount').html(json['total']);
                        $('.items-cart__inner .num-counter').html(json['total_item']);
                    }
                }
            });
        });
    });
//--></script>

<script type="text/javascript" src="catalog/view/theme/clambee/js/bootstrap.touchspin.js"></script>
<script>
    $("input[name='quantity']").TouchSpin();            
</script>

<?php echo $featured; ?>
<?php echo $about; ?>
<?php echo $footer; ?>