<%@ page import="com.ox5un5h1n3.web.trendarena.dao.ProductDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Cart" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
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

    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
    User user = (User) session.getAttribute("user");
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
                                                <a link href="${BASE_URL}cart/<%=p.getPid() %>")>
<%--                                                <a link href="${BASE_URL}cart" onclick="add_to_cart(<%=p.getPid() %>,'<%=p.getpName() %>','<%=p.getDiscountedPrice() %>')">--%>
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

    function addToCart(productId, productName, productPrice) {
        let product = { productId: productId, productName: productName, productPrice: productPrice };
        let request = { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(product) };
        fetch('/cart', request)
            .then(response => {
                if (response.ok) {
                    console.log('Cart item added successfully');
                    updateCart();
                } else {
                    console.log('Failed to add cart item');
                }
            });
    }

    function updateCart() {
        fetch('/cart')
            .then(response => {
                if (response.ok) {
                    return response.json();
                } else {
                    console.log('Failed to update cart');
                }
            })
            .then(cartItems => {
                displayCartItems(cartItems);
            });
    }

    function displayCartItems(cartItems) {
        let cartTable = document.querySelector('.cart-table tbody');
        cartTable.innerHTML = '';
        cartItems.forEach(cartItem => {
            let tr = document.createElement('tr');
            tr.innerHTML = `
      <td class="product-detail">
        <div class="product border-0">
          <a href="product-left-thumbnail.html" class="product-image">
            <img src="${BASE_URL}assets/images/vegetable/product/1.png" class="img-fluid blur-up lazyload" alt="">
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
                    <input class="form-control input-number qty-input" type="text" name="quantity" value="${cartItem.quantity}">
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
    `;
            cartTable.appendChild(tr);
        });
    }

    function removeFromCart(productId) {
        fetch(`/cart/remove/${productId}`, { method: 'DELETE' })
            .then(response => {
                if (response.ok) {
                    console.log('Item removed successfully');
                    updateCart();
                } else {
                    console.log('Failed to remove item');
                }
            });
    }

    function gotoCheckout() {
        window.location.href = 'checkout.html';
    }

    // Call updateCart when the page loads
    updateCart();
    updateCartItemCount();

    function updateCartItemCount() {
        fetch('/cart/item-count')
            .then(response => response.json())
            .then(cartItemCount => {
                document.getElementById('cart-item-count').innerHTML = cartItemCount;
            });
    }

</script>


<jsp:include page="../frontend/include/script_imports.jsp"/>

</body>

</html>