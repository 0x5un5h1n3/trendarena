
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
                            <button class="btn custom-bg text-white" onclick="add_to_cart(<%=p.getPid() %>,'<%=p.getpName() %>','<%=p.getPriceAfterApplyDiscount() %>')">Add to Cart</button>
                            <button class="btn btn-outline-success">&#x24; <%=p.getPriceAfterApplyDiscount()%>/- <span class="text-secondary discount-label">  &#x24;<%=p.getpPrice() %> <%=p.getpDiscount() %>%</span></button>
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


        </div>



    </div>

</div>

<%@include file="/components/common_modals.jsp" %>


</body>
</html>
