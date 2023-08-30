<%@taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<layout:extends name="base">
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
                      <input type="text" class="form-control" id="fullname" placeholder="Full Name">
                      <label for="fullname">Full Name</label>
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
                    <button class="btn btn-animation w-100 sign-up" type="submit">Sign Up</button>
                  </div>
                </form>
              </div>

              <div class="other-log-in">
                <h6>or</h6>
              </div>

              <div class="log-in-button">
                <ul>
                  <li>
                    <a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin"
                       class="btn google-button w-100">
                      <img src="${BASE_URL}assets/images/inner-page/google.png" class="blur-up lazyload"
                           alt="">
                      Sign up with Google
                    </a>
                  </li>
                  <li>
                    <a href="https://www.facebook.com/" class="btn google-button w-100">
                      <img src="${BASE_URL}assets/images/inner-page/facebook.png" class="blur-up lazyload"
                           alt=""> Sign up with Facebook
                    </a>
                  </li>
                </ul>
              </div>

              <div class="other-log-in">
                <h6></h6>
              </div>

              <div class="sign-up-box">
                <h4>Already have an account?</h4>
                <a href="login.html">Log In</a>
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
      document.getElementsByClassName('sign-up').item(0).addEventListener('click', function (){
        let email = document.getElementById('email').value;
        let password = document.getElementById('password').value;
        console.log(email)

          fetch('${BASE_URL}register',{
            method:'post',
            headers:{'Content-Type': 'application/json',
            },
            body:JSON.stringify({
              email:email,
              password:password
          })
        }).then(response => Text()).then(Text => console.log(text))
      });
    </script>
  </layout:put>
</layout:extends>