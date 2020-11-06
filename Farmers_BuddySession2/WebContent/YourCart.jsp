<%@page import="com.cdac.dto.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.cdac.dto.User"%>
<%@ include file="cache_control.jsp" %>

<%	
	User user = (User)session.getAttribute("user");
	if(user !=null && user.getUserId()>0)
	{

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Your Cart</title>
</head>

<body>

    <div class="container-fluid">
        <!--navbar-->
        <div class="row bg-success align-items-center" style="height: 10vh;">
            <div class="col-10 text-dark pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                FARMER'S
                BUDDY
            </div>

            <div class="col-1"><button type="button" class="btn btn-light px-3"><a href="home.jsp">Back</a></button>
            </div>
            <div class="col-1"><button type="button" class="btn btn-light px-3"><a href="logout.jsp">Logout</a></button>
            </div>
        </div>

        <div class="row bg-secondary" style="height:90vh;background-repeat: no-repeat;background-size: cover;">

            <div class="col-3">
            </div>

            <div class="col-6 d-flex flex-column align-item-center  my-5">

                <table class="table table-striped table-bordered">

                    <thead class="thead-dark">
                        <tr align="center">
                            <th scope="col">Product Name</th>
                            <th scope="col">Product Details</th>
                            <th scope="col">Price</th>
                            <th scope="col">Modify</th>
                        </tr>
                    </thead>
                    <tbody>
                     <% float totalPrice=0.0f; %>
                        <% 
                           List<Cart> plist = (List<Cart>)request.getAttribute("cartList");
                       
                        for(Cart prd : plist){
                        	
                        %>


                        <tr style="color: black;background-color:rgb(58, 202, 212);">
                            <td align="center"><%=prd.getCartProductName()%></td>
                            <td align="center"><%=prd.getCartProductDetail()%></td>
                            <td align="center"><%=prd.getCartProductPrice()%></td>
							<td align="center"> <button class="btn-daner btn btn-outline-dark mx-2" > <a href="product_delete_cart.htm?cart_id=<%=prd.getCart_id()%>">Delete</a> </button></td>

                        </tr>
                        <% totalPrice=totalPrice+prd.getCartProductPrice() ;
    	session.setAttribute("total_price", totalPrice); %>
                        <% } %>
                    </tbody>

                </table>
                
                <table class="table table-bordered ">
                <thead style="font-style: italic; ">
                    <tr>

                        <th class=" bg-warning justify-content-center d-flex " scope="col " style="text-decoration:underline ">Total Price</th>
                        <th class=" justify-content-center d-flex bg-white " scope="col ">Rs.<%=totalPrice %></th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
            
                <button type="submit" class="btn  btn-light">
                   <a href="cart_list.htm">Confirm</a>
                </button>
            </div>
        </div>

    </div>

</body>

</html>
<% 
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>