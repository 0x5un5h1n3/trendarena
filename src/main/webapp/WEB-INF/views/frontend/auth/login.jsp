<%@taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<layout:extends name="other-base">
    <layout:put block="contents">
        <!-- log in section start -->
        <section class="log-in-section background-image-2 section-b-space">
            <div class="container-fluid-lg w-100">
                <div class="row">
                    <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                        <div class="image-contain">
                            <img src="${BASE_URL}assets/images/inner-page/log-in.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-xxl-4 col-xl-5 col-lg-6 col-sm-8 mx-auto">
                        <div class="log-in-box">
                            <div class="log-in-title">
                                <h3>Welcome To TrendArena</h3>
                                <h4>Log In Your Account</h4>
                            </div>

                            <div class="input-box">
                                <form class="row g-4">
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating log-in-form">
                                            <input type="email" class="form-control" id="login_email" placeholder="Email Address">
                                            <label for="login_email">Email Address</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating log-in-form">
                                            <input type="password" class="form-control" id="login_password"
                                                   placeholder="Password">
                                            <label for="login_password">Password</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="forgot-box">
                                            <div class="form-check ps-0 m-0 remember-box">
                                                <input class="checkbox_animated check-box" type="checkbox"
                                                       id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">Remember me</label>
                                            </div>
                                            <a href="${BASE_URL}forgot-password" class="forgot-password">Forgot Password?</a>
                                        </div>
                                    </div>

                                    <div class="col-12">
<%--                                        <button class="btn btn-animation w-100 justify-content-center" type="submit">Log</button>--%>
                                            <a href="#" class="btn btn-animation w-100 login" type="">Sign In</a>

                                    </div>
                                </form>
                            </div>

                            <div class="sign-up-box">
                                <h4>Don't have an account?</h4>
                                <a href="${BASE_URL}register">Sign Up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- log in section end -->
    </layout:put>


    <layout:put block="script">
        <script type="text/javascript">
            document.getElementsByClassName('login').item(0).addEventListener('click', function () {
                let email = document.getElementById("login_email").value;
                let password = document.getElementById("login_password").value;


                fetch('login', {
                    headers: {
                        'Content-type': 'application/json'
                    },
                    method: "POST",
                    body: JSON.stringify({
                        email: email,
                        password: password,
                    }),
                })
                    .then(response => response.text())
                    .then((text) => {
                        if (text === "success") {
                            // alert("Login Successful");
                            document.location.href = ${BASE_URL};
                        }else if(text === "admin-login-success"){
                            document.location.href = ${BASE_URL}+"admin";
                        } else {
                            alert(text);

                        }
                    });

            });
        </script>
    </layout:put>

</layout:extends>