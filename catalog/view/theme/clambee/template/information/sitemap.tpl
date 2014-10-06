<?php echo $header; ?>
<div class="product-catalog row information-page">
    <div class="col-md-12">
        <h1><?php echo $heading_title; ?></h1>
        <ul>
            <?php foreach ($categories as $category_1) { ?>
            <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
                <?php if ($category_1['children']) { ?>
                <ul>
                    <?php foreach ($category_1['children'] as $category_2) { ?>
                    <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                        <?php if ($category_2['children']) { ?>
                        <ul>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                            <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>
    </div>
    <div class="col-md-12" style="margin: 20px 0;">
        <a href="<?php echo $continue; ?>" class="btn btn-inverse"><?php echo $button_continue; ?></a>
    </div>
</div>
<?php echo $footer; ?>
