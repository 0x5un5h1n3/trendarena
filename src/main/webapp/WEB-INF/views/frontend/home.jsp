<%@ page import="com.ox5un5h1n3.web.trendarena.dao.ProductDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">

<%
    String cat=request.getParameter("category");

    ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
    List<Product> list= null;

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

<jsp:include page="../frontend/include/header.jsp"/>

<body class="theme-color-5 bg-gradient-color">


<!-- Product Section Start -->
<section class="product-section pt-0">
    <div class="container-fluid p-0">
        <div class="custom-row">
            <div class="sidebar-col">
                <div class="category-menu">
                    <a href="${BASE_URL}" class="web-logo nav-logo">
                        <img src="${BASE_URL}assets/images/logo/logo.png" class="img-fluid blur-up lazyload" alt="">
                    </a>
                    <ul>

                        <li>
                            <div class="category-list">
                                <h4>
                                    <a href="${BASE_URL}?category=all">All Categories </a>
                                </h4>
                            </div>
                        </li>


                        <%
                            for (Category c : clist) {
                        %>
                        <li>
                            <div class="category-list">
                                <h5>
                                    <a href="${BASE_URL}?category=<%=c.getCategoryId() %>"><%=c.getCategoryTitle() %> </a>
                                </h5>
                            </div>
                        </li>
                        <%
                            }
                        %>

                    </ul>
                </div>
            </div>

            <div class="content-col">
                <div class="section-b-space">
                    <div class="row g-md-4 g-3">
                        <div class="col-xxl-8 col-xl-12 col-md-7">
                            <div class="banner-contain hover-effect">
                                <img src="${BASE_URL}assets/images/fashion/banner/1.jpg" class="bg-img blur-up lazyload"
                                     alt="">
                                <div class="banner-details p-center-left p-sm-5 p-4">
                                    <div>
                                        <h2 class="text-kaushan fw-normal theme-color">Get Ready To</h2>
                                        <h3 class="mt-2 mb-3">TAKE ON THE DAY!</h3>
                                        <p class="text-content banner-text">Discover the joy of shopping effortlessly,
                                            anytime and anywhere.</p>
                                        <button onclick="location.href = '${BASE_URL}';"
                                                class="btn btn-animation btn-sm mend-auto">Shop Now <i
                                                class="fa-solid fa-arrow-right icon"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xxl-4 col-xl-12 col-md-5">
                            <div class="banner-contain hover-effect h-100">
                                <img src="${BASE_URL}assets/images/fashion/banner/2.jpg" class="bg-img blur-up lazyload"
                                     alt="">
                                <div class="banner-details p-center-left p-4 h-100">
                                    <div>
                                        <h2 class="text-kaushan fw-normal text-danger">20% Off</h2>
                                        <h3 class="mt-2 mb-2 theme-color">SUMMARY</h3>
                                        <h3 class="fw-normal product-name text-title">Product</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="title d-block">
                    <h2 class="text-theme font-sm">Recently Added</h2>
                    <p>Get your hands on the latest trendy pieces!</p>
                </div>

                <div class="row g-sm-4 g-3">
                    <div class="col-xxl-12 ratio_110">



                        <div class="slider-6 img-slider">
                            <%
                                for(Product p:list)
                                {
                            %>

                            <div>
                                <div class="product-box-5 wow fadeInUp">
                                    <div class="product-image">
                                        <a href="${BASE_URL}view-product/<%= p.getPid() %>">
                                            <img src="${BASE_URL}img/products/<%= p.getpPhoto()%>"
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
                                                </a><a href="${BASE_URL}view-product/<%= p.getPid() %>">
                                                    <i data-feather="eye"></i>
                                                </a>

                                            </li>

<%--                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="View" id="<%= p.getPid()%>">--%>
<%--                                                <a href="<%= p.getpPhoto()%>" data-bs-toggle="modal" data-bs-target="#view"--%>
<%--                                                   data-product-name="<%= p.getpName()%>">--%>

<%--                                                </a>--%>
<%--                                            </li>--%>

                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Add to Cart">
                                                <a link href="${BASE_URL}cart" onclick="add_to_cart(<%=p.getPid() %>,'<%=p.getpName() %>','<%=p.getDiscountedPrice() %>')">
                                                    <i data-feather="shopping-cart"></i>
                                                </a>


                                            </li>


                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                <a href="wishlist.html" class="notifi-wishlist">
                                                    <i data-feather="heart"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="product-detail">
                                        <a href="product-left-thumbnail.html">
                                            <h5 class="name"><%=p.getpName() %></h5>
                                        </a>

                                        <h5 class="sold text-content">
                                            <span class="theme-color price">$<%=p.getDiscountedPrice() %></span>
                                            <del>$<%=p.getpPrice() %></del>
                                        </h5>
                                    </div>
                                </div>
                            </div>



                            <%
                                }
                                if(list.isEmpty()) {
                                    out.println("<h3>No item in this category</h3>");
                                }
                            %>
                        </div>

                    </div>

            </div>
        </div>
    </div>
    </div>
