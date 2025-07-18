<jsp:include page="header.jsp"></jsp:include>
<!--/breadcrumbs -->
<div class="w3l-breadcrumbs">
    <nav id="breadcrumbs" class="breadcrumbs">
        <div class="container page-wrapper">
            <a href="/">Home</a> >> <span class="breadcrumb_last" aria-current="page"> Register</span>
        </div>
    </nav>
</div>
<!--//breadcrumbs -->
<!-- contact1 -->
<section class="w3l-contact-1">
    <div class="contacts-9 py-5">
        <div class="container py-lg-4">
            <div class="headerhny-title text-center">
                <h4 class="sub-title text-center">Register</h4>
            </div>
            <div class="contact-view mt-lg-5 mt-4">
                <div class="conhny-form-section">
                    <form action="register" method="post" class="formhny-sec">
                        <div class="form-grids">
                            <div class="form-input">
                                <input type="text" name="uname" placeholder="Enter your name*" required="" />
                            </div>
                            <div class="form-input">
                                <input type="text" list="genders" name="gender" placeholder="Gender" required/>
                                <datalist id="genders">
                                    <option>Male</option>
                                    <option>Female</option>
                                    <option>Prefer Not to Say</option>
                                </datalist>
                            </div>
                            <div class="form-input">
                                <input type="email" name="email" id="w3lSender" placeholder="Enter your email*"
                                       required />
                            </div>
                            <div class="form-input">
                                <input type="text" maxlength="10" name="phone" id="w3lPhone" placeholder="Enter your phone number*"
                                       required />
                            </div>
                            <div class="form-input">
                                <input type="password" name="pwd" id="w3lSender" placeholder="Enter your password*"
                                       required />
                            </div>
                            <div class="form-input">
                                <input type="password" name="cpwd" id="w3lPhone" placeholder="Confirm your password*"
                                       required />
                            </div>
                        </div>

                        <div class="submithny text-right mt-4">
                            <button class="btn read-button">Register Now</button>
                        </div>
                    </form>
                    <jsp:include page="msg.jsp"></jsp:include>
                </div>

                <div class="d-grid contact-addres-inf mt-5 pt-lg-4">
                    <div class="contact-info-left d-grid">
                        <div class="contact-info">
                            <div class="icon">
                                <span class="fa fa-location-arrow" aria-hidden="true"></span>
                            </div>
                            <div class="contact-details">
                                <h4>Address:</h4>
                                <p>Big Cinemas, New York, USA</p>
                            </div>
                        </div>
                        <div class="contact-info">
                            <div class="icon">
                                <span class="fa fa-phone" aria-hidden="true"></span>
                            </div>
                            <div class="contact-details">
                                <h4>Phone:</h4>
                                <p><a href="tel:+598-658-456">+91 9811763737</a></p>
                                <p><a href="tel:+598-658-457">+91 8053431608</a></p>
                            </div>
                        </div>
                        <div class="contact-info">
                            <div class="icon">
                                <span class="fa fa-envelope-open-o" aria-hidden="true"></span>
                            </div>
                            <div class="contact-details">
                                <h4>Mail:</h4>
                                <p><a href="mailto:mail@example.com" class="email">info@bigcinemas.com</a></p>
                                <p><a href="mailto:mail@example.com" class="email">bigcinemas@support.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /contact1 -->
<jsp:include page="footer.jsp"></jsp:include>