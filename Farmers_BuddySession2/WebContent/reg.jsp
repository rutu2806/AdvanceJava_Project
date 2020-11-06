<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Login Form</title>
</head>
<body>
	<spr:form action="reg.htm" method="post" commandName="user" >
	
	<div class="container-fluid">
        <!--navbar-->
        <div class="row bg-success align-items-center" style="height: 10vh;">
            <div class="col-9 text-dark pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                FARMER'S
                BUDDY
            </div>        
    	</div>
    
    
   
                       
                       <div class="row justify-content-center" style="height: 90vh;background-image: url(4.jpg);">
            <div class="col-6  d-flex justify-content-center align-items-center">
                <div class="row justify-content-center" style="height:50vh;background-color:rgb(161, 152, 152, 0.7) ;border-top-left-radius: 20px;border-bottom-right-radius: 20px;">
                    <div class="col-12 ">

                        <div class="row" style="height:10vh;border-top-left-radius: 20px;border-style: outset;">
                            <div class="col-12" style="color:white;font-size: 35px;">Sign Up</div>
                        </div>

                        <div class="row p-2" style="height:40vh;border-bottom-right-radius: 20px;border-style: outset;">
                            <div class="col-12">
                            
      <table align="center" style="font-size:20px;">
		<tr>
			<td style="color:white;">
				First Name:
			</td>
			<td>
				<spr:input path="fname"/>
			</td>
		</tr>
		<tr>
			<td style="color:white;">
				Last Name:
			</td>
			<td>
				<spr:input path="lname"/>
			</td>
		</tr>
		<tr>
			<td style="color:white;" >
				Email:
			</td>
			<td>
				<spr:input path="email"/>
			</td>
		</tr>
		<tr>
			<td style="color:white;">
				Password:
			</td>
			<td>
				<spr:password path="userPass"/>
			</td>
		</tr>
		<tr>
			<td style="color:white;">
				Mobile:
			</td>
			<td>
				<spr:input path="mobile"/>
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td>
			<a href="index.jsp" style="color:white;" class="btn btn-primary">Back</a>
				<input type="submit" class="btn btn-success"  value="Register" >
			</td>
		</tr>
	</table>      
                            
                            </div>
                        </div>






                    </div>
                </div>
            </div>
        </div>
                    
                        
                   
        
    
     
	</div>
	
	
	
	
	
	
	
	
	</spr:form>
</body>
</html>