</section>
<!-- Product Section End -->


<jsp:include page="../frontend/include/footer.jsp"/>

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
                        <h4 class="title-name"><script>document.write(productName);</script></h4>
                        <h4 class="price"><script>document.write(productDiscountedPrice);</script></h4>


                        <div class="product-detail">
                            <h4>Product Details :</h4>
                            <p><script>document.write(productDescription);</script></p>
                        </div>

                        <ul class="brand-list">
                            <li>
                                <div class="brand-box">
                                    <h5>Brand Name:</h5>
                                    <h6><script>document.write(productName);</script></h6>
                                </div>
                            </li>



                            <li>
                                <div class="brand-box">
                                    <h5>Product Category:</h5>
                                    <h6><script>document.write(productCategory);</script></h6>
                                </div>
                            </li>
                        </ul>


                        <div class="modal-button">
                            <button onclick="location.href = 'cart.html';"
                                    class="btn btn-md add-cart-button icon">Add
                                To Cart
                            </button>
                            <button onclick="location.href = 'product-left.html';"
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

<!-- Bg overlay Start -->
<div class="bg-overlay"></div>
<!-- Bg overlay End -->


<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Your cart</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="cart-items"></span>
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="cart-body">

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary checkout-btn" onclick="gotoCheckout()">Checkout</button>
            </div>
        </div>
    </div>
</div>

<script>

    function add_to_cart(pid, pname, price) {

        let cart = localStorage.getItem("cart");
        if (cart == null) {
            // no cart yet
            let products = [];
            let product = {
                productId: pid,
                productName: pname,
                productQuantity: 1,
                productPrice: price
            };
            products.push(product);
            localStorage.setItem("cart", JSON.stringify(products));
            alert("Product is added for the first time");
            console.log("Product is added for the first time");
        } else {
            // Already available
            let pcart = JSON.parse(cart);

            let oldProduct = pcart.find((item) => item.productId === pid);
            console.log(oldProduct);
            if (oldProduct) {
                // Increase the quantity
                oldProduct.productQuantity = oldProduct.productQuantity + 1;
                pcart.map((item) => {
                    if (item.productId == oldProduct.productId) {
                        item.productQuantity = oldProduct.productQuantity;
                    }
                });
                localStorage.setItem("cart", JSON.stringify(pcart));
            } else {
                // Add product to cart
                let product = {
                    productId: pid,
                    productName: pname,
                    productQuantity: 1,
                    productPrice: price
                };
                pcart.push(product);
                localStorage.setItem("cart", JSON.stringify(pcart));
                console.log("Product id added");
                alert("Product id added");
            }
        }
        updateCart();
    }

    function updateCart() {
        let cartString = localStorage.getItem("cart");
        let cart = JSON.parse(cartString);
        if (cart == null || cart.length == 0) {
            console.log("Cart is empty");
            // alert("Cart is empty");
            $(".cart-items").text("0");
            $(".cart-body").html("<h3>Cart does not have any items </h3>");
            $(".checkout-btn").attr("disabled", true);
        } else {
            // there is something
            console.log(cart);
            $(".cart-items").text(`( ${cart.length} )`);
            let table = `
      <table class='table'>
        <thead class='thead-light'>
          <tr>
            <th>Item Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total Price</th>
            <th>Action</th>
          </tr>
        </thead>
      `;

            let totalPrice = 0;

            cart.map((item) => {
                table += `
        <tr>
          <td>${item.productName}</td>
          <td>${item.productPrice}</td>
          <td>${item.productQuantity}</td>
          <td>${item.productQuantity * item.productPrice}</td>
          <td><button onclick="deleteItemFromCart(${item.productId})" class="btn btn-danger btn-sm">Remove</button></td>
        </tr>
      `;
                totalPrice += item.productPrice * item.productQuantity;
            });

            table = table + `
      <tr>
        <td colspan='5' class='text-right font-weight-bold m-5'> Total Price: ${totalPrice}</td>
      </tr>
    </table>`;

            $(".cart-body").html(table);
            $(".checkout-btn").attr("disabled", false);
            console.log("updated");
        }
    }

    function deleteItemFromCart(pid) {
        let cart = JSON.parse(localStorage.getItem("cart"));
        let newcart = cart.filter((item) => item.productId != pid);

        localStorage.setItem("cart", JSON.stringify(newcart));
        updateCart();
    }

    $(document).ready(function () {
        updateCart();
    });

    function gotoCheckout() {
        window.location = "checkout";
    }


    function productSearch() {

        let product_title = document.getElementById('product_search').value;

        fetch('products/search_product?title=' + product_title, {
            method: "POST",
        })
            .then(response => response.text())
            .then((data) => {
                let product_view_table = document.getElementById("product_view_table");
                product_view_table.innerHTML = data;
            });
    }

</script>


<jsp:include page="../frontend/include/script_imports.jsp"/>

</body>

</html>