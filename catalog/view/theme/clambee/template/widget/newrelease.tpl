<?php if (count($products)) : ?>
<div class="product-catalog row visible-lg hidden-sm hidden-xs hidden-md bestseller-products carousel slide" id="new-products-catalog-lg">
    <div class="product-catalog__header">
        <h2><?php echo $heading_title; ?>
            <ul class="slider-navigation">
                <li class="arrow prev" data-slide="prev" href="#new-products-catalog-lg"></li>
                <li class="right arrow next" data-slide="next" href="#new-products-catalog-lg"></li>
            </ul>
        </h2>
    </div>
    <div class="carousel-inner">
        <?php $i=0; ?>
        <?php foreach ($products as $product) : ?>
        <?php if (($i%8)==0) : ?>
        <div class="item <?php if ($i==0) {echo 'active';}?>">
        <?php endif; ?>
            <div class="catalog-item col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <a href="<?php echo $product['href']; ?>">
                    <div class="item-image">
                        <?php if ($product['thumb']) : ?>
                        <img src="<?php echo $product['thumb']; ?>" alt=""/>
                        <?php endif; ?>
                    </div>
                    <div class="item-description">
                        <div class="item-title">
                            <?php echo $product['name']; ?>
                        </div>
                        <div class="item-price">
                            <?php if ($product['price']) : ?>
                                <?php 
                                if (!$product['special']) { 
                                    echo $product['price'];
                                } else { 
                                    echo '<span class="price-old">'.$product['price'].'</span> <span class="price-new">'.$product['special'].'</span>';
                                }
                                ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </a>
            </div>
        <?php $i++; ?>
        <?php if (($i%8)==0 || count($products) == $i) : ?>
        </div>
        <?php endif; ?>
        <?php endforeach; ?>
    </div>
</div>
<?php endif; ?>