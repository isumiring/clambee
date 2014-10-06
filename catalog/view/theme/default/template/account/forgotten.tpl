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
<div class="product-catalog row register login forgotpass">
    <div class="col-md-12">
        <h4><?php echo $heading_title; ?></h4>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="row">
            <p><?php echo $text_email; ?></p>
            <h2><?php echo $text_your_email; ?></h2>
            <div class="form-group col-md-6">
                <label for="email"><?php echo $entry_email; ?></label>
                <input type="email" class="form-control" id="email" placeholder="Your Email" value="">
            </div>
            <div class="form-group col-md-12">
                <button type="submit" class="btn btn-primary btn-login"><?php echo $button_continue; ?></button>
                <a class="forgot-pass-back" href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
            </div>
        </form>
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



<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
      </div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>