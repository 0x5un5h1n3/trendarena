<%@ page import="com.ox5un5h1n3.web.trendarena.dao.ProductDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<!DOCTYPE html>
<html lang="en">

<%
    String cat = request.getParameter("category");

    ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
    List<Product> list = null;

    if (cat == null || cat.trim().equals("all")) {
        list = dao.getAllProducts();
    } else {
        int cid = Integer.parseInt(cat.trim());
        list = dao.getAllProductsById(cid);
    }

    CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
    List<Category> clist = cdao.getCategories();
%>

<jsp:include page="../frontend/include/product-header.jsp"/>

<body class="theme-color-5 bg-gradient-color">

<!-- Product Left Sidebar Start -->
<section class="product-section">
    <div class="container-fluid-lg">
        <div class="row">
            <div class="col-xxl-9 col-xl-8 col-lg-7 wow fadeInUp">
                <div class="row g-4">
                    <div class="col-xl-6 wow fadeInUp">
                        <div class="product-left-box">
                            <div class="row g-2">
                                <div class="col-12">
                                    <div class="product-main-1 no-arrow">
                                        <div>
                                            <%
                                                Product p = (Product) request.getAttribute("product");
                                                String imagePath = application.getContextPath() + "/img/products/" + p.getpPhoto();
                                            %>
                                            <img src="<%= imagePath %>" alt="<%= imagePath %>"
                                                 style="width: 75%;"/>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="col-xl-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="right-box-contain">
                            <h6 class="offer-top"><%=p.getpDiscount()%>% Off</h6>
                            <h2 class="name"><%=p.getpName()%>
                            </h2>
                            <div class="price-rating">
                                <h3 class="theme-color price">$<%=p.getDiscountedPrice()%>
                                    <del class="text-content">$<%=p.getpPrice()%>
                                    </del>
                                    <span
                                            class="offer theme-color">(<%=p.getpDiscount()%>% off)</span></h3>

                            </div>

                            <div class="procuct-contain">
                                <p><%=p.getpDesc()%>
                                </p>
                            </div>


                            <div class="note-box product-packege">


                                <div class="cart_qty qty-box product-qty">
                                    <div class="input-group bg-white">
                                        <button type="button" class="qty-left-minus bg-white" data-type="minus"
                                                data-field="">
                                            <i class="fa fa-minus" aria-hidden="true"></i>
                                        </button>
                                        <input class="form-control input-number qty-input" type="text"
                                               name="quantity" value="1">
                                        <button type="button" class="qty-right-plus bg-white" data-type="plus"
                                                data-field="">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>

                                <button onclick="location.href = '${BASE_URL}cart';"
                                        class="btn btn-md bg-dark cart-button text-white w-100">Add To Cart
                                </button>
                            </div>

                            <div class="buy-box">
                                <a href="${BASE_URL}wishlist">
                                    <i data-feather="heart"></i>
                                    <span>Add To Wishlist</span>
                                </a>

                            </div>


                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xxl-3 col-xl-4 col-lg-5 d-none d-lg-block wow fadeInUp">
                <div class="right-sidebar-box">

                    <!-- Trending Product -->
                    <div class="pt-25">
                        <div class="category-menu">
                            <h3>Trending Products</h3>

                            <ul class="product-list product-right-sidebar border-0 p-0">

                                <%
                                    int counter = 0;
                                    for(Product trp:list) {
                                        if (counter == 4) {
                                            break;
                                        }
                                %>
                                <li>
                                    <div class="offer-product">
                                        <a href="${BASE_URL}view-product/<%= trp.getPid() %>" class="offer-image">
                                            <img src="${BASE_URL}img/products/<%= trp.getpPhoto()%>"
                                                 class="img-fluid blur-up lazyload" alt="">
                                        </a>

                                        <div class="offer-detail">
                                            <div>
                                                <a href="${BASE_URL}view-product/<%= trp.getPid() %>">
                                                    <h6 class="name"><%= trp.getpName()%></h6>
                                                </a>
                                                <span><%= trp.getpDiscount()%>% off</span>
                                                <h6 class="price theme-color">$ <%= trp.getDiscountedPrice()%></h6>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <%
                                        counter++;
                                    }
                                    if(list.isEmpty()) {
                                        out.println("<h3>No trending products</h3>");
                                    }

                                %>
                            </ul>
                        </div>
                    </div>

                    <!-- Banner Section -->
                    <div class="ratio_156 pt-25">
                        <div class="home-contain">
                            <img src="${BASE_URL}assets/images/vegetable/banner/8.jpg" class="bg-img blur-up lazyload"
                                 alt="">
                            <div class="home-detail p-top-left home-p-medium">
                                <div>
                                    <h6 class="text-yellow home-banner">Seafood</h6>
                                    <h3 class="text-uppercase fw-normal"><span
                                            class="theme-color fw-bold">Freshes</span> Products</h3>
                                    <h3 class="fw-light">every hour</h3>
                                    <button onclick="location.href = '${BASE_URL}';"
                                            class="btn btn-animation btn-md fw-bold mend-auto">Shop Now <i
                                            class="fa-solid fa-arrow-right icon"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Left Sidebar End -->

