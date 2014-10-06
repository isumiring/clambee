
<!-- start left side -->
<div class="col-md-3 col-xs-12 col-sm-3 col-lg-3 catalog-items">
    <!--
    <div class="brands">
        <h2>Brands</h2>
        <ul>
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Animal <b>(29)</b></span></label></label>
            </li>
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Bullet <b>(47)</b></span></label></label>
            </li>                            
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Castelli <b>(17)</b></span></label></label>
            </li>                            
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Cult <b>(7)</b></span></label></label>
            </li>                            
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Duo <b>(5)</b></span></label></label>
            </li>                           
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Polaris <b>(34)</b></span></label></label>
            </li>                            
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>SwissStop <b>(5)</b></span></label></label>
            </li>                            
            <li>
                <label class="checkbox"><input class="css-checkbox" type="checkbox" checked=""><label for="demo_box_5" name="demo_lbl_5" class="css-label"><span>Uvex <b>(9)</b></span></label></label>
            </li>                            
        </ul>
    </div>
    -->
    <div class="brands">
        <h2><?php echo $brand_title; ?></h2>
        <?php if ($manufacturers) : ?>
        <ul>
            <?php $i=0; foreach ($manufacturers as $manufacturer) : ?>
            <li>
                <label class="checkbox"><label for="demo_box_<?php echo ++$i; ?>" name="demo_lbl_<?php echo ++$i; ?>" class=""><a href="<?php echo $manufacturer['href']; ?>"><span><?php echo $manufacturer['name']; ?></span></a></label></label>
            </li>
            <?php endforeach; ?>                        
        </ul>
        <?php endif; ?>
    </div>
    <div class="brands">
        <h2><?php echo $category_title; ?></h2>
        <?php if ($categories) : ?>
        <ul>
            <?php $i=0; foreach ($categories as $category) : ?>
            <li>
                <label class="checkbox"><label for="demo_box_<?php echo ++$i; ?>" name="demo_lbl_<?php echo ++$i; ?>" class=""><a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a></label></label>
            </li>
            <?php endforeach; ?>                        
        </ul>
        <?php endif; ?>
    </div>
</div>
<!-- end of left side -->