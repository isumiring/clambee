<div id="mod-cart">
  <a href="#" class="dropdown-toggle items-cart" data-toggle="dropdown">
    <div class="items-cart__inner">
      <span class="cart-amount">
        <?php 
        foreach ($totals as $total) {
            echo $total['text'];
            break;
        }
        ?>
      </span>
      <span class="items-counter"><i class="num-counter"><?php echo $count_items; ?></i>&nbsp; <?php echo $text_items; ?></span>
      <div class="cart-icon"></div>
    </div>
  </a>
  <ul class="dropdown-menu cart-dropdown">  
    <li class="title"><h5>Your Shopping Cart</h5></li>
    <li class="product-list">
      <div class="col-md-8 col-sm-8 col-xs-8">
        <a href="cart.html">Boom Snowboard Jacket</a>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-2">
        <span>$21.00</span>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-2">
        <a href="#" class=""><span class="glyphicon glyphicon-remove"></span></a>
      </div>
    </li>
    <li class="product-list">
      <div class="col-md-8 col-sm-8 col-xs-8">
        <a href="cart.html">Helium Insulator Sno ...</a>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-2">
        <span>$21.00</span>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-2">
        <a href="#" class=""><span class="glyphicon glyphicon-remove"></span></a>
      </div>
    </li>
    <li class="product-list">
      <div class="col-md-8 col-sm-8 col-xs-8">
        <a href="cart.html">2L GORE-TEX® Murdoc ...</a>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-2">
        <span>$21.00</span>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-2">
        <a href="#" class=""><span class="glyphicon text-right glyphicon-remove"></span></a>
      </div>
    </li>
    <li class="cart-button">
      <a href="cart.html" class="btn btn-primary">View cart</a>
    </li>
  </ul>
</div>
