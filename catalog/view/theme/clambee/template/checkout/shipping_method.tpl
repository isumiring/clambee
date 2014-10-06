<div class="col-md-12">
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
    <?php if ($shipping_methods) : ?>
    <p><?php echo $text_shipping_method; ?></p>
    <div class="row">
        <?php foreach ($shipping_methods as $shipping_method) : ?>
        <div class="col-md-12">
            <strong><?php echo $shipping_method['title']; ?></strong><br/>
            <?php if (!$shipping_method['error']) : ?>
                <?php foreach ($shipping_method['quote'] as $quote) : ?>
                <div class="radio">
                    <label>
                        <?php if ($quote['code'] == $code || !$code) : $code = $quote['code']; ?>
                        <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
                        <?php else : ?>
                        <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>"/>
                        <?php endif; ?>
                        <?php echo $quote['title']; ?> 
                        <?php echo $quote['text']; ?>
                    </label>
                </div>
                <?php endforeach; ?>
            <?php else : ?>
            <div class="row">
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <?php echo $shipping_method['error']; ?>
                </div>
            </div>
            <?php endif; ?>
        </div>
        <?php endforeach; ?>
    </div>
    <?php endif; ?>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="comment"><?php echo $text_comments; ?><span class="required">*</span></label>
                <textarea class="form-control" id="comment" rows="8" name="comment"><?php echo $comment; ?></textarea>
            </div>
            
            <button type="button" class="btn btn-inverse" id="button-shipping-method"><?php echo $button_continue; ?></button>
        </div>
    </div>
</div>

