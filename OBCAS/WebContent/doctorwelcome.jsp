<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.IOException" %>
<%@ page import="LOGIN.DAO.*" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.sql.*" %>
    
    
    <% ResultSet rs = null;
       Connection con = null; %>
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
    <link rel="icon" href="images/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

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
     </header>

        

    <!-- ***** Hero Area Start ***** -->
    <section class="hero-area">
        
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/hero1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                

                                
                                <h2 data-animation="fadeInUp" data-delay="100ms">Welcome Doctor</h2>
                                <h2 data-animation="fadeInUp" data-delay="400ms"><font color=<% out.println("red"); %>><%out.println(request.getParameter("doctor_name"));%></font></h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div>   
    </section>
    <!-- ***** Hero Area End ***** -->

    <!-- ***** Book An Appoinment Area Start ***** -->
    <div class="medilife-book-an-appoinment-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content">
                        <div class="row no-gutters align-items-center">
                            <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                
                                	<button id="view_appointments_bt" type="button" class="btn medilife-btn">View Appointments</button>
                                    
                                    <div id="view_appointments_div">
                                      
                                    <form>
                                        <br>
                                        <div class="row align-items-end">
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <select class="form-control" id="day" name="app_day">
                                                    <option disabled="disabled" selected="selected">Select Day</option>
                                                    <option>Monday</option>
                                                    <option>Tuesday</option>
                                                    <option>Wednesday</option>
                                                    <option>Thursday</option>
                                                    <option>Friday</option>
                                                    <option>Saturday</option>
                                                </select>
                                                  
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_doc" id="app_time" placeholder="Doctor Name">
                                                </div>
                                            </div>
                                            
                <!--                        <script type="text/javascript">
													document.getElementById('app_time').value = 'doctor';
											</script>
                -->                       
                                            <div class="col-12 col-md-3">
                                                <div class="form-group">
                                                	<button  type="button" class="btn medilife-btn" onclick="view_appinfo(app_day.value, app_doc.value)">View Appointments</button>
                                                </div>
                                          	</div>
                                        </div>
                                    
                                    <div id="appinfo">
                                           <p>Appointment details displayed here</p>
                                     </div>
                                           
                                    </form>
                                    </div>
                                    
                                    <script>
                                    
                                    var button1 = document.getElementById("view_appointments_bt");
									var myDiv1 = document.getElementById("view_appointments_div");

									function show1() {
    									myDiv1.style.visibility = "visible";
									}

									function hide1() {
									    myDiv1.style.visibility = "hidden";
									}

									function toggle1() {
									    if (myDiv1.style.visibility == "hidden") {
									        show1();
									    } else {
									        hide1();
									    }
									}
									
									hide1();
									
									button1.addEventListener("click", toggle1, false);
                                    
                                    </script>
                                    
                                    
                                    
                                    <script>
                                    
                                    function view_appinfo(appstr, appdoc) {

                                    	
                                    	var xhttp1 = new XMLHttpRequest();
                                    	
                                    	console.log(appstr);
                                    	console.log(appdoc);
                                    	
                                    	<%		System.out.println("AppInfo"); %>
									  
                                    	xhttp1.onreadystatechange = function() {
									    
                                    		if (this.readyState == 4 && this.status == 200) {
									      
                                    			document.getElementById("appinfo").innerHTML =
									      
                                    				this.responseText;
									    
                                    		}
									  
                                    	};
									  
    
                                    	
                                    	xhttp1.open("GET", "send_app_info.jsp?appday="+appstr+"&appdoc="+appdoc, true);
									  
                                    	
                                    	
                                    	xhttp1.send();
                                    	
                                    	console.log(appdoc);
									
                                    }
                                    
                                    </script>

                                </div>
                            </div>
                            
                            
                            
                            <br>
                            
                            
                            
                            
                             <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                
                                	<button id="update_appointments_bt" type="button" class="btn medilife-btn">Update Appointments</button>
                                    
                                    <div id="update_appointments_div">
                                      
                                    <form action="update_appointment" method="post">
                                        <br>
                                        <div class="row align-items-end">
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                   <select class="form-control" id="day_u" name="app_day_u">
                                                    <option disabled="disabled" selected="selected">Select Day</option>
                                                    <option>Monday</option>
                                                    <option>Tuesday</option>
                                                    <option>Wednesday</option>
                                                    <option>Thursday</option>
                                                    <option>Friday</option>
                                                    <option>Saturday</option>
                                                </select>
                                                
                                                </div>
                                            </div>
                                           
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_time_u" id="app_time" placeholder="HH:MM:SS">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_doc_u" id="app_time" placeholder="Doctor Name">
                                                </div>
                                            </div>
           
                                            <div class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                    <button id="pres_btn" type="button" class="btn medilife-btn" > Enter Prescription </button>
                                                    
                                                </div>
                                            </div>
                                            
                                             <div  class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                    
                                                    <button type="submit" class="btn medilife-btn" value="update_appointment"> Delete Appointment </button>
													                                                
                                                </div>
                                            </div>
                                            
                                             <div id="pres_msg" class="col-12 col-md-7">
                                                <div class="form-group mb-0">
                                                    <br>
                                                    <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                	<button type="submit" class="btn medilife-btn" value="update_appointment"> Update </button>
                                                </div>
                                            </div>
                                            
                                        
                                        </div>
                                    </form>
                                    </div>
                                    
                                    <script>
                                    
                                    var button2 = document.getElementById("update_appointments_bt");
									var myDiv2 = document.getElementById("update_appointments_div");

									function show2() {
    									myDiv2.style.visibility = "visible";
									}

									function hide2() {
									    myDiv2.style.visibility = "hidden";
									}

									function toggle2() {
									    if (myDiv2.style.visibility == "hidden") {
									        show2();
									    } else {
									        hide2();
									    }
									}
									
									hide2();
									
									button2.addEventListener("click", toggle2, false);
                                    
                                    </script>
                                    
                                    <script>
                                    
                                    var button2a = document.getElementById("pres_btn");
									var myDiv2a = document.getElementById("pres_msg")

									function show2a() {
    									myDiv2a.style.visibility = "visible";
    									
									}

									function hide2a() {
									    myDiv2a.style.visibility = "hidden";
									    
									}

									function toggle2a() {
									    if (myDiv2a.style.visibility == "hidden") {
									        show2a();
									    } else {
									        hide2a();
									    }
									}
									
									hide2a();
									
									button2a.addEventListener("click", toggle2a, false);
                                    
                                    </script>
                                    
                                    

                                </div>
                            </div>
                            
                            
                            
                            
                            
                            <br>
                            
                            
                            
                            
                             <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                
                                	<button id="patient_info_bt" type="button" class="btn medilife-btn" >View Patient Info</button>
  
   
                    
                                    <div id="patient_info_div">
                                      
                                    <form>
                                        <br>
                                        <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="pname" id="name" placeholder="Patient Name">
                               
                                                    <button  type="button" class="btn medilife-btn" onclick="view_info(pname.value)">View Info</button>
                                                </div>
                                            </div>
                                            
                  
                                           
                                            
                                            <div id="pinfo">
                                            	<p>Patient details displayed here</p>
                                            </div>
                                           

                                        
                                    </form>
                                    </div>
                                    
                                    <script>
                                    
                                    var button3 = document.getElementById("patient_info_bt");
									var myDiv3 = document.getElementById("patient_info_div");
									

									function show3() {
    									myDiv3.style.visibility = "visible";
    							<%		System.out.println("Hello"); %>
									}

									function hide3() {
									    myDiv3.style.visibility = "hidden";
									}

									function toggle3() {
									    if (myDiv3.style.visibility == "hidden") {
									        show3();
									    } else {
									        hide3();
									    }
									}
									
									hide3();
									
									button3.addEventListener("click", toggle3, false);
                                    
                                    </script>
                                    
                                    <script>
									
                                    function view_info(nstr) {
									 
                                    	var xhttp = new XMLHttpRequest();
                                    	
                                    	console.log(nstr);
                                    	
                                    	<%		System.out.println("Bye"); %>
									  
                                    	xhttp.onreadystatechange = function() {
									    
                                    		if (this.readyState == 4 && this.status == 200) {
									      
                                    			document.getElementById("pinfo").innerHTML =
									      
                                    				this.responseText;
									    
                                    		}
									  
                                    	};
									  
                                    	xhttp.open("GET", "send_pinfo.jsp?pname="+nstr, true);
									  
                                    	xhttp.send();
									
                                    }
									
                                    </script>
                                    
                          
                                    
                                    

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
                                        <p>0080 673 729 766 <br>contact@business.com</p>
                                    </div>
                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info">
                                        <img src="images/icons/map-pin.png" alt="">
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
    <!-- ***** Book An Appoinment Area End ***** -->
    
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
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
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