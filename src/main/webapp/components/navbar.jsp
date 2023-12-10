<%@page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
<%
User user1=(User)session.getAttribute("userLogged");
%>
<nav class="navbar navbar-expand-lg ">
  <div class="container">
    <a class="navbar-brand" href="${BASE_URL}">TrendArena</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${BASE_URL}">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
        
    </ul>
    <ul class="navbar-nav ml-auto">
    
    <li class="nav-item active">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size: 20px;"></i><span class="ml-0 cart-items" >( 0 )</span> </a>
       </li>
    
    <%
      if(user1==null)
      {
    	  %>
    	  <li class="nav-item active">
          <a class="nav-link" href="${BASE_URL}login">Login </a>
       </li>
       <li class="nav-item active">
          <a class="nav-link" href="${BASE_URL}register">Register</a>
       </li>
       <%
      }else
      {
    	 %>
    	 
    	 <li class="nav-item active">
        <a class="nav-link" href="<%=user1.getUserType().toString().equals("admin")?"admin":"admin" %>"><%=user1.getName() %> </a>
     </li>
     <li class="nav-item active">
        <a class="nav-link" href="${BASE_URL}logout">Logout</a>
     </li>  	 
    	 <% 
      }
    %>
    </ul>   
  </div> 
  </div>
</nav>