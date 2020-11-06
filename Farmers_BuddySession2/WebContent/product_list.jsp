<%@page import="com.cdac.dto.Products"%>
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

            <div class="col-1"><button type="button" class="btn btn-light px-3"><a href="home.jsp">Back</a></button>
            </div>
            <div class="col-1"><button type="button" class="btn btn-light px-3"><a href="logout.jsp">Logout</a></button>
            </div>
        </div>

        <div class="row bg-dark"
            style="height:90vh;background-image: url(8.jpg);background-repeat: no-repeat;background-size: cover;">

            <div class="col-2">
            </div>

            <div class="col-8 d-flex flex-column align-item-center  my-5"
                style="border-style: outset;background-color: rgba(235, 224, 217, 0.8);">

                <table class="table table-hover">
                    <thead>
                        <tr align="center">
                            <th scope="col">Product Name</th>
                            <th scope="col">Product Details</th>
                            <th scope="col">Price</th>
                            <th scope="col">Modify</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        List<Products> plist = (List<Products>)request.getAttribute("proList");
                        for(Products prd : plist){
                        %>
                        <tr>
                            <td align="center"><%=prd.getProductName()%></td>
                            <td align="center"><%=prd.getProductDetails()%></td>
                            <td align="center"><%=prd.getPr()%></td>

                            <td align="center">
                                <button class="btn btn-warning">
                                    <a href="product_update_form.htm?productId=<%=prd.getProductId()%>">Update</a>
                                </button>
                            </td>

                            <td align="center">
                                <button class="btn btn-danger">
                                    <a href="product_delete.htm?productId=<%=prd.getProductId()%>">Delete</a>
                                </button>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>

                </table>

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