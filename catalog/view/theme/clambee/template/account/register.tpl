<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="row">
    <div class="alert alert-warning alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">Close</span>
      </button>
      <?php echo $error_warning; ?>
    </div>
</div>
<?php } ?>
<div class="product-catalog row register login">
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_account_already; ?></p>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
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
            <div class="form-group">
                <label for="password"><?php echo $entry_password; ?></label>
                <input type="password" class="form-control" id="password"  name="password">
            </div>
            <div class="form-group">
                <label for="confirm"><?php echo $entry_confirm; ?></label>
                <input type="password" class="form-control" id="confirm"  name="confirm">
            </div>
        </div>
        <div class="col-md-6">
            <h4><?php echo $text_your_address; ?></h4>
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
        
        <?php if ($text_agree) { ?>
        <div class="col-md-12">
            <div class="form-group">
                <label for="agree"><?php echo $text_agree; ?></label>
                <?php if ($agree) { ?>
                <input type="checkbox" name="agree" value="1" checked="checked" id="agree" />
                <?php } else { ?>
                <input type="checkbox" name="agree" value="1" id="agree" />
                <?php } ?>
            </div>
            <button type="submit" class="btn btn-primary btn-login"><?php echo $button_continue; ?></button>
          </div>
        <?php } else { ?>
        <div class="col-md-12">
            <button type="submit" class="btn btn-primary btn-login"><?php echo $button_continue; ?></button>
        </div>
        <?php } ?>
    </form>
    <div class="clearfix"></div>
    <!--
    <div class="one-click-login">
        <ul>
            <li><h3>One-click login</h3></li>
            <li><a class="fb" href="#"></a></li>
            <li><a class="gplus" href="#"></a></li>
            <li><a class="tw" href="#"></a></li>
            <li><a class="pint" href="#"></a></li>
        </ul> 
    </div>
    -->
</div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
    $.ajax({
        url: 'index.php?route=account/register/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
            $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/clambee/img/loading.gif" alt="" /></span>');
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
<script type="text/javascript"><!--
$(document).ready(function() {
    $('.colorbox').colorbox({
        width: 640,
        height: 480
    });
});
//--></script> 
<?php echo $footer; ?>