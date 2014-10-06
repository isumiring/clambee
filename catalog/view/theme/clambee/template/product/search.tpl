<?php echo $header; ?>
<div class="product-catalog row">
    <?php echo $filter_left; ?>
    
    <!-- content -->
    <div class="col-md-9 col-xs-12 col-sm-9 col-lg-9 catalog">
        <div class="row filter">
            <div class="col-md-12 title-list">
                <h2><?php echo $heading_title; ?></h2>
            </div>
            <div class="col-md-3 col-xs-6 col-lg-3">
                <div class="sort-by sort">
                    <span class=""><?php echo $text_sort; ?></span>
                    <select onchange="location = this.value;" class="selectpicker">
                        <?php foreach ($sorts as $sorts) { ?>
                            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <div class="col-md-4 col-xs-6 col-lg-4">
                <div class="show limit">
                    <span class=""><?php echo $text_limit; ?></span>
                    <select onchange="location = this.value;" class="selectpicker">
                        <?php foreach ($limits as $limits) { ?>
                            <?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                    <span class="per-page">per page</span>
                </div>
            </div>
            <div class="col-md-5 col-xs-8 col-lg-5">
                <div class="pagination">
                    <?php echo $pagination; ?>
                </div>
            </div>
        </div>
        <?php $i=0; ?>
        <?php foreach ($products as $product) : ?>
            <?php if (($i%3)==0) : ?>
            <div class="row">
            <?php endif; ?>
            <div class="catalog-item col-sm-12 col-lg-4 col-xs-12 col-md-4">
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
                            <div class="price">
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
                    </div>
                </a>
            </div>
            <?php $i++; ?>
            <?php if (($i%3)==0 || count($products)==$i) : ?>
            </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <!--content-->
</div>

<?php echo $featured; ?>
<?php echo $about; ?>

<?php echo $footer; ?>