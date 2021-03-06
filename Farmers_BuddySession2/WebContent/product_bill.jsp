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
    <title>Product List</title>
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

            <div class="col-1"><button type="button" class="btn btn-light px-3"><a href="YourCart.jsp">Back</a></button>
            </div>
            <div class="col-1"><button type="button" class="btn btn-light px-3"><a href="logout.jsp">Logout</a></button>
            </div>
        </div>

        <div class="row bg-dark"
            style="height:90vh;background-image: url(8.jpg);background-repeat: no-repeat;background-size: cover;">

            <div class="col-2">
            </div>

            <div class="col-8 d-flex flex-column align-item-center  my-5">

                <table class="table table-bordered" style="border: white;">

                    <thead style="background-color: rgb(39, 238, 238);">
                        <td colspan="3" style="font-size: 35px;">Product Bill</td>
                    </thead>
                    <thead style="background-color: rgb(123, 134, 130);">
                        <tr align="center">
                            <th scope="col">Product Name</th>
                            <th scope="col">Product Details</th>
                            <th scope="col">Price</th>

                        </tr>
                    </thead>
                    <tbody>
                     <% float totalPrice=0.0f; %>
                        <% 
                        List<Cart> plist = (List<Cart>)request.getAttribute("proList");
                        for(Cart prd : plist){
                        %>
                        <tr style="background-color: rgb(190, 183, 183);">
                            <td align="center"><%=prd.getCartProductName()%></td>
                            <td align="center"><%=prd.getCartProductDetail()%></td>
                            <td align="center"><%=prd.getCartProductPrice()%></td>

                        </tr>
                       <% totalPrice=totalPrice+prd.getCartProductPrice() ;
    	session.setAttribute("total_price", totalPrice); %>
                        <% } %>
                        <tr style="background-color: rgb(68, 66, 66); color: white; font-size: 20px;">
                            <td></td>
                            <td align="center">Total Price:</td>
                            <td align="center">Rs.<%=totalPrice %></td>

                        </tr>
                     
                    </tbody>


                </table>
                <button class="btn btn-success" type="submit">
                    <a href="home.jsp" style="color: white;">Done</a>
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