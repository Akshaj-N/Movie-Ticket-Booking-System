<jsp:include page="header.jsp"></jsp:include>
<!--/breadcrumbs -->
<div class="w3l-breadcrumbs">
    <nav id="breadcrumbs" class="breadcrumbs">
        <div class="container page-wrapper">
            <a href="/">Home</a> >> <span class="breadcrumb_last" aria-current="page">Login</span>
        </div>
    </nav>
</div>
<!--//breadcrumbs -->
<!-- contact1 -->
<section class="w3l-contact-1">
    <div class="contacts-9 py-5">
        <div class="container py-lg-4">
            <div class="headerhny-title text-center">
                <h4 class="sub-title text-center">Welcome to Big Cinemas</h4>
                <br>
                <h3 class="hny-title mb-0">Login</h3>                
            </div>
            <div class="contact-view mt-lg-5 mt-4" style="width:500px;margin:auto;">
                <div class="conhny-form-section">
                    <form method="post" class="formhny-sec">
                        
                        <div class="form-input mt-4">
                            <input type="text" name="userid" id="w3lName" placeholder="Enter email*" required="" />
                        </div>
                        <div class="form-input mt-4">
                            <input type="password" name="pwd" id="w3lName" placeholder="Enter password*" required="" />
                        </div>
                        <div class="submithny text-right mt-4">
                            <button class="btn read-button">Login</button>
                        </div>
                    </form>
                    <jsp:include page="msg.jsp"></jsp:include>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /contact1 -->
<jsp:include page="footer.jsp"></jsp:include>