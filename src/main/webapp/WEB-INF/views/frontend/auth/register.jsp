<%@taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<layout:extends name="other-base">
    <layout:put block="contents">
        <!-- register section start -->
        <section class="log-in-section section-b-space">
            <div class="container-fluid-lg w-100">
                <div class="row">
                    <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                        <div class="image-contain">
                            <img src="${BASE_URL}assets/images/inner-page/sign-up.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-xxl-4 col-xl-5 col-lg-6 col-sm-8 mx-auto">
                        <div class="log-in-box">
                            <div class="log-in-title">
                                <h3>Welcome To TrendArena</h3>
                                <h4>Create New Account</h4>
                            </div>

                            <div class="input-box">
                                <form class="row g-4">
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="text" class="form-control" id="full_name" placeholder="Full Name">
                                            <label for="full_name">Full Name</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="email" class="form-control" id="email" placeholder="Email Address">
                                            <label for="email">Email Address</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating">
                                            <input type="password" class="form-control" id="password"
                                                   placeholder="Password">
                                            <label for="password">Password</label>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="forgot-box">
                                            <div class="form-check ps-0 m-0 remember-box">
                                                <input class="checkbox_animated check-box" type="checkbox"
                                                       id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">I agree with
                                                    <span>Terms</span> and <span>Privacy</span></label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                            <a href="#" class="btn btn-animation w-100 register" type="">Sign Up</a>
<%--                                        <button class="btn btn-animation w-100 sign-up" >Sign Up</button>--%>
                                    </div>
                                </form>
                            </div>



                            <div class="sign-up-box">
                                <h4>Already have an account?</h4>
                                <a href="${BASE_URL}login">Log In</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-7 col-xl-6 col-lg-6"></div>
                </div>
            </div>
        </section>
        <!-- register section end -->

    </layout:put>

      <layout:put block="script">
        <script type="text/javascript">
            document.getElementsByClassName('register').item(0).addEventListener('click', function (){
                let name = document.getElementById('full_name').value;
                let email = document.getElementById('email').value;
                let password = document.getElementById('password').value;

                if(name.trim() === '' || email.trim() === '' || password.trim() === ''){ alert("Please fill in all fields."); return; }

                // Password length validation
                if (password.length <= 4) {
                    alert("Password must be longer than 4 characters");
                    return;
                }

                // Email validation
                if (!isValidEmail(email)) {
                    alert("Invalid email address");
                    return;
                }

                fetch(`${BASE_URL}register`, {
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        name: name,
                        email: email,
                        password: password
                    })
                }).then(response => response.text())
                    .then((text) => {
                        if (text === "success") {
                            alert("Register Successful");
                            document.location.reload();
                        } else {
                            alert(text);
                        }
                    });

            });

            function isValidEmail(email) {
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailRegex.test(email);
            }
        </script>
      </layout:put>


</layout:extends>