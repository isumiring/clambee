<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Ivan Lubis" />
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>
        <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <?php foreach ($styles as $style) { ?>
        <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <!-- style -->
        <link rel="stylesheet" href="catalog/view/theme/clambee/css/bootstrap.css"/>
        <link rel="stylesheet" href="catalog/view/theme/clambee/css/bootstrap-select.css"/>
        <link rel="stylesheet" href="catalog/view/theme/clambee/css/mega-menu.css"/>
        <link rel="stylesheet" href="catalog/view/theme/clambee/css/flexnav.css" />
        <link rel="stylesheet" href="catalog/view/theme/clambee/css/style.css"/>
        <link rel="stylesheet" href="catalog/view/theme/clambee/css/custom.css"/>
        <!--[if lt IE 9]><link rel="stylesheet" href="css/ie.css"/><![endif]-->
        <!-- style -->

        <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
        <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
        <?php foreach ($scripts as $script) { ?>
        <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>
        <!--[if IE 7]> 
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/clambee/stylesheet/ie7.css" />
        <![endif]-->
        <!--[if lt IE 7]>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/clambee/stylesheet/ie6.css" />
        <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
        <script type="text/javascript">
        DD_belatedPNG.fix('#logo img');
        </script>
        <![endif]-->
        <?php if ($stores) { ?>
        <script type="text/javascript"><!--
          $(document).ready(function() {
            <?php foreach ($stores as $store) { ?>
                $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
            <?php } ?>
        });
        //--></script>
        <?php } ?>
        <?php echo $google_analytics; ?>
    </head>
    <body>
        <div class="main-layout row">

            <!-- HEADER start -->
            <header id="header">
                <?php if (!isset($this->request->get['route']) || $this->request->get['route'] == 'common/home') : ?>
                <div class="header-layout">
                <?php endif; ?>
                    <div class="container header">
                        <nav class="navbar row" role="navigation">
                            <div class="col-md-2 col-sm-4 col-xs-6 header-logo">
                                <div class="navbar-header">
                                    <?php if ($logo) { ?>
                                    <a href="<?php echo $home; ?>" class="logo text-center">
                                        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
                                    </a>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="menu-trigger visible-xs col-sm-6 col-xs-6">
                                <div class="menu-trigger__inner">
                                    <a href="#menu" class="hidden-lg custom-menu-trigger-selector">
                                        <img src="catalog/view/theme/clambee/img/menu-trigger.png" alt=""/> Navigation
                                    </a>
                                </div>
                            </div>
                            <div class="header-menu hidden-sm col-md-10 col-xs-6">
                                <div class="hidden-xs" id="header-nav">
                                    <ul class="main-menu">

                                        <li><a href="<?php echo $home; ?>">Home</a></li>
                                        <!-- list product menu -->
                                        <li>
                                            <a href="#">Products</a>
                                            <?php if ($categories) { ?>
                                            <div>
                                                <div class="main-menu-column">
                                                    <ul>
                                                        <?php foreach ($categories as $category) { ?>
                                                        <li>
                                                            <a href="<?php echo $category['href']; ?>">
                                                                <b>
                                                                    <?php if (isset($category['image']) && $category['image'] != '') : ?>
                                                                    <span class="img-prod">
                                                                        <img src="<?php echo $server_base.'image/'.$category['image']; ?>">
                                                                    </span>
                                                                    <?php endif; ?>
                                                                    <span class="prod"><?php echo $category['name']; ?></span>
                                                                </b>
                                                            </a>
                                                        </li>
                                                        <?php } ?>
                                                    </ul>
                                                </div>
                                            </div>
                                            <?php } ?>
                                        </li>
                                        <!-- end of list product menu -->


                                        <li><a href="#">About</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                    <!-- disabled
                                    <div class="change-local-wrapper">
                                      <div class="change-currency">
                                        <select class="select-currency selectpicker">
                                          <option value="euro">Euro</option>
                                          <option value="pound">Pound</option>
                                          <option value="dollar">US Dollar</option>
                                        </select>
                                      </div>
                                      <div class="change-language">
                                        <select class="select-language selectpicker">
                                          <option value="en">English</option>
                                          <option value="ge">German</option>
                                          <option value="sp">Spain</option>
                                          <option value="ru">Russian</option>
                                        </select>
                                      </div>
                                    </div>
                                    -->
                                    <div class="clear"></div>
                                </div>
                                <div class="search-panel__wrapper">
                                    <div class="search-panel col-md-10 col-sm-8 hidden-xs">
                                        <div class="search-panel__inner">
                                            <div id="search">
                                                <div class="gender-select">
                                                    <select class="selectpicker" name="category_id">
                                                        <option value="">All</option>
                                                        <?php
                                                        if ($categories) {
                                                            foreach ($categories as $category) {
                                                                echo '<option value="'.$category['id'].'">'.$category['name'].'</option>';
                                                            }
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="search-field col-md-7">
                                                    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>"/>
                                                    <!-- disabled
                                                    <div class="search-results">
                                                      <div class="search-results__wrapper">
                                                        <span>87</span> results <span class="clear-results"></span>
                                                      </div>
                                                    </div>
                                                    -->
                                                    <div class="search-button__wrapper">
                                                        <button class="search-button button-search" type="submit">
                                                            <i class="search-button-icon"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="more-links">
                                                <?php if (!$logged) { ?>
                                                <a class="login-panel" href="<?php echo $server_base.'login'; ?>">Log in</a>
                                                <?php } else { ?>

                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget-cart col-md-2 col-xs-12">
                                        <?php echo $cart; ?>
                                    </div>
                                </div>
                            </div>

                            <!-- Header for tablet -->
                            <div class="col-sm-8 header-tablet visible-sm hidden-xs hidden-md hidden-lg">
                                <div class="row">
                                    <div class="catalog-tablet-menu col-sm-3">
                                        <ul data-breakpoint="768" class="flexnav one-page with-js opacity lg-screen">
                                            <li class="item-with-ul catalog-dropdown"><a class="catalog-btn" href="#">Navigation</a>
                                                <ul style="display: block;" class="">
                                                    <li><a href="index.html">Home</a></li>
                                                    <li class="item-with-ul"><a href="categories.html">Products</a>
                                                        <ul style="display: none;" class="">
                                                            <li><a href="category.html">Category 1</a></li>
                                                            <li><a href="category.html">Category 2</a></li>
                                                            <li><a href="category.html">Category 3</a></li>
                                                        </ul>
                                                    <li><a href="about.html">About</a></li>
                                                    <li><a href="contact.html">Contact</a></li>

                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="widget-cart col-sm-3 col-xs-3">
                                        <a href="#" class="dropdown-toggle items-cart" data-toggle="dropdown">
                                            <div class="items-cart__inner">
                                                <span class="cart-amount">$945.99</span>
                                                <span class="items-counter"><i class="num-counter">2</i>&nbsp; items</span>
                                                <div class="cart-icon"></div>
                                            </div>
                                        </a>
                                        <ul class="dropdown-menu cart-dropdown">  
                                            <li class="title"><h5>Your Shopping Cart</h5></li>
                                            <li class="product-list">
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <a href="product.html">Boom Snowboard Jacket</a>
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
                                                    <a href="product.html">Helium Insulator Sno ...</a>
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
                                                    <a href="product.html">2L GORE-TEX® Murdoc ...</a>
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <span>$21.00</span>
                                                </div>
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <a href="#" class=""><span class="glyphicon text-right glyphicon-remove"></span></a>
                                                </div>
                                            </li>
                                            <li class="cart-button">
                                                <a href="#" class="btn btn-primary">View cart</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="change-local-wrapper col-sm-3">
                                        <div class="change-currency">
                                            <select class="select-currency selectpicker">
                                                <option value="euro">Euro</option>
                                                <option value="pound">Pound</option>
                                                <option value="dollar">US Dollar</option>
                                            </select>
                                        </div>
                                        <div class="change-language">
                                            <select class="select-language selectpicker">
                                                <option value="en">English</option>
                                                <option value="ge">German</option>
                                                <option value="sp">Spain</option>
                                                <option value="ru">Russian</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 more-links">
                                        <a class="login-panel" href="login.html">Log in</a>
                                        <a class="wish-list" href="01_superduper_home_6.html">Wish list(<span>12</span>)</a>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="search-panel hidden-xs">

                                        <div class="search-panel__inner">

                                            <div class="search-field  col-sm-12">
                                                <input type="text" placeholder="I want ____"/>
                                                <div class="search-results">
                                                    <div class="search-results__wrapper">
                                                        <span>87</span> results <span class="clear-results"></span>
                                                    </div>
                                                </div>
                                                <div class="search-button__wrapper">
                                                    <button class="search-button" type="submit">
                                                        <i class="search-button-icon"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- Header for tablet -->
                        </nav>
                        <?php if (!isset($this->request->get['route']) || $this->request->get['route'] == 'common/home') : ?>
                        <article class="col-md-6 col-sm-8 col-xs-12">
                            <h1>
                                <strong>Adipiscing sed egestas, et nisi</strong><br/>
                            </h1>
                            <p>
                                Adipiscing sed egestas, et nisi. Sed, amet magna! Ac. Hac enim nec purus ultrices massa pellentesque pulvinar urna elementum lacus? Massa augue phasellus ut
                            </p>
                        </article>
                        <?php endif; ?>
                    </div>
                <?php if (!isset($this->request->get['route']) || $this->request->get['route'] == 'common/home') : ?>
                </div>
                <?php endif; ?>
            </header>        
            <!-- HEADER end -->
            <div class="container content <?php if (isset($this->request->get['route']) || $this->request->get['route'] != 'common/home') echo 'internal-pages'; ?>">
