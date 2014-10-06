<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="row">
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">&times;</span>
            <span class="sr-only">Close</span>
        </button>
        <?php echo $attention; ?>
    </div>
</div>
<?php } ?>
<?php if ($success) { ?>
<div class="row">
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">&times;</span>
            <span class="sr-only">Close</span>
        </button>
        <?php echo $success; ?>
    </div>
</div>
<?php } ?>

<script type="text/javascript" src="catalog/view/theme/clambee/js/bootstrap.touchspin.js"></script>
<div class="product-catalog row cart-page">
    <div class="row">
        <div class="col-md-12">
            <?php if ($products) : ?>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <table class="table cart_table">
                    <thead>
                        <tr>
                            <th>Description</th>
                            <th></th>
                            <th>Availability</th>
                            <th>Retail</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($products as $product) : ?>
                        <tr>
                            <td class="cart-catalog-item">
                                <?php if ($product['thumb'] != '') : ?>
                                <a href="<?php echo $product['href']; ?>">
                                    <img src="<?php echo $product['thumb']; ?>"/>
                                </a>
                                <?php endif; ?>
                            </td>
                            <td>
                                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <div>
                                    <?php foreach ($product['option'] as $option) : ?>
                                    - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                                    <?php endforeach; ?>
                                    <?php if($product['recurring']): ?>
                                    - <small><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
                                    <?php endif; ?>
                                </div>
                            </td>
                            <td><span class="in-stock"><?php echo ($product['stock']>0) ? 'In Stock' : 'Out of Stock'; ?></span></td>
                            <td><span class="retail"><?php echo $product['price']; ?></span></td>
                            <td>
                                <div class="quantity">
                                    <input id="quantity" type="text" value="<?php echo $product['quantity']; ?>" name="quantity[<?php echo $product['key']; ?>]" class="input-boots"/>
                                </div>
                            </td>
                            <td><em class="total"><?php echo $product['total']; ?></em></td>
                            <td class="row">
                                <a href="<?php echo $product['remove']; ?>" class="col-md-6 item-x text-right"></a>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                        <tr>
                            <td colspan="4" class="text-left"><a class="btn btn-primary cont" href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a></td>
                            <td colspan="3" class="text-right"><button type="submit" class="btn btn-primary"><?php echo $button_update; ?></button></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <?php endif; ?>
        </div>
    </div>
    <div class="row">
        <div class="form-basket">
            <?php if ($coupon_status) : ?>
            <div class="col-md-4">
                <h3><?php echo $entry_coupon; ?></h3>
                <div class="form-group">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                        <label class="" for="enter-coupon"><?php echo $text_use_coupon; ?></label>
                        <input type="text" class="form-control" id="phone" name="coupon" placeholder="<?php echo $text_use_coupon; ?>" value="<?php echo $coupon; ?>"/><br>
                        <button type="submit" class="btn btn-primary"><?php echo $button_coupon; ?></button>
                    </form>
                </div>
            </div>
            <?php endif; ?>
            <?php if ($shipping_status) : ?>
            <div class="col-md-4">
                <h3><?php echo $text_shipping_estimate; ?></h3>
                <div class="form-group">
                    <label class="" for="country"><?php echo $entry_country; ?></label>
                    <select name="country_id" id="country" class="selectpicker">
                        <option value=""><?php echo $text_select; ?></option>
                        <?php foreach ($countries as $country) { ?>
                        <?php if ($country['country_id'] == $country_id) { ?>
                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label class="" for="state"><?php echo $entry_zone; ?></label>
                    <select name="zone_id" id="state" class="selectpicker">
                    </select>
                </div>
                <div class="form-group">
                    <label class="" for="postcode"><?php echo $entry_postcode; ?></label>
                    <input type="text" name="postcode" value="<?php echo $postcode; ?>" />
                </div>
                <button type="button" class="btn btn-primary" id="button-quote"><?php echo $button_quote; ?></button>
            </div>
            <?php endif; ?>
            <div class="col-md-4">
                <div class="main-total">
                    <?php $i=0; foreach ($totals as $total) : $i++; ?>
                    <?php if ($i==1) echo '<div>'; ?>
                        <?php if (count($totals) == $i) : ?>
                        <h3><?php echo $total['title']; ?></h3>
                        <?php else : ?>
                        <span class="sub-total"><?php echo $total['title']; ?></span><br/>
                        <?php endif; ?>
                    <?php if (count($totals) == $i) echo '</div>'; ?>
                    <?php endforeach; ?>
                    <?php $i=0; foreach ($totals as $total) : $i++; ?>
                    <?php if ($i==1) echo '<div class="text-right">'; ?>
                        <?php if (count($totals) == $i) : ?>
                        <h3 class="grand-total-price"><?php echo $total['text']; ?></h3>
                        <?php else : ?>
                        <span class="sub-total-total "><?php echo $total['text']; ?></span><br/>
                        <?php endif; ?>
                    <?php if (count($totals) == $i) echo '</div>'; ?>
                    <?php endforeach; ?>
                </div>
                <a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a>
                <!--<p class="info-block">Checkout with Multiple Addresses</p>-->
            </div>
        </div>
    </div>

</div>

<script>
    $("input.input-boots").TouchSpin();            
</script>

<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
    $.ajax({
        url: 'index.php?route=checkout/cart/quote',
        type: 'post',
        data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
        dataType: 'json',
        beforeSend: function() {
            $('#button-quote').attr('disabled', true);
            $('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
        },
        complete: function() {
            $('#button-quote').attr('disabled', false);
            $('.wait').remove();
        },
        success: function(json) {
            $('.success, .warning, .attention, .error').remove();

            if (json['error']) {
                if (json['error']['warning']) {
                    $('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                    $('.warning').fadeIn('slow');

                    $('html, body').animate({scrollTop: 0}, 'slow');
                }

                if (json['error']['country']) {
                    $('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
                }

                if (json['error']['zone']) {
                    $('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
                }

                if (json['error']['postcode']) {
                    $('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
                }
            }

            if (json['shipping_method']) {
                html = '<h2><?php echo $text_shipping_method; ?></h2>';
                        html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
                        html += '  <table class="radio">';
                        for (i in json['shipping_method']) {
                html += '<tr>';
                        html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
                        html += '</tr>';
                        if (!json['shipping_method'][i]['error']) {
                for (j in json['shipping_method'][i]['quote']) {
                html += '<tr class="highlight">';
                        if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
                html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
                } else {
                html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
                }

                html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
                        html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
                        html += '</tr>';
                }
                } else {
                html += '<tr>';
                        html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
                        html += '</tr>';
                }
                }

                html += '  </table>';
                        html += '  <br />';
                        html += '  <input type="hidden" name="next" value="shipping" />';
                        <?php if ($shipping_method) { ?>
                        html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';
                        <?php } else { ?>
                        html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';
                        <?php } ?>
                        html += '</form>';

                $.colorbox({
                    overlayClose: true,
                    opacity: 0.5,
                    width: '600px',
                    height: '400px',
                    href: false,
                    html: html
                });

                $('input[name=\'shipping_method\']').bind('change', function() {
                    $('#button-shipping').attr('disabled', false);
                });
            }
        }
    });
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
    $.ajax({
        url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
            $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
        },
        complete: function() {
            $('.wait').remove();
        },
        success: function(json) {
            if (json['postcode_required'] == '1') {
                $('#postcode-required').show();
            } else {
                $('#postcode-required').hide();
            }

            html = '<option value=""><?php echo $text_select; ?></option>';

            if (json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                        html += ' selected="selected"';
                    }

                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }

            $('select[name=\'zone_id\']').html(html);
            $('select[name=\'zone_id\']').selectpicker('refresh');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('select[name=\'country_id\']').trigger('change');
//--></script>

<script>
    $("input .almiralatishalubis").TouchSpin();
</script>
<?php } ?>

<?php echo $footer; ?>


