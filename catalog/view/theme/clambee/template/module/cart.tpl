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
    <?php if ($products) : ?>
    <ul class="dropdown-menu cart-dropdown">  
        <li class="title"><h5>Your Shopping Cart</h5></li>
        <?php foreach ($products as $product) : ?>
        <li class="product-list" id="cart-mono-<?php echo $product['key']; ?>">
            <div class="col-md-6 col-sm-6 col-xs-6">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4">
                <span><?php echo $product['total']; ?></span>
            </div>
            <div class="col-md-2 col-sm-2 col-xs-2">
                <a href="<?php echo $product['remove']; ?>" class=""><span class="glyphicon glyphicon-remove"></span></a>
            </div>
        </li>
        <?php endforeach; ?>
        <li class="cart-button">
            <a href="<?php echo $cart; ?>" class="btn btn-primary">View cart</a>
        </li>
    </ul>
    <?php endif; ?>
</div>
