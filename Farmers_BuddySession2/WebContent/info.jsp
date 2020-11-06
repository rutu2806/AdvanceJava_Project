<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Welcome</title>

</head>

<body>
    <div class="container-fluid">
        <!--navbar-->
        <div class="row bg-success align-items-center justify-content-center" style="height: 10vh;">
            <div class="col-9 text-dark pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                FARMER'S BUDDY
            </div>
        </div>

        <div class="row justify-content-center" style="height: 87vh;background-image: url(2.jpeg);">
            <div class="col-6  d-flex justify-content-center align-items-center">
                <div class="row justify-content-center" style="height:50vh;">
                    <div class="col-12">

                        <div class="row  " style="height:10vh;border-top-left-radius: 20px;border-style: outset;">
                            <div class="col-12" style="color:white;font-size: 35px;">
                                Password Reset Successfully</div>
                        </div>

                        <div class="row " style="height:20vh;border-bottom-right-radius: 20px;border-style: outset;">
                            <div class="col-12 pt-3">

                                <table align="center">
                                    <tr>
                                        <td style="color: white;font-size: 25px;"> <%=request.getAttribute("msg")%></td>
                                    </tr>
                                    <tr>
                                        <td>

                                        </td>
                                        <td class="btn btn-light" style="font-size:20px ;"> <a href="index.jsp">Sign
                                                In</a> </td>
                                    </tr>
                                </table>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>