<!-- FOOTER start -->
<div class="row">
    <footer id="footer">
        <div class="row">
            <div class="footer-col col-md-3 col-sm-6 col-xs-12">
                <nav role="footer-category">
                    <h4>Category</h4>
                    <ul>
                        <?php foreach ($categories as $category) : ?>
                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </nav>
            </div>

            <div class="footer-col col-md-3 col-sm-6 col-xs-12">
                <nav role="footer-customer-service">
                    <h4>Customer Service</h4>
                    <ul>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="#">My Order</a></li>
                        <li><a href="#">Orders And Returns</a></li>
                        <li><a href="#">Contacts</a></li>
                        <li><a href="#">Site Map</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer-col col-md-3 col-sm-6 col-xs-12">
                <nav role="footer-my-account">
                    <h4>My account</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Your Account</a></li>
                        <li><a href="#">Address Book</a></li>
                        <li><a href="#">Product Reviews</a></li>
                    </ul>
                </nav>
            </div>
            <div class="footer-col col-md-3 col-sm-6 col-xs-12">
                <div class="newsletter">
                    <h4>Newsletter</h4>
                    <p>
                        Join thousands of other people subscribe to our news
                    </p>
                    <div class="email-subscribe">
                        <div class="field-wrapper">
                            <input type="email" placeholder="Input your email"/>
                            <button type="submit">
                                <img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAAKCAYAAAEPy3SbAAAACXBIWXMAAAsTAAALEwEAmpwYAAABNmlDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjarY6xSsNQFEDPi6LiUCsEcXB4kygotupgxqQtRRCs1SHJ1qShSmkSXl7VfoSjWwcXd7/AyVFwUPwC/0Bx6uAQIYODCJ7p3MPlcsGo2HWnYZRhEGvVbjrS9Xw5+8QMUwDQCbPUbrUOAOIkjvjB5ysC4HnTrjsN/sZ8mCoNTIDtbpSFICpA/0KnGsQYMIN+qkHcAaY6addAPAClXu4vQCnI/Q0oKdfzQXwAZs/1fDDmADPIfQUwdXSpAWpJOlJnvVMtq5ZlSbubBJE8HmU6GmRyPw4TlSaqo6MukP8HwGK+2G46cq1qWXvr/DOu58vc3o8QgFh6LFpBOFTn3yqMnd/n4sZ4GQ5vYXpStN0ruNmAheuirVahvAX34y/Axk/96FpPYgAAACBjSFJNAAB6JQAAgIMAAPn/AACA6AAAUggAARVYAAA6lwAAF2/XWh+QAAAAz0lEQVR42mL4////Uob/////BwAAAP//Yvj//z8DEwMDAwMAAAD//2L8////fwYGBgYAAAAA//9ihNIMTAwMDP8ZGBiiGP7//2/z//9/BgAAAAD//4Kp+cvAwMDOwMDwl4kBApgZGBgOMzAwMAAAAAD//2L4//8/D8xchv8QUIesl4GBgeEjMkeJ4f////dgegAAAAD//4Lpuff//39LmCC6JDI4/P//f0V0C5DBFwYGhixknX/+///f+P//f2ZkY1f8//+fH92+////MwAGAJ+8qntB0yI9AAAAAElFTkSuQmCC" />
                            </button>
                        </div>
                    </div>
                    <div class="social-links">
                        <ul>
                            <li id="facebook"><a title="facebook" href="#"></a></li>
                            <li id="twitter"><a title="twitter" href="#"></a></li>
                            <li id="google-plus"><a title="google-plus" href="#"></a></li>
                            <li id="tumblr"><a title="tumblr" href="#"></a></li>
                            <li id="youtube"><a title="youtube" href="#"></a></li>
                            <li id="instagram"><a title="instagram" href="#"></a></li>
                            <li id="rss"><a title="rss" href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="footer-copyright__inner  col-xs-12 col-sm-12 col-md-12">
                <div class="powered-by text-left">
                    Copyright &copy 2014. Clambee.com
                </div>

            </div>
        </div>
    </footer>
</div>
<!-- FOOTER start -->
</div>
</div>
<!--<script type="text/javascript" src="catalog/view/theme/clambee/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="catalog/view/theme/clambee/js/jquery-ui-1.10.1.custom.js"></script>-->
<script type="text/javascript" src="catalog/view/theme/clambee/js/bootstrap.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/clambee/js/bootstrap-select.js"></script>
<script type="text/javascript" src="catalog/view/theme/clambee/js/jquery.flexnav.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/clambee/js/jquery.jpanelmenu.min.js"></script>

<!--[if lt IE 9]>
<script src="catalog/view/theme/clambee/js/css3-mediaqueries.js"></script>
<script src="catalog/view/theme/clambee/js/html5shiv.js"></script>
<script src="catalog/view/theme/clambee/js/html5shiv-printshiv.js"></script>
<![endif]-->
<script>
    $(function() {
        "use strict";
        $(".flexnav").flexNav({'animationSpeed': 'fast'});
    });
    $(function() {
        "use strict";
        $('.tree-toggler').click(function() {
            $(this).toggleClass('default open');
            $(this).parent().children('ul.tree').toggle(300);
        });
    });
    $(function() {
        "use strict";
        $('.selectpicker').selectpicker();
    });
    /*$(function() {
        "use strict";
        var jPM = $.jPanelMenu();
        jPM.on();
    });*/
</script>
</body>
</html>