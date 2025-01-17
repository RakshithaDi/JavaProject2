<%-- 
    Document   : jsp
    Created on : May 11, 2021, 7:59:49 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Pay Online</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Dropdown-List-Item.css">
    <script type="text/javascript" src="https://www.payhere.lk/lib/payhere.js"></script>
</head>

<body style="background: #f2f2f2;">
    <nav class="navbar navbar-light navbar-expand-md" id="mainNav" style="background: #333333;">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#">Central Hospitals</a><button data-toggle="collapse" class="navbar-toggler navbar-toggler-right" data-target="#navbarResponsive" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" value="Menu"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link active js-scroll-trigger" href="appointments.jsp">Appointments</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../prescriptions/prescriptions.jsp">Prescriptions</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../chat/messages.html">Chat</a></li>
                    <li class="nav-item text-center d-xl-flex justify-content-xl-center align-items-xl-center nav-link js-scroll-trigger">
                        <div class="nav-item dropdown d-xl-flex justify-content-xl-center align-items-xl-center menu_links"><a class="dropdown-toggle active" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgba(255,255,255,0.75);border-color: rgba(0,0,0,0);font-size: 25px;font-family: Cabin, sans-serif;text-align: center;"><i class="fa fa-user-o" style="font-size: 24px;"></i></a>
                            <div class="dropdown-menu text-center"><a class="dropdown-item" href="../../PatientLogout" style="color: rgb(0,0,0);">Log out</a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
     <%
            
                String docname = request.getParameter("doctorName");
                String date = request.getParameter("apDate");
                String time = request.getParameter("apTime");  
                String apno = request.getParameter("apNo");
          
                                  
     %>


    <div class="container d-flex justify-content-center align-items-center" style="height: 800px;">
        
        <div>
            <h4 class='text-center' style="font-family: Cabin, sans-serif;color: rgb(19, 19, 19);" ></h4>
            <h4 class='text-center' style="font-family: Cabin, sans-serif;color: rgb(19, 19, 19);" ></h4>
            <h4 class='text-center' style="font-family: Cabin, sans-serif;color: rgb(19, 19, 19);" ></h4>
            <h4 class='text-center' style="font-family: Cabin, sans-serif;color: rgb(19, 19, 19);" ></h4>
            <h4 class='text-center' style="font-family: Cabin, sans-serif;color: rgb(19, 19, 19);" >LKR 2000</h4>
            <input class="d-flex justify-content-center" id="payhere-payment" name="submit" type="image" src="https://www.payhere.lk/downloads/images/pay_with_payhere.png" style="width:200px;" value="Buy Now">
        </div>
        
   
    </div>



    <footer style="background: #212121;">
        <div class="container text-center"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Privacy Policy</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">About</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Contact</a><a href="../feedback/new-feedback.html" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Leave Feedback</a></div>
        <div class="container text-center">
            <p style="font-family: Cabin, sans-serif;color: rgb(154,154,154);">CENTRAL HOSPITALS © 2021</p>
        
        </div>
        <div class="container text-center" style="font-size: 20px;font-family: Lora, serif;"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-facebook-square" style="color: rgb(255,255,255);"></i></a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-twitter-square" style="color: rgb(255,255,255);"></i></a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-instagram" style="color: rgb(255,255,255);"></i></a></div>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="../assets/js/grayscale.js"></script>


    <script>
        // Called when user completed the payment. It can be a successful payment or failure
        payhere.onCompleted = function onCompleted(orderId) {
            console.log("Payment completed. OrderID:" + orderId);
            //Note: validate the payment and show success or failure page to the customer
        };
    
        // Called when user closes the payment without completing
        payhere.onDismissed = function onDismissed() {
            //Note: Prompt user to pay again or show an error page
            console.log("Payment dismissed");
        };
    
        // Called when error happens when initializing payment such as invalid parameters
        payhere.onError = function onError(error) {
            // Note: show an error page
            console.log("Error:"  + error);
        };
    
        // Put the payment variables here
        var payment = {
            "sandbox": true,
            "merchant_id": "1217260",    // Replace your Merchant ID
            "return_url": "appointments.html",     // Important
            "cancel_url": "appointments.html",     // Important
            "notify_url": "http://sample.com/notify",
            "order_id": "ItemNo12345",
            "items": "Appointment",
            "amount": "2000.00",
            "currency": "LKR",
            "first_name": "Saman",
            "last_name": "Perera",
            "email": "samanp@gmail.com",
            "phone": "0771234567",
            "address": "No.1, Galle Road",
            "city": "Colombo",
            "country": "Sri Lanka",
            "delivery_address": "No. 46, Galle road, Kalutara South",
            "delivery_city": "Kalutara",
            "delivery_country": "Sri Lanka",
            "custom_1": "",
            "custom_2": ""
        };
    
        // Show the payhere.js popup, when "PayHere Pay" is clicked
        document.getElementById('payhere-payment').onclick = function (e) {
            payhere.startPayment(payment);
        };
    </script>
</body>

</html>