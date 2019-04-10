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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
    
    <style>
	
	div.relative {
	  position: relative;
	  top: 100px;
	}
	
	div.relative1 {
	  position: relative;
	  bottom: 35px;
	}
	
	div.relative2 {
	  position: relative;
	  bottom: 350px;
	}
	
	</style>
 	
 	<script src="js/jquery/jquery-2.2.4.min.js"></script>
     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/jquery/jquery.autocomplete.js"></script>
     
     <script>
     function myFunction() {
    	  var element = document.getElementById("style");
    	  element.classList.add("zing");
    	}
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
                                <a class="navbar-brand"><h1>OBCAS<span>+</span></h1></a>

                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                <div class="collapse navbar-collapse" id="medilifeMenu">
                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ml-auto">

                                        <li class="nav-item">
                                            <a class="nav-link" href="#121">VIEW APPOINTMENTS</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#122">UPDATE APPOINTMENTS</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#123">VIEW PATIENT INFO</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#124">PATIENT MESSAGE</a>
                                        </li>
                                        <li class="nav-item">
                               <!--             <button  type="button" class="btn medilife-btn" onclick="return confirm('Are you sure want to log out')" href="doctorLogin.jsp">Logout</button>   --> 
                               					<a class="nav-link" href="doctorLogin.jsp" onclick="return confirm('Are you sure want to log out')">Logout</a>
                                        </li>
                                    </ul>
 
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
        
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/bcroy2.jpeg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                
							
                                
                                <h2 data-animation="fadeInUp" data-delay="100ms">Welcome Doctor</h2>
                                <h2 data-animation="fadeInUp" data-delay="400ms"><font color=<% out.println("red"); %>><%out.println(request.getParameter("doctor_name"));%></font></h2>
