<%-- 
    Document   : orders
    Created on : May 10, 2021, 10:09:52 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Current Order</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="../assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Dropdown-List-Item.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body style="background: #dddddd;font-family: Montserrat, sans-serif;">
    
     <%
          
       
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader ("Expires", 0);
        String username = (String)session.getAttribute("username");
         if(session.getAttribute("username")==null)
        {
            response.sendRedirect("../auth/login.html");
        }
   
        int prscid = Integer.parseInt(request.getParameter("prscid"));
        String prslist=request.getParameter("prslist");
        String dob=request.getParameter("dob");
        String gender=request.getParameter("gender");
        String name=request.getParameter("name");
        String phoneno=request.getParameter("phoneno");
        
        
        
        %>
    
    
    <nav class="navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search">
        <div class="container"><a class="navbar-brand" href="#"><i class="fas fa-hospital" style="font-size: 25px;"></i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="order-list.jsp">Orders List</a></li>
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="orders.jsp"><strong>Orders</strong></a></li>
                </ul>
            </div>
            <div class="dropdown menu_links"><a class="dropdown-toggle" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);"><%out.println("Pharmacist ("+username+")");%>  </a>
                <div class="dropdown-menu"><a class="dropdown-item" href="../../Logout">Logout</a></div>
            </div>
        </div>
    </nav>
    <div class="container-sm" style="width: 1175px;height: 923px;">
        <div class="row">
            <div class="col">
                <div style="margin: 16px;">
                    <div class="row">
                       
                        <div class="col text-left align-self-center">
                            <br>
                            <h5 class="text-center text-dark" style="font-family: Montserrat, sans-serif;text-align: center;">Order No : <%=prscid%></h5>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-xl-7 mx-auto">
                <div>
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0">Prescription<br></h5>
                        </div>
                        <div class="card-body" style="background: #ffffff;padding: 15px;">
                            <div class="card" style="padding: 0px;margin: 0px;margin-top: 0px;margin-bottom: 8px;">
                                <div class="card-body">
                                    <h5 class="card-title" style="color: rgb(0,0,0);font-size: 17px;"> <%=name%> </h5>
                                    <h5 class="card-title" style="color: rgb(0,0,0);font-size: 17px;"> <%=dob%> </h5>
                                    <h4 class="card-title" style="color: rgb(0,0,0);font-size: 17px;"><%=gender%> </h4>
                                </div>
                            </div>
                            <div class="card" style="margin-bottom: 8px;">
                                <div class="card-body">
                                    <p class="card-text"><%=prslist%> </p>
                                </div>
                            </div>
                            <div class="card" style="margin-bottom: 8px;">
                                <div class="card-body">
                                    <form method="post" action="../../SubmitPrescriptionbill">
                                        <input type="hidden" name="prscid" value="<%=prscid%>">
                                        <input type="hidden" name="phoneno" value="<%=phoneno%>">
                                        <div class="form-group"><input class="form-control" type="text" name="price" placeholder="Total Price" ></div>
                                        <div class="form-group"><textarea class="form-control" name="billnotes" placeholder="Any Notes" rows="5" style="height: 103px;"></textarea></div>
                                    
                                </div>
                            </div>
                            <div class="card" style="margin-bottom: 8px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col text-center"><button class="btn btn-success" type="submit" name="status" value="Available" style="margin-right: 10px;">Mark as Ready&nbsp;&nbsp;<i class="fa fa-check"></i></button><button class="btn btn-danger" type="submit" name="status" value="Not Available" style="margin-left: 10px;">Mark as Not Available&nbsp;&nbsp;<i class="fa fa-remove"></i></button></div>
                                    </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer-basic">
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Home</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Services</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">About</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Terms</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Privacy Policy</a></li>
        </ul>
        <p class="copyright">Company Name © 2021</p>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
</body>

</html>
