<?php echo $header; ?>
<div class="product-catalog row contact-page">
    <div class="col-md-6 col-lg-6">
        <h1><?php echo $heading_title; ?></h1>
        <h4><?php echo $text_location; ?></h4>
        <b><?php echo $text_address; ?></b><br />
        <?php echo $store; ?><br />
        <?php echo $address; ?><br/>
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
    <div class="col-md-6 col-lg-6" style="border-left: 2px solid #e9e9e9; margin-top: 30px;">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name"><?php echo $entry_name; ?><span class="required">*</span></label>
                <input type="text" class="form-control" id="name" value="<?php echo $name; ?>" name="name"/>
            </div>
            <div class="form-group">
                <label for="email"><?php echo $entry_email; ?><span class="required">*</span></label>
                <input type="text" class="form-control" id="email" value="<?php echo $email; ?>" name="email"/>
            </div>
            <div class="form-group">
                <label for="enquiry"><?php echo $entry_enquiry; ?><span class="required">*</span></label>
                <textarea class="form-control" id="enquiry" rows="4" name="enquiry"><?php echo $enquiry; ?></textarea>
            </div>
            <div class="form-group">
                <label for="captcha"><?php echo $entry_captcha; ?><span class="required">*</span></label>
                <img src="index.php?route=information/contact/captcha" alt="" /><br/>
                <div class="col-xs-4" style="padding-left: 0;">
                    <input type="text" class="form-control" id="captcha" value="" name="captcha"/>
                </div>
            </div>
            <div class="col-md-12 text-right" style="padding-left: 0; margin: 20px 0;">
                <button type="submit" class="btn btn-primary"><?php echo $button_continue; ?></button>
            </div>
        </form>
    </div>
</div>
<?php echo $footer; ?>