<a name="#121"></a> 
                            </div>
                        </div>
                    </div>
   
                    
                </div>
            </div>  
          
    </section>
    
    <!-- ***** Hero Area End ***** -->

    <!-- ***** Book An Appoinment Area Start ***** -->
    			
   			
    <br>		
    <br>
    <br>	
    				<h2><font color='black' class='center' ><center><u>VIEW APPOINTMENTS</u></center></font></h2>
    <br>
    <br>			
    <br>
   
    <div class="medilife-book-an-appoinment-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content">
                        <div class="row no-gutters align-items-center">
							
							                            
                            <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                	
                                	
                                	
                                	<h3><font color='yellow'><u>Appointments</u></font></h3>
                                    
                                   
                                    
                                    <div id="view_appointments_div." >
                                      
                                    <form>
                                        <br>
                                        <div class="row align-items-end">
                   <!--                         <div class="col-12 col-md-4">
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
                -->                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <select class="form-control" id="app_doc" name="app_doc">
                                                    <option disabled="disabled" selected="selected">Select Doctor</option>
                                                    <option><%= request.getParameter("doctor_name") %></option>
                                                </select>
                        
                                                </div>
                                            </div>
                                            
 											<div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_date" id="app_date" placeholder="Date">
                                             
                                                </div>
                                            </div>
                                            
                                            <script>
											    
												  $( function() {
												    $( "#app_date" ).datepicker();
												  } );
											  </script>
                        
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                
                                                	<button  type="button" name="zing" id="zing" class="btn medilife-btn"  onclick="view_appinfo(app_date.value,app_doc.value)">View Appointments</button>
                                                </div>
                                          	</div>  
                                        </div>
                                    
                                    <div id="appinfo">
                                           <p>Appointment details displayed here</p>
                                     </div>
                                           
                                    </form>
                                    </div>
                                    
                                    <a name="#122"></a>
 					</div>
 					</div>
 					 			
  					</div>
  					</div>
  					</div>
  					</div>
  					</div>
  					</div>	
  						
  						 <br>
  						<br>
  						<br>
  								<h2><font color='black'><center><u>UPDATE APPOINTMENTS</u></center></font></h2>
  						<br>
  						<br>
  						 <br>
  						
  <div class="medilife-book-an-appoinment-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content">
                        <div class="row no-gutters align-items-center">
  						
  						
  						<div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                            
   									<h3><font color='yellow'><u>Update</u></font></h3>
                                    
                                    <div id="update_appointments_div">
                                      
                                    <form action="update_appointment" method="post">
                                        <br>
                                        <div class="row align-items-end">
             <!--                                 <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <select class="form-control" id="day_u" name="app_day_u_past">
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
              -->                              
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_day_u" id="app_day_u" placeholder="Date">
                                                </div>
                                            </div>
                                            
                                            <script>
											    
												  $( function() {
												    $( "#app_day_u" ).datepicker();
												  } );
											  </script>
                                           
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_time_u" id="app_time_u" placeholder="HH:MM:SS">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                <select class="form-control" id="app_doc_u" name="app_doc_u">
                                                    <option disabled="disabled" selected="selected">Select Doctor</option>
                                                    <option><%= request.getParameter("doctor_name") %></option>option>
                                                </select>

                                                </div>
                                            </div>
           
                                            <div class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                    <button id="pres_btn" type="button" class="btn medilife-btn" > Enter Prescription </button>
                                                    
                                                </div>
                                            </div>
                                            
                                           
                                            
                                             <div  class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                	
                                                	
                                                    
                                                    <button type="submit" class="btn medilife-btn" value="update_appointment" onclick="return confirm('Are you sure you want to delete appointment on '+app_day_u.value+' at '+app_time_u.value)"> Delete Appointment </button>
													                                                
                                                </div>
                                            </div>
                                            
                                         
                                             <div id="pres_msg" class="col-12 col-md-7">
                                                <div class="form-group mb-0">
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                	<br>
                                                	<button type="submit" class="btn medilife-btn" value="update_appointment" onclick="return confirm('Are you sure you want to update prescription for appointment on '+app_day_u.value+' at '+app_time_u.value)"> Update </button>
                                                </div>
                                            </div>
                                            
                                            <script type="text/javascript">
													document.getElementById('message').value = 'empty';
											</script>
                                            
                                        
                                        </div>
                                    </form>
                                    </div>
								
									<a name="#123"></a>
									
							</div>
							</div>			
										

							
							</div>
  					</div>
  					</div>
  					</div>
  					</div>
  					</div>	
  						
  						 <br>
  						<br>
  						<br>
  								<h2><font color='black'><center><u>VIEW PATIENT INFO</u></center></font></h2>
  						<br>
  						<br>
  						 <br>
  						
  <div class="medilife-book-an-appoinment-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content">
                        <div class="row no-gutters align-items-center">
							
							
										
							<div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">			
										
									<h3><font color='yellow'><u>Patient</u></font></h3>
                    
                                    <div id="patient_info_div" >
                                      
                                   <form>
                                        <br>
                                        <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="pname" id="pname" placeholder="Patient Name">
                               
                                                    <button  type="button" class="btn medilife-btn" onclick="view_info(pname.value)">View Info</button>
                                                </div>
                                            </div>
                                            

                                           
                                            
                                            <div id="pinfo">
                                            	<p>Patient info displayed here</p>
                                            </div>
                                           

                                        
                                    </form>
                                    </div>
                                     
                                     <a name="#124"></a>
						
						</div>
						</div>
							
							</div>
  					</div>
  					</div>
  					</div>
  					</div>
  					</div>	
  						
  						 <br>
  						<br>
  						<br>
  								<h2><font color='black'><center><u>PATIENT MESSAGE</u></center></font></h2>
  						<br>
  						<br>
  						 <br>
  						
  <div class="medilife-book-an-appoinment-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content">
                        <div class="row no-gutters align-items-center">
							
							<div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">			
										
									<h3><font color='yellow'><u>Message</u></font></h3>
                    
                                    <div id="patient_review_div" >
                                      
                                    <form>
                                        <br>
                          
                               			
                               			
                               			<div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_day_msg" id="app_day_msg" placeholder="Date">
                                                </div>
                                            </div>
                                            
                                            <script>
											    
												  $( function() {
												    $( "#app_day_msg" ).datepicker();
												  } );
											  </script>
                                           
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="pname_msg" id="pname_msg" placeholder="Patient Name">
                               					</div>
                               			</div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                <select class="form-control" id="dname_msg" name="dname_msg">
                                                    <option disabled="disabled" selected="selected">Select Doctor</option>
                                                    <option><%= request.getParameter("doctor_name") %></option>option>
                                                </select>

                                                </div>
                                            </div>
           
                        
                                            
                                           
                                            
                                             <div  class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                	
                                                	
                                                    
                                                    <button type="button" class="btn medilife-btn"  onclick="view_msg(app_day_msg.value, pname_msg.value, dname_msg.value)"> View Message </button>
													                                                
                                                </div>
                                            </div>
                                            
                                            <div id="display_msg">
                                            	<p>Patient message displayed here</p>
                                            </div>
                                           

                                        
                                    </form>
                                    </div>
                                     
						
						</div>
						</div>
                            
                            
                            
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
                                    
									
									function view_appinfo(appstr,appdoc) {
										
                      
                                    	
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
									  
    									
                                    	let cnfm = confirm("You are about to view your appointments for "+appstr);
                                    	
                                    	if (!cnfm) return ;
                                    	
                                    	xhttp1.open("GET", "send_app_info.jsp?appday="+appstr+"&appdoc="+appdoc, true);
									  	
                                    	
                                    	
                                    	xhttp1.send();
                                    	
                                    	
                                    }
                                    
                              
									
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
                                    
                                    function view_msg(str1, str2, str3) {
   									 
                                    	var xhttp = new XMLHttpRequest();                  	
   
									  
                                    	xhttp.onreadystatechange = function() {
									    
                                    		if (this.readyState == 4 && this.status == 200) {
									      
                                    			document.getElementById("display_msg").innerHTML =
									      
                                    				this.responseText;
									    
                                    		}
									  
                                    	};
									  
                                    	xhttp.open("GET", "send_msg.jsp?adate="+str1+"&pname="+str2+"&dname="+str3, true);
									  
                                    	xhttp.send();
									
                                    }
									
                                    </script>
                                         
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
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
    <script src="js/jquery/jquery-1.12.1.min.js"></script>
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