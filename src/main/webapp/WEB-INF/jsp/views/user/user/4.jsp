
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


        <%
        if(session.getAttribute("useremail")=="")
        {%>
                <jsp:forward page="/" />

                <%
        }%>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Chrysaellect M.E.E.T</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="../assets/user/css/style.css">
		<link rel="stylesheet" href="../assets/user/css/user.css">
		
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="../assets/user/fontsfile:///G:/Chrysaellect%20MEEt/../assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

  </head>


  <body style="overflow-x: hidden;">  
	<script>

		function titles(){
		var topic=document.getElementById("input1").value;
		document.getElementById("topics").innerHTML=topic;
		}
		function about(){
		var topic=document.getElementById("input2").value;
		document.getElementById("about1").innerHTML=topic.substr(0, 350);
		document.getElementById("about2").innerHTML=topic.substr(351, 700);
		document.getElementById("d1").value=topic.substr(0, 350);
		document.getElementById("d2").value=topic.substr(351, 700);
		}
		

		function a1(){
		var topic=document.getElementById("authors").value;
		document.getElementById("ath1").innerHTML=topic;
	
		}

		function a2(){
		var topic=document.getElementById("authors1").value;
		document.getElementById("ath2").innerHTML=topic;
	
		}
		function fileValidation1() {

var fileInput =
	document.getElementById('coverImage');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}
else
{

	// Image preview
	if (fileInput.files && fileInput.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById(
				'cover').innerHTML =
				'<center><img src="' + e.target.result
				+ '"  style="height:185px;width:100%;border-radius:10px;"/></center';
		};

		reader.readAsDataURL(fileInput.files[0]);
	}
}
}




function fileValidation2() {

var fileInput =
	document.getElementById('Image1');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}
else
{

	// Image preview
	if (fileInput.files && fileInput.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById(
				'img1').innerHTML =
				'<center><img src="' + e.target.result
				+ '"  style="height:150px;width:100%;border-radius:10px;"/></center';
		};

		reader.readAsDataURL(fileInput.files[0]);
	}
}
}







function fileValidation3() {

var fileInput =
	document.getElementById('Image2');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}
else
{

	// Image preview
	if (fileInput.files && fileInput.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById(
				'img2').innerHTML =
				'<center><img src="' + e.target.result
				+ '"  style="height:150px;width:100%;border-radius:10px;"/></center';
		};

		reader.readAsDataURL(fileInput.files[0]);
	}
}
}




function reset(){


	document.getElementById('f1').reset();

}





function fileValidation4() {

var fileInput =
	document.getElementById('authorImage');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}
else
{

	// Image preview
	if (fileInput.files && fileInput.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById(
				'aut').innerHTML =
				'<center><img src="' + e.target.result
				+ '"  style="height:150px;width:150px;border-radius:60%;"/></center';
		};

		reader.readAsDataURL(fileInput.files[0]);
	}
}
}


		</script>
		



  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />
<!-- NAV BAR END -->
 <c:forEach items="${userList}" var="row">
 <c:if test="${useremail==row.email}">

	<!--SLIDER BEGIN-->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12"  id="userbg">
			<div id="userbox" >
				<img class="d-block w-100" src="../assets/user/images/user.png"      >
	  <font style="color:white; font-size:210%;position:absolute; top:30%; left:30%;" >
${row.firstname}
	  </font>
			</div>


		</div>
	</div>
</div>

                    </c:if >
 </c:forEach>
	
	
	<!--SLIDER END -->








	<!--User Panel Begin-->
 
	<div class="container-fluid">
		<div class="row" style="background: #EB4C5E; position: relative;bottom:70px;height:110px"> 
			<div class="col-md-12"    >
				<div class="col" style="width: 20%;float: left;">
					<p style="color: white;font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: .8;top:2;">
						<i>  Today </i>
					</p>
					<p style="color: white;font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: .8;">
					.............................
					</p>

					<p style="color: white;font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 1.4;" id="pp">
					
						</p>
						<p style="color: white;font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 1.4;" id="pt">
					
						</p>
						<script>
							var d = new Date();
						var date = d.toDateString();

							var day = date.slice(0, 3);
							var dat= date.slice(3, 15);
							document.getElementById("pp").innerHTML=dat;
							document.getElementById("pt").innerHTML=day;

							</script>
							
				
				</div>


				<div class="col" style="width: 15%;float: right;">
					<br>
					<p style="color: white;font-weight: 900;  font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 2;top:2;">
						User Login

						&nbsp;&nbsp;	<img src="../assets/user/images/Icon material-person-outline.png">
					</p>

					<p style="color: white;font-weight: 900;  font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 2;top:2;">
						Last login  23:45 Thu 20

				
					</p>
					</div>
			</div>
	    </div>
