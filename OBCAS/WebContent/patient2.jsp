<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>OBCAS- Health &amp; Medical Template | Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
 
  
     <script src="js/jquery/jquery-2.2.4.min.js"></script>
     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <script>
     function myFunction() {
    	  var element = document.getElementById("style");
    	  element.classList.add("zing");
    	}
     </script>
     <script>
    
  $( function() {
    $( "#date" ).datepicker();
  } );
  </script>
  
     <script>
     $(document).ready(function(){
    			 
    	 $("#viewbookings").click(function(){
    		 $("#mybookings").style.visibility="visible";
    	 });
    	 $("#speciality").change(function(){
    		 var spec=$("#speciality").val();
    		 var patient='<%=session.getAttribute("username") %>' ;
    		 console.log(patient);
    		 $.ajax({
    			 type:'GET',
    			 data:{spec:spec,patient:patient},
    			 url:'jim.jsp',
    			 success: function(result){
    				 console.log("here");
    				 $("#doctors").html(result);
    				 
    			 }
    		 });
    		 
    	 });
    	 
    	 
    	 $("#doctors").change(function(){
    		 var doctor=$("#doctor").val();
    		 var patient='<%=session.getAttribute("username") %>' ;
    		 $("#date").change(function(){
    			 var date=$("#date").val();
    			 $.ajax({
        			 type:'GET',
        			 data:{doctor:doctor,date:date,patient:patient},
        			 url:'checkslot.jsp',
        			 success: function(result){
        				 console.log("here");
        				 $("#time").html(result);
        				 
        			 }
    		 });
    		
    		 });
    		 
    	 });
    	 $("#appbtn").click(function(){
    		 var time=$("#tim").val();
    		 var doctor=$("#doctor").val();
    		 var date=$("#date").val();
    		 var patient='<%=session.getAttribute("username") %>' ;
    		 $.ajax({
    			 type:'GET',
    			 data:{doctor:doctor,date:date,time:time,patient:patient},
    			 url:'bookappointment.jsp',
    			 success: function(result){
    				 console.log("here");
    				 $("#timeslot").html(result);
    				 
    			 }
		 });
    	 });
    	 
     });
     
     </script>
    

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="medilife-load"></div>
    </div>

    <!-- ***** Header Area Start ***** -->
    <header class="header-area">
        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="h-100 d-md-flex justify-content-between align-items-center">
                            <p>Welcome to <span>OBCAS</span> SERVICE</p>
                            <p>Opening Hours : Monday to Saturday - 8am to 10pm Contact : <span>+12-823-611-8721</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-header-area" id="stickyHeader">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 h-100">
                        <div class="main-menu h-100">
                            <nav class="navbar h-100 navbar-expand-lg">
                                <!-- Logo Area  -->
                                <a class="navbar-brand" href="index.html"><img src="img/core-img/logo.png" alt="Logo"></a>

                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                <div class="collapse navbar-collapse" id="medilifeMenu">
                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                       
                                        <li class="nav-item">
                                            <a class="nav-link" href="#123">MAKE APPOINTMENT</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#124">VIEW BOOKINGS</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#125">VIEW PRESCRIPTION</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#126">FEEDBACK</a>
                                        </li>
                                    </ul>
                                    <!-- Appointment Button -->
                                    <a href="#" class="btn medilife-appoint-btn ml-30">For <span>emergencies</span> Click here</a>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
        

    <!-- ***** Hero Area Start ***** -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel" >
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/hero1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                            
                                <h2 data-animation="fadeInUp" data-delay="100ms">WELCOME <%=session.getAttribute("username") %><br></h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">THE FIRST STEP TO DIGITAL WORLD AT IIT KHARAGPUR</h6>
                                <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">Discover Medifile <span>+</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/hero2.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">Medical Services that <br>You can Trust 100%</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">BRINGING YOU THE FIRST EVER ONLINE APPOINTMENT SYSTEM IN IIT KHARAGPUR</h6>
                                <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">Discover Medifile <span>+</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/hero3.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">Medical Services that <br>You can Trust 100%</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">BRINGING YOU THE FIRST EVER ONLINE APPOINTMENT SYSTEM IN IIT KHARAGPUR</h6>
                                <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">Discover Medifile <span>+</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Hero Area End ***** -->

    <!-- ***** Book An Appoinment Area Start ***** -->
      <!-- add space-->
   
      <div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div id="123" ><center> <h3>BOOK APPOINTMENT</h3> </center></div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
  

    <div class="medilife-book-an-appoinment-area"  >
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content" >
                        <div class="row no-gutters align-items-center">
                            <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                       
                                    <form  >
                                        <div class="row align-items-end">
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <select class="form-control" id="speciality">
                                                    <option>DERMATOLOGY</option>
                                                    <option>CARDIOLOGY</option>
                                                    <option>ORTHOPAEDIC</option>
                                                    <option>DERMATOLOGY</option>
                                                    <option>DENTAL</option>
                                                     <option>GENERAL</option>
                                                </select>
                                                </div>
                                            </div>
                                          
                                            <div class="col-12 col-md-4">
                                                <div class="form-group" id="doctors">
                                                    
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-2">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="date" id="date" placeholder="Date">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-2">
                                                <div class="form-group" id="time">
                                                    
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="name" id="name" placeholder="Name">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="number" id="number" placeholder="Phone">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="email" id="email" placeholder="E-mail">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-7">
                                                <div class="form-group mb-0">
                                                    <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                    <button type="submit" id="appbtn" class="btn medilife-btn">Make an Appointment <span>+</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                             <div id="timeslot" >
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- ***** Book An Appoinment Area End ***** -->
   <!-- add space-->
  <div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div id="124" ><center><h3>VIEW BOOKINGS</h3></center></div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
