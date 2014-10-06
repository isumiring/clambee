<div class="row">
    <div class="col-md-6 col-lg-6 col-xs-6 col-sm-6">
        <h4><?php echo $text_new_customer; ?></h4>
        <p><?php echo $text_checkout; ?></p>
        <div class="radio">
            <label>
                <?php if ($account == 'register') : ?>
                <input type="radio" name="account" id="register" value="register"  checked="checked"/>
                <?php else : ?>
                <input type="radio" name="account" id="register" value="register"/>
                <?php endif; ?>
                <b><?php echo $text_register; ?></b>
            </label>
        </div>
        <?php if ($guest_checkout) : ?>
        <div class="radio">
            <label>
                <?php if ($account == 'guest') : ?>
                <input type="radio" name="account" id="guest" value="guest"  checked="checked"/>
                <?php else : ?>
                <input type="radio" name="account" id="guest" value="guest"/>
                <?php endif; ?>
                <b><?php echo $text_guest; ?></b>
            </label>
        </div>
        <?php endif; ?>
        <br />
        <p><?php echo $text_register_account; ?></p>
        <button type="button" id="button-account" class="btn btn-inverse"><?php echo $button_continue; ?></button>
    </div>
    <div id="login" class="col-md-6 col-lg-6 col-xs-6 col-sm-6">
        <h4><?php echo $text_returning_customer; ?></h4>
        <p><?php echo $text_i_am_returning_customer; ?></p>
        
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" value="">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Your Password">
        </div>
        <button type="button" class="btn btn-inverse" id="button-login"><?php echo $button_login; ?></button>
        <a class="forgot-pass" href="<?php echo $forgotten; ?>">Forgot Your Password?</a>
    </div>
</div>