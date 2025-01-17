<%-- 
    Document   : messages
    Created on : May 10, 2021, 10:20:42 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Patient Messages</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin">
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
        
        
        %>

<body style="background: #dddddd;">
    <nav class="navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search" style="background: rgb(255,255,255);">
        <div class="container"><a class="navbar-brand" href="#"><i class="fas fa-hospital" style="font-size: 25px;"></i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="#"><strong>CHAT</strong></a></li>
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="timeslots.jsp">TIMESLOTS</a></li>
                </ul>
            </div>
            <div class="dropdown menu_links"><a class="dropdown-toggle" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);"><%out.println("Receptionist ("+username+")");%></a>
                <div class="dropdown-menu"><a class="dropdown-item" href="#">Logout</a></div>
            </div>
        </div>
    </nav>


    
    <div class="container">
        <div class="card" style="height: 750px;margin-top: 20px;margin-bottom: 50px;background: rgb(61,61,61);color: rgb(33, 37, 41);">
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="card" style="background: rgb(255,255,255);">
                            <div class="card-body" style="height: 700px;">
                                <div class="col" style="padding-right: 0px;padding-left: 0px;">
                                    <div class="row overflow-auto" style="margin-right: 0px;margin-bottom: 10px;border-style: none;">
                                        <div id="list" class="col overflow-auto" style="padding-right: 5px;padding-left: 5px;border-style: none;">
                                            <button class="btn btn-dark btn-block text-capitalize text-left border rounded border-light" type="button" style="height: 60px;color: rgb(255,255,255);border-width: 0px;">
                                                <span class="text-left float-left" style="color: rgb(255,255,255);border-style: none;">
                                                    <i class="fa fa-user-circle" style="font-size: 18px;"></i>
                                                </span>
                                                <span class="text-left float-left" style="color: rgb(255,255,255);border-style: none;margin-left: 8px;font-family: Cabin, sans-serif; font-size: 18px;">
                                                    Hasiru Navodya
                                                </span>
                                                <h5><span class="float-right badge badge-danger">New</span></h5>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8" style="padding-left: 0px;">
                        <div class="row">
                            <div class="col">
                                <div class="card" style="height: 650px;">
                                    <div class="card-body" style="padding: 10px;">
                                        <div class="col d-xl-flex justify-content-xl-center align-items-xl-center" style="padding-right: 0px;padding-left: 0px;height: 52px;margin-bottom: 10px;background: #e0e0e0;border-radius: 5px;font-family: Cabin, sans-serif;"><span id="fname" class="text-center" style="color: rgb(0,0,0);font-family: Cabin, sans-serif;font-size: 21px;">Select Conversation</span></div>
                                        <div id="chatcont" class="col overflow-auto" style="height: 565px;border-radius: 5px;border: 1px solid rgb(221,221,221);padding-right: 20px;padding-left: 20px;">
                                            <!-- <div class="row d-xl-flex justify-content-xl-start" style="margin-bottom: 5px;margin-top: 5px;">
                                                <div class="col-auto" style="background: #3840ff;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);"><span style="font-family: Cabin, sans-serif;">kkvjankjvnkfjnk&nbsp; dkjvnnfdk dfjdnf dkfjvnkfv</span></div>
                                            </div>
                                            <div class="row text-center d-xl-flex justify-content-xl-end" style="margin-bottom: 5px;margin-top: 5px;">
                                                <div class="col-auto d-xl-flex my-auto" style="background: #bebebe;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);"><span style="font-family: Cabin, sans-serif;color: rgb(0,0,0);">kkvjankjvnkfjnk&nbsp; dkjvnnfdk dfjdnf dkfjvnkfv</span></div>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group text-center d-xl-flex justify-content-xl-center align-items-xl-center" style="padding: 12px;">
                                    <input id="mtext" class="border rounded" type="text" style="width: 559px;height: 40px;margin-right: 12px;font-family: Cabin, sans-serif;">
                                    <button onclick="sendmessage()" class="btn btn-light" type="button" style="border-radius: 3px;font-family: Cabin, sans-serif;">SEND&nbsp;<i class="fa fa-send-o"></i></button>
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

    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-analytics.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-firestore.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-messaging.js"></script>

    <script src="chat-app.js"></script>
    <script>loadlist()</script>
    <script>notify()</script>

</body>

</html>