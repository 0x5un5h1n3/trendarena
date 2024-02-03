<%@ page import="com.ox5un5h1n3.web.trendarena.dao.ProductDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Cart" %>
<!DOCTYPE html>
<html lang="en">



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



<!-- Cart Section Start -->
<section class="cart-section section-b-space">
    <div class="container-fluid-lg">
        <div class="row g-sm-5 g-3">
            <div class="col-xxl-9">
                <div class="cart-table bg-white">
                    <div class="table-responsive-xl">
                        <table class="table">
                            <tbody>
                            <c:forEach items="${cartItems}" var="cartItem">
                                <tr class="product-box-contain">
                                    <td class="product-detail">
                                        <div class="product border-0">
                                            <a href="product-left-thumbnail.html" class="product-image">
                                                <img src="${BASE_URL}assets/images/vegetable/product/1.png"
                                                     class="img-fluid blur-up lazyload" alt="">
                                            </a>
                                            <div class="product-detail">
                                                <ul>
                                                    <li class="name">
                                                        <a href="product-left-thumbnail.html">${cartItem.productName}</a>
                                                    </li>

                                                    <li>
                                                        <h5 class="text-content d-inline-block">Price :</h5>
                                                        <span>${cartItem.productPrice}</span>
                                                        <span class="text-content">${cartItem.discountedPrice}</span>
                                                    </li>

                                                    <li>
                                                        <h5 class="saving theme-color">Saving : 0</h5>
                                                    </li>

                                                    <li class="quantity-price-box">
                                                        <div class="cart_qty">
                                                            <div class="input-group">
                                                                <button type="button" class="btn qty-left-minus" data-type="minus" data-field="">
                                                                    <i class="fa fa-minus ms-0" aria-hidden="true"></i>
                                                                </button>
                                                                <input class="form-control input-number qty-input" type="text" name="quantity" value="0">
                                                                <button type="button" class="btn qty-right-plus" data-type="plus" data-field="">
                                                                    <i class="fa fa-plus ms-0" aria-hidden="true"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <h5>Total: ${cartItem.totalPrice}</h5>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Cart Section End -->

<!-- Tap to top start -->
<div class="theme-option">
    <div class="back-to-top">
        <a id="back-to-top" href="#">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>
</div>
<!-- Tap to top end -->

<!-- Sticky Cart Box Start -->
<div class="sticky-bottom-cart">
    <div class="container-fluid-lg">
        <div class="row">
            <div class="col-12">
                <div class="cart-content">
                    <div class="product-image">
                        <img src="${BASE_URL}assets/images/product/category/1.jpg" class="img-fluid blur-up lazyload"
                             alt="">
                        <div class="content">
                            <h5>Creamy Chocolate Cake</h5>
                            <h6>$32.96<del class="text-danger">$96.00</del><span>55% off</span></h6>
                        </div>
                    </div>
                    <div class="selection-section">
                        <div class="form-group mb-0">
                            <select id="input-state" class="form-control form-select">
                                <option selected disabled>Choose Weight...</option>
                                <option>1/2 KG</option>
                                <option>1 KG</option>
                                <option>1.5 KG</option>
                            </select>
                        </div>
                        <div class="cart_qty qty-box product-qty m-0">
                            <div class="input-group h-100">
                                <button type="button" class="qty-left-minus" data-type="minus" data-field="">
                                    <i class="fa fa-minus" aria-hidden="true"></i>
                                </button>
                                <input class="form-control input-number qty-input" type="text" name="quantity"
                                       value="1">
                                <button type="button" class="qty-right-plus" data-type="plus" data-field="">
                                    <i class="fa fa-plus" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="add-btn">
                        <a class="btn theme-bg-color text-white wishlist-btn" href="wishlist.html"><i
                                class="fa fa-bookmark"></i> Wishlist</a>
                        <a class="btn theme-bg-color text-white" href="cart.html"><i
                                class="fas fa-shopping-cart"></i> Add To Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Sticky Cart Box End -->



<jsp:include page="../frontend/include/other-footer.jsp"/>





<!-- Bg overlay Start -->
<div class="bg-overlay"></div>
<!-- Bg overlay End -->

<jsp:include page="../frontend/include/script_imports.jsp"/>
</body>

</html>