</div>
	
	<!--User Panel End-->

	<!--blog top Panel Begin-->

	<div class="row justify-content-md-center"  > 
		<div class="col-md-6"  >

			<div class="row justify-content-md-center" >

				<div class="col-md-10" id="skillstab">

				</div>
			</div>
		</div>

		<div class="col-md-6" >
			<div class="row justify-content-md-center" >

				<div class="col-md-10" id="blogtab" style="overflow:scroll;  overflow-x: hidden;">
					<br>
					<center>
					<form action="#t">
							<button href="a" id="writeblog" style="height:40px">
							&nbsp;	Write a New Blog !
							</button>
							</form>
							<br>

         <c:forEach items="${userList}" var="row">
         <c:forEach items="${blogList}" var="rowt">
           <c:if test="${row.id==rowt.author_id}">


							<div id="writeblog" style="background: #FD4059;height:40px;">
							<br style="line-height:.8">
								&nbsp;	${rowt.title}
								<div style="float:right;width: 20%;">
								<form method="get">

								<input type="hidden" name="id" value="${rowt.id}">
								&nbsp;		<button formaction="/deleteblog"  onclick="return confirm('Delete This Blog?');" style="color: white;background:none">
									Delete
								</a>
								</form>
								</div>
							</div>

							<br>
							       </c:if >
							         </c:forEach>
                                 </c:forEach>



<br>

				</center>



				</div>
			</div>
		</div>
		
	</div>

	<!--blog topPanel end-->

    <br>
    
    <section id="t">
	<!--blog Detail Panel Begin-->
 
		<div class="row justify-content-md-center" > 
			<div class="col-md-1"  ></div>
			<div class="col-md-4"  >
<button id="newblog" style="height:40px;font-size:17px">
New Blog


</button>
<br><br><br>
<form  method="post" enctype="multipart/form-data" id="f1">
<font style="color: #707070;font-size: 20px;font-family:Segoe UI semibold">
Add Title</font>

<br><br>
<input type="text" id="input1" name="title" style="background:#fafafa" class="input1" required onChange="titles()">

<br><br>
<font style="color: #707070;font-size: 20px;font-family:Segoe UI semibold">
Add Images here</font><br><br>
 <div class="col-sm-4 col-md-6">
    	 <div class="custom-file">
                   		<input type="file"   class="custom-file-input" name="coverImage" required id="coverImage" accept="image/*"  onchange="return fileValidation1()"  >
                            		<label class="custom-file-label" for="customFile">Cover Image</label>
                           	</div>
                  	 </div>
<br>

 <div class="col-sm-4 col-md-6">
    	 <div class="custom-file">
                   		<input type="file"   class="custom-file-input"  name="Image1" required id="Image1" accept="image/*"  onchange="return fileValidation2()"  >
                            		<label class="custom-file-label" for="customFile">Image 1</label>
                           	</div>
                  	 </div>


<br>

 <div class="col-sm-4 col-md-6">
    	 <div class="custom-file">
                   		<input type="file"   class="custom-file-input"name="Image2" required id="Image2" accept="image/*"  onchange="return fileValidation3()" >
                            		<label class="custom-file-label" for="customFile">Image 2</label>
                           	</div>
                  	 </div>





								
				
<br><br>
<font style="color: #707070;font-size: 20px;font-family:Segoe UI semibold">
Add Text</font>
<br><br>
<textarea id="input2" required onChange="about()" maxlength="700"></textarea>
<br>
<br><br>

<div style="width: 30%;float:left;">
<font style="color: #707070;font-size: 20px;font-family:Segoe UI semibold">
		Blogger Image</font>
		<br>
	    <br>
	     <div class="col-sm-4 col-md-6">
            	 <div class="custom-file">
                           		<input type="file"   class="custom-file-input" name="authorImage" required id="authorImage" accept="image/*"  onchange="return fileValidation4()" >
                                    		<label class="custom-file-label" for="customFile">Image 2</label>
                                   	</div>
                          	 </div>


