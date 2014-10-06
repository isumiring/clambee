<?php echo $header; ?>
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
    <div class="col-md-6">
        <h4>Returning customer</h4>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" value="<?php echo $email; ?>">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Your Password">
            </div>
            <?php if ($redirect) { ?>
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
            <?php } ?>
            <button type="submit" class="btn btn-primary btn-login"><?php echo $button_login; ?></button>
            <a class="forgot-pass" href="<?php echo $forgotten; ?>">Forgot Your Password?</a>
        </form>
    </div>
    <div class="col-md-6 for-customer">
        <h4>New customer</h4>
        <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
        <a class="btn btn-primary btn-continue" href="<?php echo $register; ?>"><?php echo $button_continue; ?></a>
    </div> 
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
<?php echo $footer; ?>