<!-- Releted Product Section Start -->
<section class="product-list-section section-b-space">
    <div class="container-fluid-lg">
        <div class="title">
            <h2>Related Products</h2>

        </div>
        <div class="row g-sm-4 g-3">
            <div class="col-xxl-12 ratio_110">


                <div class="slider-6 img-slider">
                    <%
                        for(Product plist:list)
                        {
                    %>

                    <div>
                        <div class="product-box-5 wow fadeInUp">
                            <div class="product-image">
                                <a href="${BASE_URL}view-product/<%= plist.getPid() %>">
                                    <img src="${BASE_URL}img/products/<%= plist.getpPhoto()%>"
                                         class="img-fluid blur-up lazyload bg-img" alt="">
                                </a>

                                <a href="" class="wishlist-top" data-bs-toggle="tooltip"
                                   data-bs-placement="top" title="Wishlist">
                                    <i data-feather="bookmark"></i>
                                </a>

                                <ul class="product-option">
                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">
                                        <%--                                                <a href="${BASE_URL}/view-product/<%= p.getPid() %>" data-bs-toggle="modal" data-bs-target="#view" data-product-name="<%= p.getpName()%>">--%>
                                        <%--                                                    <i data-feather="eye"></i>--%>
                                        </a><a href="${BASE_URL}view-product/<%= plist.getPid() %>">
                                        <i data-feather="eye"></i>
                                    </a>

                                    </li>

                                    <%--                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="View" id="<%= p.getPid()%>">--%>
                                    <%--                                                <a href="<%= p.getpPhoto()%>" data-bs-toggle="modal" data-bs-target="#view"--%>
                                    <%--                                                   data-product-name="<%= p.getpName()%>">--%>

                                    <%--                                                </a>--%>
                                    <%--                                            </li>--%>

                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Add to Cart">
                                        <a onclick="add_to_cart(<%=plist.getPid() %>,'<%=plist.getpName() %>','<%=plist.getDiscountedPrice() %>')">
                                            <i data-feather="shopping-cart"></i>
                                        </a>
                                    </li>


                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                        <a href="${BASE_URL}wishlist" class="notifi-wishlist">
                                            <i data-feather="heart"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="product-detail">
                                <a href="${BASE_URL}">
                                    <h5 class="name"><%=plist.getpName() %></h5>
                                </a>

                                <h5 class="sold text-content">
                                    <span class="theme-color price">$<%=plist.getDiscountedPrice() %></span>
                                    <del>$<%=plist.getpPrice() %></del>
                                </h5>
                            </div>
                        </div>
                    </div>



                    <%
                        }
                        if(list.isEmpty()) {
                            out.println("<h3>No Related Products</h3>");
                        }
                    %>
                </div>

            </div>


        </div>
    </div>
</section>
<!-- Releted Product Section End -->


<!-- Quick View Modal Box Start -->
<div class="modal fade theme-modal view-modal" id="view" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl modal-fullscreen-sm-down">
        <div class="modal-content">
            <div class="modal-header p-0">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="row g-sm-4 g-2">
                    <div class="col-lg-6">
                        <div class="slider-image">
                            <img src="${BASE_URL}assets/images/product/category/1.jpg"
                                 class="img-fluid blur-up lazyload"
                                 alt="">
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="right-sidebar-modal">
                            <h4 class="title-name">Peanut Butter Bite Premium Butter Cookies 600 g</h4>
                            <h4 class="price">$36.99</h4>
                            <div class="product-rating">
                                <ul class="rating">
                                    <li>
                                        <i data-feather="star" class="fill"></i>
                                    </li>
                                    <li>
                                        <i data-feather="star" class="fill"></i>
                                    </li>
                                    <li>
                                        <i data-feather="star" class="fill"></i>
                                    </li>
                                    <li>
                                        <i data-feather="star" class="fill"></i>
                                    </li>
                                    <li>
                                        <i data-feather="star"></i>
                                    </li>
                                </ul>
                                <span class="ms-2">8 Reviews</span>
                                <span class="ms-2 text-danger">6 sold in last 16 hours</span>
                            </div>

                            <div class="product-detail">
                                <h4>Product Details :</h4>
                                <p>Candy canes sugar plum tart cotton candy chupa chups sugar plum chocolate I love.
                                    Caramels marshmallow icing dessert candy canes I love soufflé I love toffee.
                                    Marshmallow pie sweet sweet roll sesame snaps tiramisu jelly bear claw. Bonbon
                                    muffin I love carrot cake sugar plum dessert bonbon.</p>
                            </div>

                            <ul class="brand-list">
                                <li>
                                    <div class="brand-box">
                                        <h5>Brand Name:</h5>
                                        <h6>Black Forest</h6>
                                    </div>
                                </li>

                                <li>
                                    <div class="brand-box">
                                        <h5>Product Code:</h5>
                                        <h6>W0690034</h6>
                                    </div>
                                </li>

                                <li>
                                    <div class="brand-box">
                                        <h5>Product Type:</h5>
                                        <h6>White Cream Cake</h6>
                                    </div>
                                </li>
                            </ul>

                            <div class="select-size">
                                <h4>Cake Size :</h4>
                                <select class="form-select select-form-size">
                                    <option selected>Select Size</option>
                                    <option value="1.2">1/2 KG</option>
                                    <option value="0">1 KG</option>
                                    <option value="1.5">1/5 KG</option>
                                    <option value="red">Red Roses</option>
                                    <option value="pink">With Pink Roses</option>
                                </select>
                            </div>

                            <div class="modal-button">
                                <button onclick="location.href = '${BASE_URL}cart';"
                                        class="btn btn-md add-cart-button icon">Add
                                    To Cart
                                </button>
                                <button onclick="location.href = '${BASE_URL}';"
                                        class="btn theme-bg-color view-button icon text-white fw-bold btn-md">
                                    View More Details
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Quick View Modal Box End -->



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
                            <h6>$32.96
                                <del class="text-danger">$96.00</del>
                                <span>55% off</span></h6>
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
                        <a class="btn theme-bg-color text-white wishlist-btn" href="${BASE_URL}wishlist"><i
                                class="fa fa-bookmark"></i> Wishlist</a>
                        <a class="btn theme-bg-color text-white" href="${BASE_URL}cart"><i
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