>
    <div class="medilife-book-an-appoinment-area"  >
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content" >
                        <div class="row no-gutters align-items-center">
                            <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                       
                                    <form   >
                                        <div class="row align-items-end">
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <div class="form-group mb-0">
                                                    <button  id="viewbookings" class="btn medilife-btn">VIEW BOOKINGS<span>+</span></button>
                                                </div>
                                                </div>
                                            </div>
                                          
                                            
                                                
                                               <div class="form-group mb-0" id="mybookings" style="visibility:hidden;">
                                                <br>
                                                   <br>
                                                   <br>
                                                 <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="mybookings" cols="60" rows="10" placeholder="My Bookings" style="visibility:hidden;"></textarea>
                                             </div>   
                                                
                                            </div>
                                             <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                     <br>
                                                   <br>
                                                   <br>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                   <br>
                                                   <br>
                                                   <br>
                                                </div>
                                            </div>
                                           <div class="col-12 col-md-7">
                                                <div class="form-group mb-0">
                                                    <button type="submit" class="btn medilife-btn">CANCEL BOOKINGS <span>+</span></button>
                                                </div>
                                            </div>
                                            
                                           
                                           
                                            
                                           
                                            
                                        
                                    </form>
                                </div>
                            </div>
                            <div class="col-12 col-lg-3">
                                <div class="medilife-contact-info">
                                    <!-- Single Contact Info -->
                                   <form >
                                    <div class="single-contact-info mb-30">
 										 <input type="radio" name="gender" value="male"><p>Male</p><br>
 										 <input type="radio" name="gender" value="female"><p>Female</p><br>
 										<input type="radio" name="gender" value="other"><p>Other</p><br>  
 										<input type="radio" name="gender" value="male"><p>Male</p><br>
 										 <input type="radio" name="gender" value="female"><p>Male</p><br>
 										<input type="radio" name="gender" value="other"><p>Other</p><br>  
  										<input type="submit" value="Submit">
  										</div>
									</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- add space-->
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div id="123" ><center><h3>BOOK APPOINTMENT</h3></center></div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>


 <div class="medilife-book-an-appoinment-area"  >
     <div class="container">
         <div class="row">
             <div class="col-12">
                 <div class="appointment-form-content" >
                     <div class="row no-gutters align-items-center">
                         <div class="col-12 col-lg-9">
                             <div class="medilife-appointment-form">
                                    
                                 <form action="makeappointment" method="post" >
                                     <div class="row align-items-end">
                                         <div class="col-12 col-md-4">
                                             <div class="form-group">
                                                 <select class="form-control" id="speciality">
                                                 <option>DERMATOLOGY</option>
                                                 <option>CARDIOLOGY</option>
                                                 <option>Speciality 3</option>
                                                 <option>Speciality 4</option>
                                                 <option>Speciality 5</option>
                                             </select>
                                             </div>
                                         </div>
                                       
                                         <div class="col-12 col-md-4">
                                             <div class="form-group">
                                                 <select class="form-control" id="doctors">
                                                        
                                             </select>
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-2">
                                             <div class="form-group">
                                                 <input type="text" class="form-control" name="date" id="date" placeholder="Date">
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-2">
                                             <div class="form-group">
                                                 <input type="text" class="form-control" name="time" id="time" placeholder="Time">
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-4">
                                             <div class="form-group">
                                                 <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="name" id="name" placeholder="Name">
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-4">
                                             <div class="form-group">
                                                 <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="number" id="number" placeholder="Phone">
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-4">
                                             <div class="form-group">
                                                 <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="email" id="email" placeholder="E-mail">
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-7">
                                             <div class="form-group mb-0">
                                                 <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                             </div>
                                         </div>
                                         <div class="col-12 col-md-5 mb-0">
                                             <div class="form-group mb-0">
                                                 <button type="submit" class="btn medilife-btn">Make an Appointment <span>+</span></button>
                                             </div>
                                         </div>
                                     </div>
                                 </form>
                             </div>
                         </div>
                         <div class="col-12 col-lg-3">
                             <div class="medilife-contact-info">
                                 <!-- Single Contact Info -->
                                 <div class="single-contact-info mb-30">
                                     <img src="img/icons/alarm-clock.png" alt="">
                                     <p>Mon - Sat 08:00 - 21:00 <br>Sunday CLOSED</p>
                                 </div>
                                 <!-- Single Contact Info -->
                                 <div class="single-contact-info mb-30">
                                     <img src="img/icons/envelope.png" alt="">
                                     <p>0080 673 729 766 <br>BCROY@iitkgp.ac.in</p>
                                 </div>
                                 <!-- Single Contact Info -->
                                 <div class="single-contact-info">
                                     <img src="img/icons/map-pin.png" alt="">
                                     <p>IIT KHARAGPUR<br>721302 WEST BENGAL</p>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <!-- add space-->
 <div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div id="123" ><center><h3>BOOK APPOINTMENT</h3></center></div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>
