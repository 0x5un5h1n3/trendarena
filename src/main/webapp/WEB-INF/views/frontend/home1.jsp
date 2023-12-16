<%@page import="com.ox5un5h1n3.web.trendarena.util.Helper"%>
<%@page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao"%>
<%@page import="com.ox5un5h1n3.web.trendarena.dao.ProductDao"%>
<%@page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.ox5un5h1n3.web.trendarena.entity.*"%>
<html>
<head>
  <title>Mycart: Home</title>
  <%@include file="/components/common_css_js.jsp"%>

</head>
<body>
<%@include file="/components/navbar.jsp"%>

<%
  String cat=request.getParameter("category");

  ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
  List<Product> list=null;

  if(cat==null ||cat.trim().equals("all"))
  {
    list =dao.getAllProducts();
  }
  else{
    int cid=Integer.parseInt(cat.trim());
    list=dao.getAllProductsById(cid);
  }

  CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
  List<Category> clist = cdao.getCategories();
%>


<div class="row ml-2">
  <!-- show categories -->

  <div class="col-md-2">

    <div class="list-group mt-4">
      <a href="index.jsp?category=all" class="list-group-item list-group-item-action active">
        All Products</a>

      <%
        for (Category c : clist) {
      %>
      <a href="index.jsp?category=<%=c.getCategoryId() %>" class="list-group-item list-group-item-action"><%=c.getCategoryTitle()%></a>


      <%
        }
      %>

    </div>
  </div>
  <!-- //show products -->
  <div class="col-md-10">

    <!-- row -->
    <div class="row mt-4">
      <div class="col-md-12">

        <div class="card-columns">

          <!--   traversing product -->

          <%

            for(Product p:list)
            {
          %>
          <div class="card">
            <div class="container text-center">
              <img alt="..." style="max-height:200px; max-width:100px; width:auto;" src="img/products/<%= p.getpPhoto()%>" class="card-img-top m-2">


            </div>
            <div class="class-body">
              <h5 class="card-title ml-2"><%=p.getpName() %></h5>
              <p class="card-text ml-2"><%=Helper.get10Words(p.getpDesc()) %></p>
            </div>

            <div class="card-footer text-center">
              <button class="btn custom-bg text-white" onclick="add_to_cart(<%=p.getPid() %>,'<%=p.getpName() %>','<%=p.getDiscountedPrice() %>')">Add to Cart</button>
              <button class="btn btn-outline-success">&#x24; <%=p.getDiscountedPrice()%>/- <span class="text-secondary discount-label">  &#x24;<%=p.getpPrice() %> <%=p.getpDiscount() %>%</span></button>
            </div>

          </div>


          <%
            }


            if(list.size()==0)
            {
              out.println("<h3>No item in this category</h3>");
            }



          %>

        </div>

      </div>


      <script>


        /*=====================
           25. Cart Function
           ==========================*/

        function add_to_cart(pid,pname,price){


          let cart=localStorage.getItem("cart");
          if(cart==null){

            //no  cart yet
            let products=[];
            let product={productId : pid , productName : pname, productQuantity : 1, productPrice : price}
            products.push(product);
            localStorage.setItem("cart",JSON.stringify(products));
            console.log("Product is added for the first time")
          }
          else{
            //cart is already present
            let pcart=JSON.parse(cart);


            let oldProduct=pcart.find((item)=> item.productId == pid)
            console.log(oldProduct)
            if(oldProduct)
            {
              //we have to increase the quuantity
              oldProduct.productQuantity=oldProduct.productQuantity+1
              pcart.map((item)=>{
                if(item.productId ==  oldProduct.productId)
                {
                  item.productQuantity=oldProduct.productQuantity;
                }
              })
              localStorage.setItem("cart",JSON.stringify(pcart));
            }
            else{
              //we have add product
              let product={productId : pid , productName:pname,productQuantity:1,productPrice:price}
              pcart.push(product)
              localStorage.setItem("cart",JSON.stringify(pcart));
              console.log("Product id added")
            }



          }
          updateCart();


        }




        //update cart


        function updateCart()
        {

          let cartString=localStorage.getItem("cart");
          let cart=JSON.parse(cartString);
          if(cart==null || cart.length==0)
          {
            console.log("Cart is empty")
            $(".cart-items").html("( 0 )");
            $(".cart-body").html("<h3>Cart does not have any items </h3>")
            $(".checkout-btn").attr('disabled',true);

          }
          else{
            //there is something
            console.log(cart);
            $(".cart-items").html( `( ${cart.length} )` );
            let table=`
		<table class='table'>
		<thead class='thead-light'>
		<tr>
		<th>Item Name </th>
		<th>Price </th>
		<th>Quantity </th>
		<th>Total Price</th>
		<th>Action </th>
		</tr>
		</thead>

		`;
            let totalPrice=0;

            cart.map((item) => {

              table +=`

				<tr>

				<td>${item.productName}</td>
				<td>${item.productPrice}</td>
				<td>${item.productQuantity}</td>
				<td>${item.productQuantity * item.productPrice}</td>
				<td> <button onclick="deleteItemFromCart(${item.productId})" class="btn btn-danger btn-sm">Remove</button></td>

				</tr>
			`

              totalPrice+=item.productPrice*item.productQuantity;
            })



            table= table + `
		<tr><td colspan='5' class='text-right font-weight-bold m-5'> Total Price: ${totalPrice}</td></tr>

		</table>`

            $(".cart-body").html(table)
            $(".checkout-btn").attr('disabled',false);
            console.log("removed")




          }

        }


        function deleteItemFromCart(pid)
        {
          let cart=JSON.parse(localStorage.getItem('cart'));
          let newcart=cart.filter((item)=>item.productId!=pid);

          localStorage.setItem('cart',JSON.stringify(newcart))
          updateCart();

        }

        $(document).ready(function(){
          updateCart();
        })


        function gotoCheckout(){
          window.location="checkout.jsp"
        }


      </script>

    </div>



  </div>

</div>

<%@include file="/components/common_modals.jsp" %>


</body>
</html>
