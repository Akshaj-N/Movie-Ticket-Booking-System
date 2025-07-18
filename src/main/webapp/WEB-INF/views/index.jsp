<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="header.jsp"></jsp:include>
<!-- main-slider -->
        <section class="w3l-main-slider position-relative" id="home">
            <div class="companies20-content">
                <div class="owl-one owl-carousel owl-theme">
                   <c:forEach items="${list }" var="m">
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view bg bg2" style="background: url('${m.banner}') no-repeat;background-size:100% 100%;">
                                <div class="banner-info">
                                <h3>${m.mname}</h3>
                                    <p>${m.descr}.</span></p>
                                    <a href="trailer/${m.mid}" class="play-view1">
                                        <span class="video-play-icon">
                                            <span class="fa fa-play"></span>
                                        </span>
                                        <h6>Watch Trailer</h6>
                                    </a>
                                    <!-- dialog itself, mfp-hide class is required to make dialog hidden -->
                                    <div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
                                        ${m.trailer}
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!-- //banner-slider-->
        <!-- main-slider -->
        <!--grids-sec1-->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-3">
                    <div class="headerhny-title">
                        <div class="w3l-title-grids">
                            <div class="headerhny-left">
                                <h3 class="hny-title">Top Picks</h3>
                            </div>
                            <div class="headerhny-right text-lg-right">
                                <h4><a class="show-title" href="/movielist">Show all</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="w3l-populohny-grids">
                    <c:forEach items="${list }" var="m">
                        <div class="item vhny-grid">
                            <div class="box16">
                            <a href="mdetails/${m.mid }">
                                    <figure>
                                        <img class="img-fluid" style="height:350px;" src="/${m.poster }" alt="">
                                    </figure>
                                    <div class="box-content">
                                        <h3 class="title">${m.mname }</h3>
                                        
                                    </div>
                                    <span class="fa fa-play video-icon" aria-hidden="true"></span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!--//grids-sec1-->
        <!--grids-sec2-->
        <section class="w3l-grids">
            <div class="grids-main py-5">
                <div class="container py-lg-3">
                    <div class="headerhny-title">
                        <div class="w3l-title-grids">
                            <div class="headerhny-left">
                                <h3 class="hny-title">Trending Now</h3>
                            </div>
                            <div class="headerhny-right text-lg-right">
                                <h4><a class="show-title" href="/movielist">Show all</a></h4>
                            </div>
                        </div>
                    </div>
                    <div class="owl-three owl-carousel owl-theme">
                        <!-- start of movie -->
                        <c:forEach items="${list }" var="m">
                        <div class="item vhny-grid">
                            <div class="box16 mb-0">
                            <a href="mdetails/${m.mid }">
                                    <figure>
                                        <img class="img-fluid" style="height:350px;" src="/${m.poster }" alt="">
                                    </figure>
                                    <div class="box-content">
                                        <h3 class="title">${m.mname }</h3>
                                        <h4> <span class="post"><span class="fa fa-clock-o"> </span> 1 Hr 4min

                                            </span>

                                            <span class="post fa fa-heart text-right"></span>
                                        </h4>
                                    </div>
                                    <span class="fa fa-play video-icon" aria-hidden="true"></span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                        <!-- end of movie -->
                        
                       
                    </div>
                </div>

            </div>
        </section>
        
        
 <jsp:include page="footer.jsp"></jsp:include>