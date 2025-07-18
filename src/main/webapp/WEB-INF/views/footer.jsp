        <!-- footer-66 -->
        <footer class="w3l-footer">
            <section class="footer-inner-main">
                <div class="footer-hny-grids py-5">
                    <div class="container py-lg-4">
                        <div class="text-txt">
                            <div class="right-side">
                                <div class="row footer-about">
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <img class="img-fluid" src="assets/images/banner1.jpg"
                                                                  alt="">
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <img class="img-fluid" src="assets/images/banner2.jpg"
                                                                  alt="">
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <img class="img-fluid" src="assets/images/banner3.jpg"
                                                                  alt="">
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <img class="img-fluid" src="assets/images/banner4.jpg"
                                                                  alt="">
                                    </div>
                                </div>
                                <div class="row footer-links">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <div class="below-section">
                    <div class="container">
                        <div class="copyright-footer">
                            <div class="columns text-lg-left">
                                <p>&copy; 2023 Big Cinemas</p>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- copyright -->
                <!-- move top -->
                <button onclick="topFunction()" id="movetop" title="Go to top">
                    <span class="fa fa-arrow-up" aria-hidden="true"></span>
                </button>
                <script>
                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("movetop").style.display = "block";
                        } else {
                            document.getElementById("movetop").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                <!-- /move top -->

            </section>
        </footer>
        <!--//footer-66 -->
    </body>

</html>
<!-- responsive tabs -->
<script src="/assets/js/jquery-1.9.1.min.js"></script>
<script src="/assets/js/easyResponsiveTabs.js"></script>
<script type="text/javascript">
                          $(document).ready(function () {
                              //Horizontal Tab
                              $('#parentHorizontalTab').easyResponsiveTabs({
                                  type: 'default', //Types: default, vertical, accordion
                                  width: 'auto', //auto or any width like 600px
                                  fit: true, // 100% fit in a container
                                  tabidentify: 'hor_1', // The tab groups identifier
                                  activate: function (event) { // Callback function if tab is switched
                                      var $tab = $(this);
                                      var $info = $('#nested-tabInfo');
                                      var $name = $('span', $info);
                                      $name.text($tab.text());
                                      $info.show();
                                  }
                              });
                          });
</script>  
<!-- //responsive tabs -->
<!--/theme-change-->
<script src="/assets/js/theme-change.js"></script>
<!-- //theme-change-->
<script src="/assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
                            $(document).ready(function () {
                                $('.owl-one').owlCarousel({
                                    stagePadding: 280,
                                    loop: true,
                                    margin: 20,
                                    nav: true,
                                    responsiveClass: true,
                                    autoplay: true,
                                    autoplayTimeout: 5000,
                                    autoplaySpeed: 1000,
                                    autoplayHoverPause: false,
                                    responsive: {
                                        0: {
                                            items: 1,
                                            stagePadding: 40,
                                            nav: false
                                        },
                                        480: {
                                            items: 1,
                                            stagePadding: 60,
                                            nav: true
                                        },
                                        667: {
                                            items: 1,
                                            stagePadding: 80,
                                            nav: true
                                        },
                                        1000: {
                                            items: 1,
                                            nav: true
                                        }
                                    }
                                })
                            })
</script>
<!-- //script -->
<script>
    $(document).ready(function () {
        $('.owl-three').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 2,
                    nav: false
                },
                480: {
                    items: 2,
                    nav: true
                },
                667: {
                    items: 3,
                    nav: true
                },
                1000: {
                    items: 5,
                    nav: true
                }
            }
        })
    })
</script>
<!-- //script -->
<!-- /mid-script -->
<script>
    $(document).ready(function () {
        $('.owl-mid').owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- //mid-script -->

<!-- script for owlcarousel -->
<!-- Template JavaScript -->
<script src="/assets/js/jquery.magnific-popup.min.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

        $('.popup-with-move-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-slide-bottom'
        });
    });
</script>
<!--//-->
<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>
<!--//MENU-JS-->

<script src="/assets/js/bootstrap.min.js"></script>