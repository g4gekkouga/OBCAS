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
  
  <script src="js/jquery/jquery-2.2.4.min.js"></script>
     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
                                            <a class="nav-link" href="#122">VIEW PATIENT INFO</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#123">VIEW DOCTOR INFO</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#124">REGISTER DOCTOR</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#125">REMOVE DOCTOR</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#126">REMOVE PATIENT</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#127">DOCTOR FEEDBACK</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#128">ALL DOCTORS</a>
                                        </li>
                                        <li class="nav-item">
                       <!--                     <button  type="button" class="btn medilife-btn" onclick="return confirm('Are you sure want to log out')" href="adminLogin.jsp">Logout</button>   --> 
                                       			<a class="nav-link" href="adminLogin.jsp?status=' Log out successful '"  onclick="return confirm('Are you sure want to log out')">Logout</a>
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
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/bcroy3.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                

                                
                                <h2 data-animation="fadeInUp" data-delay="100ms">Welcome Admin</h2>
                                <h2 data-animation="fadeInUp" data-delay="400ms"><font color=<% out.println("red"); %>><%out.println(request.getParameter("admin_name"));%></font></h2>
								
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
    					<h2><font color='black'><center><u>VIEW APPOINTMENTS</u></center></font></h2>
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
                     
                                    
                                    <div id="view_appointments_div">
                                      
                                    <form>
                                        <br>
                                        <div class="row align-items-end">
                                            
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="app_day" id="app_day" placeholder="Date">
                                             
                                                </div>
                                            </div>
                                            
                                            <script>
											    
												  $( function() {
												    $( "#app_day" ).datepicker();
												  } );
											  </script>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" list="doctor_names" class="form-control" name="app_doc" id="app_time" placeholder="Doctor Name">
                                                
                                            <datalist id="doctor_names">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_dnames() {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("doctor_names").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_dnames.jsp", true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  	get_dnames();
													  
													  
													  </script>
										</div>
                                            </div>
                                            
                <!--                        <script type="text/javascript">
													document.getElementById('app_time').value = 'doctor';
											</script>
                -->                       
                                            <div class="col-12 col-md-6">
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
 <a name="#122"></a>
                        
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
                                                    <input type="text" list="patient_names" class="form-control border-top-0 border-right-0 border-left-0" name="pname" id="name" placeholder="Patient Name">
                               						<datalist id="patient_names">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_names() {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("patient_names").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_names.jsp", true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  	get_names();
													  
													  
													  </script>
                               						
                               						
                               						
                                                    <button  type="button" class="btn medilife-btn" onclick="view_info(pname.value)">View Info</button>
                                                </div>
                                            </div>
                                            
                  
                                           
                                            
                                            <div id="pinfo">
                                            	<p>Patient info displayed here</p>
                                            </div>
                                           

                                        
                                    </form>
                                    </div>
                                     
<a name="#123"></a>						
						</div>
						</div>
						
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
  					</div>
  					</div>
  					</div>
  					</div>	
  						
  						 <br>
  						<br>
  						<br>
  								<h2><font color='black'><center><u>VIEW DOCTOR INFO</u></center></font></h2>
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
										
									<h3><font color='yellow'><u>Doctor</u></font></h3>
                    
                                    <div id="doctor_info_div" >
                                      
                                    <form>
                                        <br>
                                        <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" list="doctor_names2" class="form-control border-top-0 border-right-0 border-left-0" name="dname" id="dname" placeholder="Doctor Name">
                               						<datalist id="doctor_names2">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_dnames2() {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("doctor_names2").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_dnames.jsp", true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  	get_dnames2();
													  
													  
													  </script>
                               
                               
                                                    <button  type="button" class="btn medilife-btn" onclick="view_dinfo(dname.value)">View Info</button>
                                                </div>
                                            </div>
                                            
                  
                                           
                                            
                                            <div id="dinfo">
                                            	<p>Doctor info displayed here</p>
                                            </div>
                                           

                                        
                                    </form>
                                    </div>
 <a name="#124"></a>                                    
						
						</div>
						</div>
						
						<script>
						
						function view_dinfo(nstr) {
							 
                        	var xhttp = new XMLHttpRequest();
                        	
                        	console.log(nstr);
                        	
                        	<%		System.out.println("Bye"); %>
						  
                        	xhttp.onreadystatechange = function() {
						    
                        		if (this.readyState == 4 && this.status == 200) {
						      
                        			document.getElementById("dinfo").innerHTML =
						      
                        				this.responseText;
						    
                        		}
						  
                        	};
						  
                        	xhttp.open("GET", "send_dinfo.jsp?dname="+nstr, true);
						  
                        	xhttp.send();
						
                        }
						
                        </script>
                        
                    </div>    
                    </div>
  					</div>
  					</div>
  					</div>
  					</div>	
  						
  						 <br>
  						<br>
  						<br>
  								<h2><font color='black'><center><u>REGISTER NEW DOCTOR</u></center></font></h2>
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
                                
                                	<h3><font color='yellow'><u>Registration</u></font></h3>
                                    
                                    <div id="register_doc_div">
                                      
                                    <form action="Register_Doc" method="post">
                                        <br>
                                        <div class="row align-items-end">


                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="doc_name" id="doc_name" placeholder="Doctor Name">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="doc_uname" id="doc_uname" placeholder="Doctor User Name">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="password" class="form-control" name="doc_pass" id="doc_pass" placeholder="Enter Password">
                                                </div>
                                            </div>
                                            
                                              <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <select class="form-control" id="doc_sex" name="doc_sex">
                                                    <option disabled="disabled" selected="selected">Select Gender</option>
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    <option>Other</option>
                         
                                                </select>
                                                  
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">        
                                                
                                                	<select class="form-control" id="doc_spec" name="doc_spec">
                                                    <option disabled="disabled" selected="selected">Select Category</option>
                                                    <option>CARDIOLOGY</option>
                                                    <option>OPTOMOLOGY</option>
                                                    <option>SURGEON</option>
                                                    <option>PATHOLOGY</option>
                                                    <option>DENTAL</option>
                                                    <option>ORTHOPADIC</option>
                                                    <option>ENT</option>
                         
                                                </select>
                                                
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="doc_s" id="doc_s" placeholder="Specialization">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="email" class="form-control" name="doc_email" id="doc_email" placeholder="Doctor Email">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="doc_mobile" id="doc_mobile" placeholder="Doctor Mobile No">
                                                </div>
                                            </div>
           
                            				
                            				
                                            
                                             <div  class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                    
                                                    <button type="submit" class="btn medilife-btn" value="Register_Doc" onclick="return confirm('Are you sure you want to create New Doctor : '+doc_name.value)"> Register Doctor </button>
													                                                
                                                </div>
                                            </div>
                                          
                  
                                        </div>
                                    </form>
                                    </div>
  <a name="#125"></a>                                  
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
  								<h2><font color='black'><center><u>REMOVE DOCTOR</u></center></font></h2>
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
                                
                                	<h3><font color='yellow'><u>Remove Doctor</u></font></h3>
  
   
                    
                                    <div id="delete_doc_div">
                                      
                                    <form action="Delete_Doc" method="post">
                                        
                                        <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
                                                    
                                                    <input type="text" list="doctor_names3" class="form-control border-top-0 border-right-0 border-left-0" name="doctor_name" id="doctor_name" placeholder="Doctor Name">
													<datalist id="doctor_names3">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_dnames3() {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("doctor_names3").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_dnames.jsp", true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  	get_dnames3();
													  
													  
													  </script>

                                                </div>
                                            </div>
                                            
                                        <div  class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
												<button type="submit" class="btn medilife-btn" value="Delete_Doc" onclick="return confirm('Are you sure you want to remove Doctor : '+doctor_name.value)"> Remove </button>
													                                                
                                                </div>
                                            </div>
                                           
                                        
                                    </form>
                                    </div>
                                    
<a name="#126"></a>

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
  								<h2><font color='black'><center><u>REMOVE PATIENT</u></center></font></h2>
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
                                
                   <h3><font color='yellow'><u>Remove Patient</u></font></h3>
  
   
                    
                                    <div id="delete_pat_div">
                                      
                                    <form action="Delete_Pat" method="post">
                                        <br>
                                        <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
                                                    <input type="text" list="patient_names2" class="form-control border-top-0 border-right-0 border-left-0" name="patient_name" id="patient_name" placeholder="Patient Name">
													<datalist id="patient_names2">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_names2() {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("patient_names2").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_names.jsp", true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  	get_names2();
													  
													  
													  </script>

                                                </div>
                                            </div>
                                            
                                        <div  class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
												<button type="submit" class="btn medilife-btn" value="Delete_Pat" onclick="return confirm('Are you sure you want to remove Patient : '+patient_name.value)"> Remove </button>
													                                                
                                                </div>
                                            </div>
                                           
                                        
                                    </form>
                                    </div>
                                    
                                    <a name="#127"></a>

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
  								<h2><font color='black'><center><u>DOCTOR FEEDBACK</u></center></font></h2>
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
                                
                   <h3><font color='yellow'><u>Feedback</u></font></h3>
  
   
                    
                                    <div id="delete_pat_div">
                                      
                                    <form action="Delete_Pat" method="post">
                                        <br>
                                      
                                            
                                         
                                         <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
                                                    <input type="text" list="doctor_names5" class="form-control border-top-0 border-right-0 border-left-0" name="doctor_name" id="doctor_name" placeholder="Doctor Name">
													<datalist id="doctor_names5">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_dnames5() {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("doctor_names5").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_dnames.jsp", true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  	get_dnames5();
													  
													  
													  </script>
                                                </div>
                                          </div>
                                          
                                          <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="feb_day" id="feb_day" onchange="get_names9(this.value, doctor_name.value)" placeholder="Date">
                                             
                                                </div>
                                            </div>
                                            
                                            <script>
											    
												  $( function() {
												    $( "#feb_day" ).datepicker();
												  } );
											  </script>
                                          
                                          
                                          <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
                                                    <input type="text" list="patient_names9" class="form-control border-top-0 border-right-0 border-left-0" name="patient_name" id="patient_name" placeholder="Patient Name">
													<datalist id="patient_names9">
													    <option value="Default">
													  </datalist>
													  
													  <script>
													  
													  function get_names9(str1, str2) {
															 
					                                    	var xhttp = new XMLHttpRequest();
					                                    	
				
														  
					                                    	xhttp.onreadystatechange = function() {
														    
					                                    		if (this.readyState == 4 && this.status == 200) {
														      
					                                    			document.getElementById("patient_names9").innerHTML =
														      
					                                    				this.responseText;
														    
					                                    		}
														  
					                                    	};
														  
					                                    	xhttp.open("GET", "send_namesDate.jsp?date="+str1+"&dname="+str2, true);
														  
					                                    	xhttp.send();
														
					                                    }
													  
													  
													  
													  </script>


                                                </div>
                                            </div>
                                          
                                            
                                        <div  class="col-12 col-md-4">
                                                <div class="form-group">
                                                    
												<button type="button" class="btn medilife-btn" onclick="view_feb(patient_name.value, doctor_name.value, feb_day.value)"> View Feedback </button>
													                                                
                                                </div>
                                            </div>
                                          
                                        <div id="display_feb">
                                            	<p>Feedback Displayed Here</p>
                                        </div>
                                           
                                        
                                    </form>
                                    </div>
                                    
                                    <script>
                                    
                                    function view_feb(str1, str2, str3) {
      									 
                                    	var xhttp = new XMLHttpRequest();                  	
   
									  
                                    	xhttp.onreadystatechange = function() {
									    
                                    		if (this.readyState == 4 && this.status == 200) {
									      
                                    			document.getElementById("display_feb").innerHTML =
									      
                                    				this.responseText;
									    
                                    		}
									  
                                    	};
									  
                                    	xhttp.open("GET", "send_feb.jsp?adate="+str3+"&pname="+str1+"&dname="+str2, true);
									  
                                    	xhttp.send();
									
                                    }
									
                                    </script>
                                    
                                    
                                    
                                    <a name="#128"></a>

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
  								<h2><font color='black'><center><u>ALL DOCTORS LIST</u></center></font></h2>
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
                                
                                	<h3><font color='yellow'><u>Available</u></font></h3>
                                	
                                	<div id="all_doc">
                                	
                                	</div>
                                	
                             
                             </div>
                            </div>
                            
                            <script>
                            
                            function view_all_doc() {
								 
                            	var xhttp = new XMLHttpRequest();
                            	
                            	xhttp.onreadystatechange = function() {
							    
                            		if (this.readyState == 4 && this.status == 200) {
							      
                            			document.getElementById("all_doc").innerHTML =
							      
                            				this.responseText;
							    
                            		}
							  
                            	};
							  
                            	xhttp.open("GET", "send_all_doc.jsp", true);
							  
                            	xhttp.send();
							
                            }
                            
                            view_all_doc();
                            
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