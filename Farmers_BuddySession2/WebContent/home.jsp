<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    
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
<title>Home</title>
</head>
<body>
	
	
	<div class="container-fluid">
        <!--navbar-->
        <div class="row bg-success align-items-center" style="height: 10vh;">
            <div class="col-11 text-dark pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                FARMER'S
                BUDDY
            </div>
            <div class="col-1"><button type="button" class="btn btn-light"><a href="logout.jsp">Logout</a></button>
            </div>
        </div>

        <div class="row justify-content-around bg-dark" style="height: 90vh;">

            <div class="col-4 bg-info my-2"
                style="background-image: url(6.jpg);background-repeat: no-repeat;background-size: cover;">
            </div>

            <div class="col-4 bg-info my-2"
                style="background-image: url(5.png);background-repeat: no-repeat;background-size: cover;">
                <div class="row d-flex flex-row align-items-center justify-content-center" style="height: 87vh;">
                    <div class="col 6">

                        <button type="button" class="btn btn-outline-light btn-lg btn-block"
                            style="font-weight:bolder ;font-size: 40px;"><a
                                href="prep_product_buy_form.htm">BUY</a></button>

                        <button type="button" class="btn btn-outline-light btn-lg btn-block"
                            style="font-weight: bolder ;font-size: 40px;"><a
                                href="prep_product_add_form.htm">SELL</a></button>
                    </div>


                </div>
            </div>

            <div class="col-4 bg-info my-2"
                style="background-image: url(7.jpg);background-repeat: no-repeat;background-size: cover;">
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