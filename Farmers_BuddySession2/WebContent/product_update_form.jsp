<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<%@page import="com.cdac.dto.User"%>

<%@ include file="cache_control.jsp" %>

<%	
	User user = (User)session.getAttribute("user");
	if(user !=null && user.getUserId()>0)
	{

%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Update Product Form</title>
    <style>
        .s1 {
            font-size: 30px;
        }
    </style>
</head>

<body>
    <spr:form action="product_update.htm" method="get" commandName="product">

        <div class="container-fluid">
            <!--navbar-->
            <div class="row bg-success align-items-center" style="height: 10vh;">
                <div class="col-10 text-dark pl-5"
                    style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                    FARMER'S
                    BUDDY
                </div>

                <div class="col-1"><button type="button" class="btn btn-light px-3"><a
                            href="product_list.htm">Back</a></button>
                </div>
                <div class="col-1"><button type="button" class="btn btn-light px-3"><a
                            href="logout.jsp">Logout</a></button>
                </div>
            </div>

            <div class="row bg-dark"
                style="height:80vh;background-image: url(8.jpg);background-repeat: no-repeat;background-size: cover;">

                <div class="col-2">
                </div>

                <div class="col-8 d-flex flex-column align-item-center  my-5"
                    style="border-style: outset;background-color: rgb(182, 171, 163);">

                    <table class="table table-hover">
                        <thead>
                            <tr style="text-align: center;">
                                <th scope="col">Product ID</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Product Details</th>
                                <th scope="col">Price</th>
                                <th scope="col">Add Products</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <spr:hidden path="productId" />
                                </td>

                                <td>
                                    <spr:input path="productName" />
                                </td>
                                <td>
                                    <spr:input path="productDetails" />
                                </td>
                                <td>
                                    <spr:input path="pr" />
                                </td>
                                <td align="center">
                                    <button class="btn btn-light px-4" type="submit">UPDATE</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
            <div class="row" style="background-color: rgb(182, 171, 163);">
                <div class="col-12"><button class="btn btn-block py-3" style="font-size: 25px;">
                <a href="product_list.htm">Product
                            List</a></button></div>
            </div>

        </div>
    </spr:form>
</body>

</html>
<% 
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>