<div> <br> </div>

  <div class="medilife-book-an-appoinment-area"  >
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <div class="appointment-form-content" >
                      <div class="row no-gutters align-items-center">
                          <div class="col-12 col-lg-9">
                              <div class="medilife-appointment-form">
                                     
                                  <form action="makeappointment" method="post" >
                                      <div class="row align-items-end">
                                          <div class="col-12 col-md-4">
                                              <div class="form-group">
                                                  <select class="form-control" id="speciality">
                                                  <option>DERMATOLOGY</option>
                                                  <option>CARDIOLOGY</option>
                                                  <option>ORTHOPAEDIC</option>
                                                  <option>DERMATOLOGY</option>
                                                  <option>DENTAL</option>
                                                  <option>GENERAL</option>
                                              </select>
                                              </div>
                                          </div>
                                        
                                          <div class="col-12 col-md-4">
                                              <div class="form-group">
                                                  <select class="form-control" id="doctors">
                                                         
                                              </select>
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-2">
                                              <div class="form-group">
                                                  <input type="text" class="form-control" name="date" id="date" placeholder="Date">
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-2">
                                              <div class="form-group">
                                                  <input type="text" class="form-control" name="time" id="time" placeholder="Time">
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-4">
                                              <div class="form-group">
                                                  <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="name" id="name" placeholder="Name">
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-4">
                                              <div class="form-group">
                                                  <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="number" id="number" placeholder="Phone">
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-4">
                                              <div class="form-group">
                                                  <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="email" id="email" placeholder="E-mail">
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-7">
                                              <div class="form-group mb-0">
                                                  <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                              </div>
                                          </div>
                                          <div class="col-12 col-md-5 mb-0">
                                              <div class="form-group mb-0">
                                                  <button type="submit" class="btn medilife-btn">Make an Appointment <span>+</span></button>
                                              </div>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                          <div class="col-12 col-lg-3">
                              <div class="medilife-contact-info">
                                  <!-- Single Contact Info -->
                                  <div class="single-contact-info mb-30">
                                      <img src="img/icons/alarm-clock.png" alt="">
                                      <p>Mon - Sat 08:00 - 21:00 <br>Sunday CLOSED</p>
                                  </div>
                                  <!-- Single Contact Info -->
                                  <div class="single-contact-info mb-30">
                                      <img src="img/icons/envelope.png" alt="">
                                      <p>0080 673 729 766 <br>BCROY@iitkgp.ac.in</p>
                                  </div>
                                  <!-- Single Contact Info -->
                                  <div class="single-contact-info">
                                      <img src="img/icons/map-pin.png" alt="">
                                      <p>IIT KHARAGPUR<br>721302 WEST BENGAL</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
   
    
        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="bottom-footer-content">
                            <!-- Copywrite Text -->
                            <div class="copywrite-text">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ***** Footer Area End ***** -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
   
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

</body>

</html>