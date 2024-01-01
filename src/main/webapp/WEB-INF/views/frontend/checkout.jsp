<%@ page import="com.ox5un5h1n3.web.trendarena.dao.ProductDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
<!DOCTYPE html>
<html lang="en">

<%
    User user = (User) session.getAttribute("userLogged");
    if (user == null) {
        response.sendRedirect(request.getContextPath()+"/login");
        return;
    } else {
        if (user.getUserType().toString().equals("ADMIN")) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
    }
%>

<%
    String cat=request.getParameter("category");

    ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
    List<Product> list=null;

    if(cat==null ||cat.trim().equals("all")) {
        list =dao.getAllProducts();
    }
    else{
        int cid=Integer.parseInt(cat.trim());
        list=dao.getAllProductsById(cid);
    }

    CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
    List<Category> clist = cdao.getCategories();
%>

<jsp:include page="../frontend/include/product-header.jsp"/>

<body class="theme-color-5 bg-gradient-color">

<!-- Checkout section Start -->
<section class="checkout-section-2 section-b-space">
    <div class="container-fluid-lg">
        <div class="row g-sm-4 g-3">
            <div class="col-lg-8">
                <div class="left-sidebar-checkout">
                    <div class="checkout-detail-box">
                        <ul>
                            <li>
                                <div class="checkout-icon">
                                    <lord-icon target=".nav-item" src="https://cdn.lordicon.com/ggihhudh.json"
                                               trigger="loop-on-hover"
                                               colors="primary:#121331,secondary:#646e78,tertiary:#0baf9a"
                                               class="lord-icon">
                                    </lord-icon>
                                </div>
                                <div class="checkout-box">
                                    <div class="checkout-title">
                                        <h4>Delivery Address</h4>
                                    </div>

                                    <div class="checkout-detail">
                                        <div class="row g-4">
                                            <div class="col-xxl-6 col-lg-12 col-md-6">
                                                <div class="delivery-address-box">
                                                    <div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="jack"
                                                                   id="flexRadioDefault1">
                                                        </div>

                                                        <div class="label">
                                                            <label>Home</label>
                                                        </div>

                                                        <ul class="delivery-address-detail">
                                                            <li>
                                                                <h4 class="fw-500">My Name</h4>
                                                            </li>

                                                            <li>
                                                                <p class="text-content"><span
                                                                        class="text-title">Address
                                                                            : </span>8424 Area 51, USA</p>
                                                            </li>

                                                            <li>
                                                                <h6 class="text-content"><span
                                                                        class="text-title">Post Code
                                                                            :</span> 1234</h6>
                                                            </li>

                                                            <li>
                                                                <h6 class="text-content mb-0"><span
                                                                        class="text-title">Phone
                                                                            :</span> + 123 456 7890</h6>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="checkout-icon">
                                    <lord-icon target=".nav-item" src="https://cdn.lordicon.com/oaflahpk.json"
                                               trigger="loop-on-hover" colors="primary:#0baf9a" class="lord-icon">
                                    </lord-icon>
                                </div>
                            </li>

                            <li>
                                <div class="checkout-icon">
                                    <lord-icon target=".nav-item" src="https://cdn.lordicon.com/qmcsqnle.json"
                                               trigger="loop-on-hover" colors="primary:#0baf9a,secondary:#0baf9a"
                                               class="lord-icon">
                                    </lord-icon>
                                </div>
                                <div class="checkout-box">
                                    <div class="checkout-title">
                                        <h4>Payment Option</h4>
                                    </div>

                                    <div class="checkout-detail">
                                        <div class="accordion accordion-flush custom-accordion"
                                             id="accordionFlushExample">
                                            <div class="accordion-item">
                                                <div class="accordion-header" id="flush-headingFour">
                                                    <div class="accordion-button collapsed"
                                                         data-bs-toggle="collapse"
                                                         data-bs-target="#flush-collapseFour">
                                                        <div class="custom-form-check form-check mb-0">
                                                            <label class="form-check-label" for="cash"><input
                                                                    class="form-check-input mt-0" type="radio"
                                                                    name="flexRadioDefault" id="cash" checked> Cash
                                                                On Delivery</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="flush-collapseFour"
                                                     class="accordion-collapse collapse show"
                                                     data-bs-parent="#accordionFlushExample">
                                                    <div class="accordion-body">
                                                        <p class="cod-review">Payment method where goods are delivered
                                                            before payment is made, usually upon receipt of the product.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="accordion-item">
                                                <div class="accordion-header" id="flush-headingOne">
                                                    <div class="accordion-button collapsed"
                                                         data-bs-toggle="collapse"
                                                         data-bs-target="#flush-collapseOne">
                                                        <div class="custom-form-check form-check mb-0">
                                                            <label class="form-check-label" for="credit"><input
                                                                    class="form-check-input mt-0" type="radio"
                                                                    name="flexRadioDefault" id="credit">
                                                                Credit or Debit Card</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="flush-collapseOne" class="accordion-collapse collapse"
                                                     data-bs-parent="#accordionFlushExample">
                                                    <div class="accordion-body">
                                                        <div class="row g-2">
                                                            <div class="col-12">
                                                                <div class="payment-method">
                                                                    <div
                                                                            class="form-floating mb-lg-3 mb-2 theme-form-floating">
                                                                        <input type="text" class="form-control"
                                                                               id="credit2"
                                                                               placeholder="Enter Credit & Debit Card Number">
                                                                        <label for="credit2">Enter Credit & Debit
                                                                            Card Number</label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-xxl-4">
                                                                <div
                                                                        class="form-floating mb-lg-3 mb-2 theme-form-floating">
                                                                    <input type="text" class="form-control"
                                                                           id="expiry" placeholder="Enter Expiry Date">
                                                                    <label for="expiry">Expiry Date</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-xxl-4">
                                                                <div
                                                                        class="form-floating mb-lg-3 mb-2 theme-form-floating">
                                                                    <input type="text" class="form-control" id="cvv"
                                                                           placeholder="Enter CVV Number">
                                                                    <label for="cvv">CVV Number</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-xxl-4">
                                                                <div
                                                                        class="form-floating mb-lg-3 mb-2 theme-form-floating">
                                                                    <input type="password" class="form-control"
                                                                           id="password" placeholder="Enter Password">
                                                                    <label for="password">Password</label>
                                                                </div>
                                                            </div>

                                                            <div class="button-group mt-0">
                                                                <ul>
                                                                    <li>
                                                                        <button
                                                                                class="btn btn-light shopping-button">Cancel</button>
                                                                    </li>

                                                                    <li>
                                                                        <button class="btn btn-animation">Use This
                                                                            Card</button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="right-side-summery-box">
                    <div class="summery-box-2">
                        <div class="summery-header">
                            <h3>Order Summery</h3>
                        </div>

                        <ul class="summery-contain">
                            <li>
                                <img src="${BASE_URL}assets/images//1.png"
                                     class="img-fluid blur-up lazyloaded checkout-image" alt="">
                                <h4>Item Name<span>X 1</span></h4>
                                <h4 class="price">$32.34</h4>
                            </li>

                        </ul>

                        <ul class="summery-total">
                            <li>
                                <h4>Subtotal</h4>
                                <h4 class="price">$111.81</h4>
                            </li>

                            <li>
                                <h4>Shipping</h4>
                                <h4 class="price">$8.90</h4>
                            </li>



                            <li class="list-total">
                                <h4>Total (USD)</h4>
                                <h4 class="price">$19.28</h4>
                            </li>
                        </ul>
                    </div>


                    <button class="btn theme-bg-color text-white btn-md w-100 mt-4 fw-bold">Place Order</button>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Checkout section End -->

<!-- Tap to top start -->
<div class="theme-option">
    <div class="back-to-top">
        <a id="back-to-top" href="#">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>
</div>
<!-- Tap to top end -->




<jsp:include page="../frontend/include/other-footer.jsp"/>





<!-- Bg overlay Start -->
<div class="bg-overlay"></div>
<!-- Bg overlay End -->

<jsp:include page="../frontend/include/script_imports.jsp"/>
</body>

</html>