<input type="hidden" name="des1" id="d1">
<input type="hidden" name="des2" id="d2">
</div>
<div style="width: 60%;float:right;">
<font style="color: #707070;font-size: 20px;font-family:Segoe UI semibold">
		Blogger Name & Desciption
	</font>
	<br>
	<br>
	<input type="hidden" value="${userid}" name="authorId">
	<input type="text" class="input1" name="authorName" required id="authors" onchange="a1()" style="background:#fafafa"><br>
	<textarea type="text" class="input1" maxlength="20" name="authorDesc" required id="authors1" onchange="a2()" style="height:100px">
		</textarea>
	<br>
	<br>
	<div style="width: 30%;float:left;">
	
		<button id="uploadbut" style="height:40px"  formaction="/blogCreate">
			<img src="../assets/user/images/save.png" style="height: 40%;">	Save
				</button>
			
		</div>
		<div style="width: 60%;float:right;">
		<center>
				<button id="uploadbut" type="reset" style="height:40px" >
					<img src="../assets/user/images/clear.png" style="height: 40%;">	Clear all
						</button>
						</center>
					</form> 
				</div>
				<br>	<br>
</div>

			</div>
			<div class="col-md-1"  ></div>
			<div class="col-md-6"  >
				<div class="row justify-content-md-center" > 

<table style="width:90%; height:850px;  background-image: linear-gradient(#62C6EB, #7BF94E);">
<tr>
	<td>
		<div class="row justify-content-md-center" > 
		<table style="width:85%; height:750px;  background-image: linear-gradient(#3A5968, #65A8E3);" align="center">
			<tr>
				<td>
			

<div class="row justify-content-md-center" > 
<table style="width:85%; height:180px;  background:#fff;border-radius: 10px;" align="center" id="cover">
	<tr>
		<td>

		</td>
	</tr></table></div>
	<div class="row justify-content-md-center" > 
	<center>  
<p style="color:white; text-align:justify;font-size:25px" id="topics">

Topic
</p> </center>
</div>

<BR>
	<div class="row justify-content-md-center" > 
		<center>  
	<p style="color:white; text-align:center;font-size:11px;width: 90%;" id="about1"> 
		nrelated to the problem, the normal practice is by the way to start attribute	nrelated to the problem, the normal practice is by the way to start attribute name with a lowercase, like you do with normal variable names.
	</p> </center>
	</div>
	<br>
	

	
<div class="row justify-content-md-center" > 
	<table style="width:45%; height:150px; border-radius: 10px;" align="center">
		<tr>
			<td>
				<table style="width:85%; height:150px;  background:#fff;border-radius: 10px;" id="img1" align="center">
					<tr>
						<td>
							
							
						</td>
					</tr></table>

			</td>
		</tr></table>
		<table style="width:45%; height:150px; border-radius: 10px;" align="center">
			<tr>
				<td>
					
					<table style="width:85%; height:150px;  background:#fff;border-radius: 10px;" id="img2" align="center">
						<tr>
							<td>
								
								
							</td>
						</tr></table>
				</td>
			</tr></table>
		
	</div>
	<BR>
		<div class="row justify-content-md-center" > 
			<center>  
		<p style="color:white; text-align:center;font-size:11px;width: 90%;" id="about2">
			nrelated to the problem, the normal practice is by the way to start attribute	nrelated to the problem, the normal practice is by the way to start attribute name with a lowercase, like you do with normal variable names.
		</p> </center>
		</div>
		<br>



		<div class="row justify-content-md-center" > 
			<table style="width:45%; height:150px; border-radius: 10px;" align="center">
				<tr>
					<td>
				
		
					</td>
				</tr></table>
				<table style="width:55%; height:150px; border-radius: 10px;" align="center">
					<tr>
						<td>
							<table style="width:35%; height:150px;  border-radius: 10px;" align="left">
								<tr>
									<td>
										<p style="color:white" id="ath1">
											<big> <b>author </b>  </big>
											  </p>
											<br>
											<p style="color:white;text-align: justify;font-size:12px;width:100px;" id="ath2">
											<small>	<small>  

												Description  About the Author
											</small></small>
										</p>
										
									</td>
								</tr></table>
							<table style="width:150px; height:150px;  background:#fff;border-radius: 10px;border-radius: 60%;" align="left" id="aut">
								<tr>
									<td>
										
										
									</td>
								</tr></table>
						</td>
					</tr></table>
				
			</div>
				</td>
			</tr></table>

		</div>
	</td>
</tr></table>


</div>	</div>
		</div>
		
		<!--blog Detail Panel End-->
</div>
	

<section id="ftr">
<!--FOOTER BEGIN -->

<jsp:include page="../footer/footer.jsp" />

<!--FOOTER END -->
</section>
		<!-- Bootstrap JS -->
		<script src="../assets/user/bootstrap/js/jquery-3.5.1.slim.js"></script>
		<script src="../assets/user/bootstrap/js/popper.js"></script>
		<script src="../assets/user/bootstrap/js/bootstrap.js"></script>
		
		<script src="../assets/user/js/auto_complete.js"></script>
		
		<!-- FontAwesome JS -->
		<script src="../assets/user/fonts/js/all.js"></script>
		
</body>
</html>
