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
    <?php if ($payment_methods) : ?>
    <p><?php echo $text_payment_method; ?></p>
    <div class="row">
        <?php foreach ($payment_methods as $payment_method) : ?>
        <div class="col-md-12">
            <strong><?php echo $payment_method['title']; ?></strong><br/>
            <div class="radio">
                <label>
                    <?php if ($payment_method['code'] == $code || !$code) : $code = $payment_method['code']; ?>
                    <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
                    <?php else : ?>
                    <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>"/>
                    <?php endif; ?>
                    <?php echo $payment_method['title']; ?> 
                </label>
            </div>
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
        </div>
        <?php if ($text_agree) : ?>
        <div class="col-md-12">
            <div class="form-group">
                <label for="agree"><?php echo $text_agree; ?></label>
                <?php if ($agree) { ?>
                <input type="checkbox" name="agree" value="1" checked="checked" id="agree" />
                <?php } else { ?>
                <input type="checkbox" name="agree" value="1" id="agree" />
                <?php } ?>
            </div>
            <button type="button" class="btn btn-inverse" id="button-payment-method"><?php echo $button_continue; ?></button>
        </div>
        <?php else : ?>
        <div class="col-md-12">
            <button type="button" class="btn btn-inverse" id="button-payment-method"><?php echo $button_continue; ?></button>
        </div>
        <?php endif; ?>
    </div>
</div>

<script type="text/javascript"><!--
$('.colorbox').colorbox({
    width: 640,
    height: 480
});
//--></script>


<?php /**

<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<p><?php echo $text_payment_method; ?></p>
<table class="radio">
  <?php foreach ($payment_methods as $payment_method) { ?>
  <tr class="highlight">
    <td><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
  </tr>
  <?php } ?>
</table>
<br />
<?php } ?>
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<br />
<br />
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="right"><?php echo $text_agree; ?>
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script>
**/ ?>