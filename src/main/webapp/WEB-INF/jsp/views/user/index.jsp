
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page import="java.io.*, java.util.*,java.time.*,java.text.*, java.util.Enumeration" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Chrysaellect M.E.E.T</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="assets/user/css/style.css">
		<link rel="stylesheet" href="assets/user/css/courses.css">
		<link rel="stylesheet" href="assets/user/css/blog.css">
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="assets/user/fontsfile:///G:/Chrysaellect%20MEEt/assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

  </head>
  <body style="height:1000px;overflow-x: hidden;">

  <style>
  #work{

  	height:270px;
  	border:10px solid white;
  	border-radius: 30px;
  	background-image:url('assets/user/images/f.png');
  	background-size:cover;
  	transition:1s;   background-repeat: no-repeat;
background-position:50% 50%;
  	background-size:100%;
  	}

  	  #work:hover{
transition:.2s;

      	background-image:url('assets/user/images/1.png');
      	background-size:cover;
      	}
  #work2{

  	height:270px;
  	border:10px solid white;
  	border-radius: 30px;
  	background-image:url('assets/user/images/d.png');
  	background-size:100%;
  	transition:1s;   background-repeat: no-repeat;
background-position:50% 50%;
  	}

  	  #work2:hover{
transition:.2s;

      	background-image:url('assets/user/images/3.png');
      	background-size:cover;
      	}

      	  #work1{

          	height:270px;
          	border:10px solid white;
          	border-radius: 30px;
          	background-image:url('assets/user/images/s.png');
          	background-size:100%;
          	transition:1s;   background-repeat: no-repeat;
        background-position:50% 50%;
          	}

          	  #work1:hover{
        transition:.2s;

              	background-image:url('assets/user/images/2.png');
              	background-size:cover;
              	}


  </style>
