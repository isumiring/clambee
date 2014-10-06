
<div class="col-md-6" style="border-right: 2px solid #e9e9e9;">
    <h4><?php echo $text_your_details; ?></h4>
    <div class="form-group">
        <label for="firstname"><?php echo $entry_firstname; ?><span class="required">*</span></label>
        <input type="text" class="form-control" id="firstname" value="<?php echo $firstname; ?>" name="firstname"/>
    </div>
    <div class="form-group">
        <label for="lastname"><?php echo $entry_lastname; ?><span class="required">*</span></label>
        <input type="text" class="form-control" id="lastname" value="<?php echo $lastname; ?>" name="lastname"/>
    </div>
    <div class="form-group">
        <label for="email"><?php echo $entry_email; ?></label>
        <input type="email" class="form-control" id="email" value="<?php echo $email; ?>" name="email">
    </div>
    <div class="form-group">
        <label for="telephone"><?php echo $entry_telephone; ?><span class="required">*</span></label>
        <input type="text" class="form-control" id="telephone" value="<?php echo $telephone; ?>" name="telephone"/>
    </div>
    <div class="form-group">
        <label for="fax"><?php echo $entry_fax; ?></label>
        <input type="text" class="form-control" id="fax" value="<?php echo $fax; ?>" name="fax"/>
    </div>
    
    <?php if ($shipping_required) { ?>
    <div class="checkbox" style="clear: both; padding-top: 15px; border-top: 1px solid #DDDDDD;margin-left: 0;">
        <label>
        <?php if ($shipping_address) { ?>
        <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="shipping_address" value="1" id="shipping" />
        <?php } ?>
        <?php echo $entry_shipping; ?>
        </label>
    </div>
    <?php } ?>
    <button type="button" class="btn btn-inverse" id="button-guest"><?php echo $button_continue; ?></button>
</div>
<div class="col-md-6">
    <h4><?php echo $text_your_address; ?></h4>
    <input type="hidden" name="company" value="<?php echo $company; ?>"/>
    <input type="hidden" name="company_id" value="<?php echo $company_id; ?>"/>
    <input type="hidden" name="tax_id" value="<?php echo $tax_id; ?>"/>
    <input type="hidden" name="address_2" value="<?php echo $address_2; ?>"/>
    <div class="form-group">
        <label for="address_1"><?php echo $entry_address_1; ?><span class="required">*</span></label>
        <textarea class="form-control" id="address_1" rows="4" name="address_1"><?php echo $address_1; ?></textarea>
    </div>
    <div class="form-group">
        <label for="city"><?php echo $entry_city; ?><span class="required">*</span></label>
        <input type="text" class="form-control" id="city" value="<?php echo $city; ?>" name="city"/>
    </div>
    <div class="form-group">
        <label for="postcode"><?php echo $entry_postcode; ?><span class="required">*</span></label>
        <input type="text" class="form-control" id="postcode" value="<?php echo $postcode; ?>" name="postcode"/>
    </div>
    <div class="form-group">
        <label for="country_id"><?php echo $entry_country; ?><span class="required">*</span></label>
        <select name="country_id" id="country_id" class="selectpicker">
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
        <label for="zone_id"><?php echo $entry_zone; ?><span class="required">*</span></label>
        <select name="zone_id" id="zone_id" class="selectpicker">
        </select>
    </div>
</div>

<script type="text/javascript"><!--
$('.selectpicker').selectpicker();
$('#payment-address select[name=\'country_id\']').bind('change', function() {
    if (this.value == '')
        return;
    $.ajax({
        url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
            $('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
        },
        complete: function() {
            $('.wait').remove();
        },
        success: function(json) {
            if (json['postcode_required'] == '1') {
                $('#payment-postcode-required').show();
            } else {
                $('#payment-postcode-required').hide();
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

            $('#payment-address select[name=\'zone_id\']').html(html);
            $('#payment-address select[name=\'zone_id\']').selectpicker('refresh');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script>
