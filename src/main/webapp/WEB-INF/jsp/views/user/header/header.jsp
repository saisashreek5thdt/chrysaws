
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<script src="jquery-3.5.1.min.js"></script>
<script>
$("input").keypress(function(event) {
    if (event.which == 13) {
        event.preventDefault();
        $("form").submit();
    }
});
</script>


<%! int USER=0; %>
   <%
        if(session.getAttribute("useremail")!="" || session.getAttribute("useremail")!=null)
        {%>


                <%  USER=1;
        }%>

   <%
        if(session.getAttribute("useremail")=="" || session.getAttribute("useremail")==null)
        {%>


                <%  USER=0;
        }%>

        <script>

        document.addEventListener('readystatechange', event => {

            // When HTML/DOM elements are ready:
            if (event.target.readyState === "interactive") {   //does same as:  ..addEventListener("DOMContentLoaded"..

            }

            // When window loaded ( external resources are loaded too- `css`,`src`, etc...)
            if (event.target.readyState === "complete") {
                var x = location.href;
                   if( x=="http://localhost:8080/"){
                       document.getElementById("m1").style.borderBottom ="4px solid white";
                       }

                           if( x=="http://localhost:8080/resources"){
                             document.getElementById("m2").style.borderBottom ="4px solid white";
                                   }
                      if( x=="http://localhost:8080/course"){
                      document.getElementById("m3").style.borderBottom ="4px solid white";
                       }

                        if( x=="http://localhost:8080/summit"){
                           document.getElementById("m4").style.borderBottom ="4px solid white";
                              }

                                if( x=="http://localhost:8080/blog"){
                                document.getElementById("m5").style.borderBottom ="4px solid white";
                                 }


                        if( x=="http://localhost:8080/faculty"){
                                document.getElementById("m6").style.borderBottom ="4px solid white";
                                 }

                             if( x=="http://localhost:8080/faculty"){
                                                          document.getElementById("m6").style.borderBottom ="4px solid white";
                                                           }

                             if( x=="http://localhost:8080/user"){
                                                       document.getElementById("m8").style.borderBottom ="4px solid white";
                                                        }

                                                             if( x=="http://localhost:8080/resourcedetail"){
                                                          document.getElementById("m2").style.borderBottom ="4px solid white";
                                                                      }
                    if( x=="http://localhost:8080/coursedetail"){
                                                          document.getElementById("m3").style.borderBottom ="4px solid white";
                                                                      }
                                if( x.includes("summit")){
                                            document.getElementById("m4").style.borderBottom ="4px solid white";
                                             }


                                               if( x=="http://localhost:8080/blog7"){
                                               document.getElementById("m5").style.borderBottom ="4px solid white";
                                                    }

                                          if( x=="http://localhost:8080/writeblog?"){
                                                     document.getElementById("m8").style.borderBottom ="4px solid white";
                                                    }

                                 if( x=="http://localhost:8080/viewCourse"){
                                                  document.getElementById("m8").style.borderBottom ="4px solid white";
                                                    }

                                     if( x=="http://localhost:8080/viewResources"){
                                            document.getElementById("m8").style.borderBottom ="4px solid white";
                                                                               }



                     if( x=="http://localhost:8080/loginpage"){
                               document.getElementById("m").style.borderBottom ="4px solid white";
                                                    }



            }
        });




        </script>


  <!-- NAV BAR BEGIN -->

<div class="container-fluid" style="position:fixed;z-index:1">
	<div class="row" style="position:fixed;">
		<div class="col-md-12" style="position:fixed;" id="nav">
			<nav class="navbar navbar-expand-lg navbar-light " style="background:#EB4C5E;height:60px;width:100%;position:fixed;">
					<a class="navbar-brand" href="#">
							<img src="assets/user/images/logo/logo@2x.png" width="110" id="brands" height="110" class="img-fluid" alt="" style="position: relative; top:22px;left:12px;"/>
					</a>
 					 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
   							 <span class="navbar-toggler-icon"></span>
					</button>
  	<div class="collapse navbar-collapse" id="navbarNavDropdown">
    	<ul class="navbar-nav" style="position:relative;left:1%">
			<li class="nav-item"  >
						<a class="nav-link" href="/"   id="m1" onClick="m1()" ><small>Home</small></a>
			</li>
			<li class="nav-item">
						<a class="nav-link" href="/resources"  id="m2" ><small>Resources</small></a>
			</li>
			<li class="nav-item" >
						<a class="nav-link" href="/course" id="m3"><small>Courses</small></a>
			</li>
			<li class="nav-item">
						<a class="nav-link" href="/summit" id="m4"><small>Summit</small></a>
			</li>
			<li class="nav-item">
	                 	<a class="nav-link" href="/blog" id="m5"><small>Blog</small></a>
			</li>
			<li class="nav-item">
				    	<a class="nav-link" href="/faculty" id="m6"><small>Faculty</small></a>
			</li>
			<li class="nav-item">
						<a class="nav-link" href="#ftr" id="m7"><small>Contact Us</small></a>
			</li>
			<li class="nav-item">
			<form action="https://google.com/search" target="_blank" type="GET">

								<input name="q" class="form-control mr-sm-2" type="search" placeholder="&#xF002; Let's find out what you are looking for" aria-label="Search" style="font-family:Segoe UI,  FontAwesome">

                    </form>
			</li>


			<% if (USER==0) { %>
			<li class="nav-item">
						<a class="nav-link" id="m" href="/loginpage"><small>Log In</small></a>
						</li>	<%  } %>
							<% if (USER==1) { %>
									<li class="nav-item">
                            				      <br>
                            				      <a href="/cart">
                                            <i class="fa" style="font-size:24px;color:white">&#xf07a;</i>
                                                   <span class='badge badge-warning' id='lblCartCount' style="background:transparent;color:white"> </span>
                            </a>
                                        </li>
							<li class="nav-item">
   	<a class="nav-link" href="/user" id="m8" >
   						<small>  <small>My Dashboard </small></a></small>
   						</li>


   							<li class="nav-item">
   						   	<a class="nav-link" href="/userlogout" id="m9"  >
                           						<small>  <small>LogOut</small></a></small></li>
                          	<% } %>

        </ul>
    </div>
			</nav>
    </div>
	</div>
</div>


<!-- NAV BAR END -->