<jsp:include page="header/header.jsp" />

    <!-- #region Jssor Slider Begin -->
    <!-- Generator: Jssor Slider Composer -->
    <!-- Source: https://www.jssor.com/demos/full-width-slider.slider/=edit -->
    <script src="assets/user/js/jssor.slider-28.0.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.jssor_1_slider_init = function() {

            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,ls:0.5},{b:0,d:1000,y:5,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:200,d:1000,y:25,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:400,d:1000,y:45,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:600,d:1000,y:65,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:800,d:1000,y:85,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:500,d:1000,y:195,e:{y:6}}],
              [{b:0,d:2000,y:30,e:{y:3}}],
              [{b:-1,d:1,rY:-15,tZ:100},{b:0,d:1500,y:30,o:1,e:{y:3}}],
              [{b:-1,d:1,rY:-15,tZ:-100},{b:0,d:1500,y:100,o:0.8,e:{y:3}}],
              [{b:500,d:1500,o:1}],
              [{b:0,d:1000,y:380,e:{y:6}}],
              [{b:300,d:1000,x:80,e:{x:6}}],
              [{b:300,d:1000,x:330,e:{x:6}}],
              [{b:-1,d:1,r:-110,sX:5,sY:5},{b:0,d:2000,o:1,r:-20,sX:1,sY:1,e:{o:6,r:6,sX:6,sY:6}}],
              [{b:0,d:600,x:150,o:0.5,e:{x:6}}],
              [{b:0,d:600,x:1140,o:0.6,e:{x:6}}],
              [{b:-1,d:1,sX:5,sY:5},{b:600,d:600,o:1,sX:1,sY:1,e:{sX:3,sY:3}}]
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $LazyLoading: 1,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 20,
                $SpacingY: 20
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 3000;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>
    <link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,regular,italic,700,700italic&subset=latin-ext,greek-ext,cyrillic-ext,greek,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
    <style>
        /* jssor slider loading skin spin css */
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }


        /*jssor slider bullet skin 132 css*/
        .jssorb132 {position:absolute;}
        .jssorb132 .i {position:absolute;cursor:pointer;}
        .jssorb132 .i .b {fill:#fff;fill-opacity:0.8;stroke:#000;stroke-width:1600;stroke-miterlimit:10;stroke-opacity:0.7;}
        .jssorb132 .i:hover .b {fill:#000;fill-opacity:.7;stroke:#fff;stroke-width:2000;stroke-opacity:0.8;}
        .jssorb132 .iav .b {fill:#000;stroke:#fff;stroke-width:2400;fill-opacity:0.8;stroke-opacity:1;}
        .jssorb132 .i.idn {opacity:0.3;}

        .jssora051 {display:block;position:absolute;cursor:pointer;}
        .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
        .jssora051:hover {opacity:.8;}
        .jssora051.jssora051dn {opacity:.5;}
        .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
    </style>
<!--SLIDER BEGIN-->
<div class="container-fluid" >
<div class="row" >



    <!-- #region Jssor Slider Begin -->
    <!-- Generator: Jssor Slider Composer -->
    <!-- Source: https://www.jssor.com/demos/full-width-slider.slider/=edit -->
    <script src="assets/user/js/jssor.slider-28.0.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.jssor_1_slider_init = function() {

            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,ls:0.5},{b:0,d:1000,y:5,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:200,d:1000,y:25,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:400,d:1000,y:45,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:600,d:1000,y:65,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:800,d:1000,y:85,e:{y:6}}],
              [{b:-1,d:1,ls:0.5},{b:500,d:1000,y:195,e:{y:6}}],
              [{b:0,d:2000,y:30,e:{y:3}}],
              [{b:-1,d:1,rY:-15,tZ:100},{b:0,d:1500,y:30,o:1,e:{y:3}}],
              [{b:-1,d:1,rY:-15,tZ:-100},{b:0,d:1500,y:100,o:0.8,e:{y:3}}],
              [{b:500,d:1500,o:1}],
              [{b:0,d:1000,y:380,e:{y:6}}],
              [{b:300,d:1000,x:80,e:{x:6}}],
              [{b:300,d:1000,x:330,e:{x:6}}],
              [{b:-1,d:1,r:-110,sX:5,sY:5},{b:0,d:2000,o:1,r:-20,sX:1,sY:1,e:{o:6,r:6,sX:6,sY:6}}],
              [{b:0,d:600,x:150,o:0.5,e:{x:6}}],
              [{b:0,d:600,x:1140,o:0.6,e:{x:6}}],
              [{b:-1,d:1,sX:5,sY:5},{b:600,d:600,o:1,sX:1,sY:1,e:{sX:3,sY:3}}]
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $LazyLoading: 1,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 20,
                $SpacingY: 20
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 3000;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>
    <link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,regular,italic,700,700italic&subset=latin-ext,greek-ext,cyrillic-ext,greek,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />

    <svg viewbox="0 0 0 0" width="0" height="0" style="display:block;position:relative;left:0px;top:0px;">
        <defs>
            <filter id="jssor_1_flt_1" x="-50%" y="-50%" width="200%" height="200%">
                <feGaussianBlur stddeviation="4"></feGaussianBlur>
            </filter>
            <radialGradient id="jssor_1_grd_2">
                <stop offset="0" stop-color="#fff"></stop>
                <stop offset="1" stop-color="#000"></stop>
            </radialGradient>
            <mask id="jssor_1_msk_3">
                <path fill="url(#jssor_1_grd_2)" d="M600,0L600,400L0,400L0,0Z" x="0" y="0" style="position:absolute;overflow:visible;"></path>
            </mask>
        </defs>
    </svg>
	
	
	
	
    <div id="jssor_1" style="position:relative;margin:0 auto;top:30px;left:0px;width:1600px;height:700px;overflow:hidden;visibility:hidden;" class="slm">
        <!-- Loading Screen -->

        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:70%;width:38px;height:38px;" src="assets/uploads/spin.svg" />
        </div>

        <div data-u="slides" style="cursor:default;position:relative;top:40%;left:0px;width:1600px;height:700px;overflow:hidden;">


				
            <div>

                <c:forEach items="${sliderList}" var="row">
                     <c:if test="${row.category=='home1'}">
					 				<c:if test="${row.type=='image'}">
                     <img data-u="image" data-src="assets/uploads/slider/${row.slider}" />
					   	    	  	      </c:if >    

								<c:if test="${row.type=='video'}">

  	  	          <video autoplay muted loop   style="width:100%;z-index:-1">
                         <source src="assets/uploads/slider/${row.slider}" class="d-block w-100" type="video/mp4">

                       </video>
  	  	      </c:if >
     </c:if >      </c:forEach>


                <div data-ts="flat" data-p="540" data-po="40% 50%" style="left:0px;top:0px;width:1600px;height:560px;position:absolute;">
                    <div data-to="50% 50%" data-ts="preserve-3d" data-t="6" style="left:350px;top:360px;width:900px;height:500px;position:absolute;">
                        <svg viewbox="0 0 800 60" data-to="50% 50%" width="800" height="60" data-t="7" style="left:0px;top:-70px;display:block;position:absolute;opacity:0;font-family:'Roboto Condensed',sans-serif;font-size:60px;font-weight:700;letter-spacing:0.05em;overflow:visible;">
                            <text fill="#454447" stroke="#ff9500" stroke-width="2" text-anchor="middle" x="400" y="60">
                            </text>
                        </svg>
                        <div data-to="50% 50%" data-t="8" style="filter:url('#jssor_1_flt_1');left:200px;top:0px;width:600px;height:60px;position:absolute;opacity:0;color:#C49D8F;font-family:Roboto Condensed, sans-serif;font-size:48px;line-height:1.2;letter-spacing:0.1em;text-align:center;"></div>
                        <svg viewbox="0 0 800 100" width="800" height="100" data-t="9" style="left:40px;top:250px;display:block;position:absolute;opacity:0;font-family:'Roboto Condensed',sans-serif;font-size:70px;font-weight:900;letter-spacing:0.5em;overflow:visible;">
                            <text fill="rgba(255,255,255,0.7)" stroke="#ff9500" text-anchor="middle" x="400" y="100">       <c:forEach items="${sliderList}" var="row">
                                                                                                                                                      <c:if test="${row.category=='home1'}">
                                                                                                                                                      ${row.title}
                                                                                                                                                        </c:if >
                                                                                                                                                                  </c:forEach>
                            </text>
                        </svg>
                    </div>
                </div>
            </div>
			
			
            <div>

                <c:forEach items="${sliderList}" var="row">
                           <c:if test="${row.category=='home2'}">
                       <img data-u="image" data-src="assets/uploads/slider/${row.slider}" />
					   	    	  	      </c:if >    

								<c:if test="${row.type=='video'}">

  	  	          <video autoplay muted loop   style="width:100%;z-index:-1">
                         <source src="assets/uploads/slider/${row.slider}" class="d-block w-100" type="video/mp4">

                       </video>
     </c:if >      </c:forEach>


                <div data-ts="flat" data-p="540" data-po="40% 50%" style="left:0px;top:0px;width:1600px;height:560px;position:absolute;">
                    <div data-to="50% 50%" data-ts="preserve-3d" data-t="6" style="left:350px;top:360px;width:900px;height:500px;position:absolute;">
                        <svg viewbox="0 0 800 60" data-to="50% 50%" width="800" height="60" data-t="7" style="left:0px;top:-70px;display:block;position:absolute;opacity:0;font-family:'Roboto Condensed',sans-serif;font-size:60px;font-weight:700;letter-spacing:0.05em;overflow:visible;">
                            <text fill="#454447" stroke="#ff9500" stroke-width="2" text-anchor="middle" x="400" y="60">
                            </text>
                        </svg>
                        <div data-to="50% 50%" data-t="8" style="filter:url('#jssor_1_flt_1');left:200px;top:0px;width:600px;height:60px;position:absolute;opacity:0;color:#C49D8F;font-family:Roboto Condensed, sans-serif;font-size:48px;line-height:1.2;letter-spacing:0.1em;text-align:center;"></div>
                        <svg viewbox="0 0 800 100" width="800" height="100" data-t="9" style="left:40px;top:250px;display:block;position:absolute;opacity:0;font-family:'Roboto Condensed',sans-serif;font-size:70px;font-weight:900;letter-spacing:0.5em;overflow:visible;">
                            <text fill="rgba(255,255,255,0.7)" stroke="#ff9500" text-anchor="middle" x="400" y="100">     
							<c:forEach items="${sliderList}" var="row">
                                                                              <c:if test="${row.category=='home2'}">
                                                                                                      ${row.title}
                                                                                                            </c:if >
                                                                                                               </c:forEach>
                            </text>
                        </svg>
                    </div>
                </div>
            </div>
            <div style="background-color:#000000;">

                      <c:forEach items="${sliderList}" var="row">
                                                                                                                               <c:if test="${row.category=='home3'}">
                                    <img data-u="image" style="opacity:0.8;"  data-src="assets/uploads/slider/${row.slider}" />
                    </c:if >      </c:forEach>




                <div data-ts="flat" data-p="1080" style="left:0px;top:0px;width:1600px;height:560px;position:absolute;">
                    <svg viewbox="0 0 600 400" data-ts="preserve-3d" width="600" height="400" data-tchd="jssor_1_msk_3" style="left:255px;top:0px;display:block;position:absolute;overflow:visible;">
                        <g mask="url(#jssor_1_msk_3)">
                            <path data-to="300px -180px" fill="none" stroke="rgba(250,251,252,0.5)" stroke-width="20" d="M410-350L410-10L190-10L190-350Z" x="190" y="-350" data-t="10" style="position:absolute;overflow:visible;"></path>
                        </g>
                    </svg>
                    <svg viewbox="0 0 800 72" data-to="50% 50%" width="800" height="72" data-t="11" style="left:-800px;top:78px;display:block;position:absolute;font-family:'Roboto Condensed',sans-serif;font-size:84px;font-weight:900;overflow:visible;">
                        <text fill="#fafbfc" text-anchor="middle" x="400" y="72">
                        </text>
                    </svg>
                    <svg viewbox="0 0 800 72" data-to="50% 50%" width="800" height="72" data-t="12" style="left:1600px;top:193px;display:block;position:absolute;font-family:'Roboto Condensed',sans-serif;font-size:60px;font-weight:900;overflow:visible;">
                        <text fill="#fafbfc" text-anchor="middle" x="400" y="72">

                             <c:forEach items="${sliderList}" var="row">
                                                       <c:if test="${row.category=='home3'}">
                                                          ${row.title}
                                                            </c:if >      </c:forEach>

                        </text>
                    </svg>
                </div>
            </div>
    <div style="background-color:#000000;">

                      <c:forEach items="${sliderList}" var="row">
                                                                                                                               <c:if test="${row.category=='home3'}">
                                    <img data-u="image" style="opacity:0.8;"  data-src="assets/uploads/slider/${row.slider}" />
                    </c:if >      </c:forEach>




                <div data-ts="flat" data-p="1080" style="left:0px;top:0px;width:1600px;height:560px;position:absolute;">
                    <svg viewbox="0 0 600 400" data-ts="preserve-3d" width="600" height="400" data-tchd="jssor_1_msk_3" style="left:255px;top:0px;display:block;position:absolute;overflow:visible;">
                        <g mask="url(#jssor_1_msk_3)">
                            <path data-to="300px -180px" fill="none" stroke="rgba(250,251,252,0.5)" stroke-width="20" d="M410-350L410-10L190-10L190-350Z" x="190" y="-350" data-t="10" style="position:absolute;overflow:visible;"></path>
                        </g>
                    </svg>
                    <svg viewbox="0 0 800 72" data-to="50% 50%" width="800" height="72" data-t="11" style="left:-800px;top:78px;display:block;position:absolute;font-family:'Roboto Condensed',sans-serif;font-size:84px;font-weight:900;overflow:visible;">
                        <text fill="#fafbfc" text-anchor="middle" x="400" y="72">
                        </text>
                    </svg>
                    <svg viewbox="0 0 800 72" data-to="50% 50%" width="800" height="72" data-t="12" style="left:1600px;top:193px;display:block;position:absolute;font-family:'Roboto Condensed',sans-serif;font-size:60px;font-weight:900;overflow:visible;">
                        <text fill="#fafbfc" text-anchor="middle" x="400" y="72">

                             <c:forEach items="${sliderList}" var="row">
                                                       <c:if test="${row.category=='home4'}">
                                                          ${row.title}
                                                            </c:if >      </c:forEach>

                        </text>
                    </svg>
                </div>
            </div>
            <div>

                     <c:forEach items="${sliderList}" var="row">
                                                                                                                                               <c:if test="${row.category=='home5'}">
                                                    <img data-u="image" style="opacity:0.8;"  data-src="assets/uploads/slider/${row.slider}" />
                                    </c:if >      </c:forEach>

                <div data-ts="flat" data-p="1080" style="left:0px;top:60px;width:1600px;height:560px;position:absolute;">
                    <div data-to="50% 50%" data-t="14" style="left:690px;top:140px;width:600px;height:150px;position:absolute;opacity:0;color:#ffffff;font-family:Georgia,'Times New Roman',Times,serif;font-size:60px;line-height:1.2;letter-spacing:0.1em;">

           <c:forEach items="${sliderList}" var="row">
                                                <c:if test="${row.category=='home5'}">
                      ${row.title}
                          </c:if >      </c:forEach>



                    </div>
              </div>
            </div>
        </div><a data-scale="0" href="https://www.jssor.com" style="display:none;position:absolute;">slider html</a>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb132" style="position:absolute;bottom:24px;right:16px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:12px;height:12px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
            </svg>
        </div>
    </div>
	
	
	
	
	
    <script type="text/javascript">jssor_1_slider_init();
    </script>
    <!-- #endregion Jssor Slider End -->

</div>
</div>
<!--SLIDER END -->


<!--BODY BEGIN -->
<div class="container-fluid">

	<div class="row justify-content-md-center" style="background-color:#ffdade;height:auto">

<div class="col-md-10">
	<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;">
	<center>
		<br>
		<b>  ABOUT CHRYSAELLECT M.E.E.T<br><small><i> 
			<b> (Mentoring Early Childhood Educators & Teachers) </i>  </b></b></small>
		<br>	<img src="assets/user/images/divider.png" class="img-fluid" alt="" />
		<br><br style="line-height:.8">
	</font>	<font style="font-size: 20px; color:#707070;text-align: justify; font-family: Segoe UI semibold;">
		Chrysaellect is an organization that offers innovative, effective and research based products and services that promote authentic learning opportunities
relevant for 21st century learners. Chrysaellect is an organization that offers innovative, effective and research based products and services that promote
authentic learning opportunities relevant for 21st century learners.
	</center>
	<br style="line-height:1">
	</font>
</div>

	</div>



<section name="How It Work">
	<div class="container-fluid" style="background: #fff;height:auto;position: relative;">

		<div class="row justify-content-md-center" >

			<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;">
			<center><br style="line-height:.8">
	CHOOSE YOUR MODULE / COURSE</font>
			<br>
				<img src="assets/user/images/divider_2.png" class="img-fluid" alt="" style="width:115%" />

			</center><br>
		</div>

		<div class="row justify-content-md-center" >

			<div class="col-md-2" id="work">



			</div>

			<div class="col-md-2" id="work1"><center>

			</center>


			</div>

			<div class="col-md-2" id="work2"><center>

			</center>


			</div>
			<br>
		</div></section>

	<section name="Resources">
		<br>	<br>

		<div class="row justify-content-md-center" style="background: #EEEAEA;height:auto">
			<br>	<br>
			<div class="col-md-10">
<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;">
							<center>	<br style="line-height:.8">
								RESOURCES<br style="line-height:.1"></font>
								<img src="assets/user/images/divider_2.png" class="img-fluid" alt="" /><br><br>
							</center><br><br>
				<div class="row">
  <c:forEach items="${resourceList}" var="row">

  	<c:set var="countx" value="${countx + 1}" scope="page"/>

  <c:if test="${countx<5}">
  <c:set var = "createdate" value = "${row.createdate}" scope="page" />
    <c:set var = "day" value = "${today}" scope="page" />
      <c:set var = "daybefore" value = "${yesterday}" scope="page" />
      <%

          String createdates = String.valueOf(pageContext.getAttribute("createdate"));
           String day = String.valueOf(pageContext.getAttribute("day"));
                String daybefore = String.valueOf(pageContext.getAttribute("daybefore"));
          SimpleDateFormat sdfo = new SimpleDateFormat("yyyy-MM-dd");

      Date d2 = sdfo.parse(day);
      Date d3 = sdfo.parse(daybefore);
      Date d4 = sdfo.parse(createdates);

      %>


					<div class="col-md-3">

            			<div class="row justify-content-md-center">
            				<div class="col-md-10" id="coursebody" style="background:#fafafa">

<%   if (d2.compareTo(d4)== 0 || d3.compareTo(d4)== 0 ) {  %>

                					<div class="col" id="badge" style="background-image:url('../assets/user/images/Rectangle 62.png');" >
                                        <br style="line-height:1.2">
                                        <font color="white">

                                            <small>
                                                <center>
                                            New
                                                </center>
                                            </small>
                                        </font>
                						</div>

                						<% } else{ %>
				  <c:if test="${row.category=='Free' || row.category=='free'}">

                					<div class="col" id="badge" style="background-image:url('../assets/user/images/Rectangle 62.png');" >
                                        <br style="line-height:1.2">
                                        <font color="white">

                                            <small>
                                                <center>
                                              Free
                                                </center>
                                            </small>
                                        </font>
                						</div>

                           </c:if>


                           		  <c:if test="${row.category=='Paid' || row.category=='paid'}">

                           					<div class="col" id="badge" style="background-image:url('../assets/user/images/Rectangle 379.png');" >
                                             <br style="line-height:1.2">
                                                   <font color="white">

                                                       <small>
                                                           <center>
                                                        Paid
                                                           </center>
                                                       </small>
                                                   </font>
                           						</div>

                                      </c:if>

<% } %>
            						<div class="col" id="cirx" >

                                        		<center>
            			<img src="../assets/user/images/path 5373.png">
            			<br>
            			<font color="white" style="font-size: 16px;text-transform: capitalize;font-family: Segoe UI semibold;">
            		${fn:toLowerCase(row.resource_name)}	</font>


            							</center>

            									</div>
            									<br><br><br><br><center>

            										<small>  <font color="#707070" style="text-align: center;overflow:hidden">

            								 ${fn:substring(row.about_resourse, 0, 200)}
	<form action="/resourcedetail" method="post">
            									<a href="/resourcedetail?resourcename=${row.resource_name}" id="link"  style="bottom:20%;left:38%;position:absolute">Read More</a>
</form>
            						 <c:forEach items="${resourcefilesList}" var="rowt">

                                                                              <c:if test="${rowt.resource_name==row.resource_name && rowt.filetype =='video'   }">

                                                                            <i class="fas fa-play "  style="bottom:22%;right:8%;position:absolute"></i>

                                                                            											    </c:if >
                                                    <c:if test="${rowt.resource_name==row.resource_name && rowt.filetype =='word'   }">
                                                                                     	<i class="fas fa-clipboard-list" style="bottom:22%;right:15%;position:absolute"></i>

                                                                                     											    </c:if >
                                                      <c:if test="${rowt.resource_name==row.resource_name && rowt.filetype =='ppt'   }">
                                                                                                     	<i class="fas fa-clipboard-list" style="bottom:22%;right:15%;position:absolute"></i>

                                                                                                     											    </c:if >
                                                      <c:if test="${rowt.resource_name==row.resource_name && rowt.filetype =='pdf'   }">
                                                                                                     	<i class="fas fa-clipboard-list" style="bottom:22%;right:15%;position:absolute;c"></i>

                                                                                                     											    </c:if >
                                                                            											     </c:forEach>





            											  </center></small></font>
            											  <div class="col" id="bott" >
            													<center>
            								<br style="line-height:.8">
            								<form action="/resourcedetail" method="post">
                                                              	<input type="hidden" name="resourcename" value="${row.resource_name}" >
                                                      <button style="background: #707070;color:white;border:0px; height:38px; width:60%;border-radius: 10px;border-top:7px solid #F05F6F">
                                                                    		View Resource
                                                                    					  </button>
                                                                    					  </form>
            																		</center>
            																							</div>
            				</div>
            			</div>
        
<div style="height:80px"><br></div>
            	</div>

            	        </c:if ></c:forEach>

            	</div>
				<br><br>
		<center>
	<a href="/resources">
			<img src="assets/user/images/explore_more.png" class="img-fluid" alt=""style /></a>

		</center><br style="line-height:1">



			</div><br>
		</div>	
		</div>

</div>
	</section>



<section name="upcoming corses">
<div class="container-fluid" style="background: #ffdade;height:auto;position: relative;border-top:5px solid #F05F6F">

	<div class="row justify-content-md-center" >
<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;">
		<center>	<br>
			UPCOMING COURSES</font><br style="line-height: .2;">
			<img src="assets/user/images/divider_2.png" class="img-fluid" alt="" />
		</center>
</div>
		<div class="row justify-content-md-center">
		<div class="col-md-10" style="height:auto">
<br>
			<div class="row">

			<c:forEach items="${courseList}" var="row">
			<c:set var="count" value="${count + 1}" scope="page"/>
			  <c:if test="${count<5}">
   <c:set var = "start" value = "${row.start}" scope="page" />
   <c:set var = "createdates" value = "${row.createdate}" scope="page" />
   <%
       String startz = String.valueOf(pageContext.getAttribute("start"));
       String createdates = String.valueOf(pageContext.getAttribute("createdate"));
        String day = String.valueOf(pageContext.getAttribute("day"));
             String daybefore = String.valueOf(pageContext.getAttribute("daybefore"));
       SimpleDateFormat sdfo = new SimpleDateFormat("yyyy-MM-dd");
   Date d1 = sdfo.parse(startz);
   Date d2 = sdfo.parse(day);
   Date d3 = sdfo.parse(daybefore);
   Date d4 = sdfo.parse(createdates);
       if (d1.compareTo(d2) > 0) {

               // When Date d1 > Date d2


         %>
			<div class="col-md-3" id="upcome" style="background-image: url('assets/user/images/upcome.png');">

				<div class="col" style="color:white;font-size: 20px;position:absolute;top:15%;left:40%">
				<font color="white" style="font-size: 22px;text-transform: capitalize;font-family: Segoe UI semibold;">
                        		${fn:toLowerCase(row.coursename)}</font>
				</div>

				<div class="col" style="color: white;font-size: 15px;position:relative;top:51%;left:60%;font-family: Segoe UI semibold;">

					${row.start}
				</div>

				
				<form action="/coursedetail" method="post">
						<input type="hidden" name="coursename" value="${row.coursename}" >
					<button id="upcomelink">View Course</button>
					</form>
				

				<div class="col" style="color: white;font-size: 18px;position:absolute;top:35%;left:6%">
					<B>${count}</B>
				</div>


		</div>
		<% } %>
		   </c:if ></c:forEach>


		</div>
		<center>
	<a href="/course">
			<img src="assets/user/images/KNOWMORE.png" class="img-fluid" alt=""style /></a>

		</center><br style="line-height:1">
		</div></div>
	</div>

</section>

<section name="Learning">
	<div class="container-fluid" style="background: #fff;height:auto;position: relative;border-top:5px solid #F05F6F">

		<div class="row justify-content-md-center" >
			<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;"><center><br >
				CHOOSE YOUR LEARNING JOURNEY</font><br style="line-height: .2;">
				<img src="assets/user/images/line 54.png" class="img-fluid" alt="" />
			</center>
		</div>
		<br>
		<div class="row justify-content-md-center" >
			<div class="col-md-7" style="width: 100%;border-radius: 50px;box-shadow: 1px 1px 1px 1px #afafaf; height:70px;background:#707070;">
				<center>  
					<br style="line-height: .6;">
				<p id="blackp">
				<i>  Chrysaellect M.E.E.T offers a range of resourses that are categorised into modules and courses.
				We also have a lot of free content units that you could explore...</i>
			</p></center>
			</div>
			</div>
			<br>
			<div class="row justify-content-md-center" >
<div class="col-md-4" id="learn" style="background-image: url('assets/user/images/free.png') ;">
	<font id="learnfont">
		<br>
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: 1;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: 1;">

		* Access to limited printable<br style="line-height: 1;"> &nbsp; games and flash cards
	</font>
	<div class="col" id="learn2">


	</div>
</div>
<div class="col-md-4" id="learn" style="background-image: url('assets/user/images/basic.png');">
	<font  id="learnfont">
		<br>
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: 1;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: 1;">

		* Access to limited printable <br style="line-height: 1;"> &nbsp; games and flash cards<br style="line-height: 2;"><br style="line-height: 1;">
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: 1;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: 1;">
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: 1;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: 1;">
	</font>
	<div class="col" id="learn2">


	</div>
</div>
<div class="col-md-4" id="learn" style="background-image: url('assets/user/images/premium.png');">
	<font style="" id="learnfont">
		<br>
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: .8;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: .8;">
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: .8;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: .8;">
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: .8;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: .8;">
		* Access to all free content units<br style="line-height: 2;"><br style="line-height: .8;">

		* Access to limited worksheets<br style="line-height: 2;"><br style="line-height: .8;">


		* Access to limited printable<br style="line-height: 1;"> &nbsp; games and flash cards
	</font>
	<div class="col" id="learn2">


	</div>
</div>


</div>		</div>

</div></div><br>

<center> 
	<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;">

	(Mentoring Early Childhood Educators & Teachers) 
</font>
</center>

<br>

</section>

<section name="Blog" style="background-color: #eee;">

		<br>			<font style="font-size: 24px; color:#707070;text-align: justify;font-family: Segoe UI semibold;">
		<center>
			BLOG<br style="line-height:.2"></font>
			<img src="assets/user/images/divider_2.png" class="img-fluid" alt="" />
		</center>	<br>

		<br>
		<div class="row ">
	<c:forEach items="${blogList}" var="rowt">
 <c:if test="${rowt.publish=='1'}">
	<c:set var="countm" value="${countm + 1}" scope="page"/>
	 <c:if test="${countm>0}">
                <div class="col-md-3" id="group" >


                    <div class="col-md-12"  id="group1" style="background-image: url('../assets/uploads/blogs/${rowt.cover}');">
                        <div class="col" id="ribbon" style="width:60px">

                                <img src="../assets/user/images/eye.png" style="width:50%;height: 50%;position: absolute;top:6px;left:2px" >


                                <p style="position: absolute;right:15%;font-size: 10px;top:27%">
                                    ${rowt.view}</p>
                         </div>

                    </div>

                    <div class="col-md-10"  id="group2" >
                        <center>
                            <font color="white" style="font-size: 26px;text-transform: capitalize;">

                            	${fn:toLowerCase(rowt.title)}
                            </font><br>

                           <font color="white" style="font-size:12px" > ${fn:substring(rowt.about1, 0, 90)}</font>  <br><br>
                            <form action="/blog7" method="post">
                            <input type="hidden" value="${rowt.id}" name="blogId">
                                <input type="hidden" value="${rowt.view}" name="view">
                            <button style="color:#85E961;background:none;bottom:10%;left:38%;position:absolute" > <small>ReadMore</small> </button>

                            </form>
                      </center>
                    </div>



                                </div>
</c:if></c:if>
      </c:forEach>




						</div>
	</div></div></div></div>
	</section>
</section>
<!--BODY END -->

<jsp:include page="footer/footer.jsp" />

		<!-- Bootstrap JS -->
		<script src="assets/user/bootstrap/js/jquery-3.5.1.slim.js"></script>
		<script src="assets/user/bootstrap/js/popper.js"></script>
		<script src="assets/user/bootstrap/js/bootstrap.js"></script>
    <script src="assets/user/js/jssor.slider-28.0.0.min.js" type="text/javascript"></script>
		<script src="assets/user/js/auto_complete.js"></script>

		<!-- FontAwesome JS -->
		<script src="assets/user/fonts/js/all.js"></script>

</body>
</html>
