<%@ page import="model.FacultyProfile"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.*"%>

<%
if (session.isNew())
	response.sendRedirect("index.jsp");
%>

<html lang="en-gb" class="no-js">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Campus Connect</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link href="CSS/style.css" rel="stylesheet">
<script src="scripts/grayscale.js"></script>
<script src="scripts/scripts.js"></script>
<script>
	document.getElementById("uploadBtn").onchange = function() {
		document.getElementById("uploadFile").value = this.value;
	};
</script>

<link href="CSS/style.css" rel="stylesheet" type="text/css">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<title>My Profile</title>
<meta name="description" content="">

<link rel="stylesheet" href="CSS/indexstyle.css">
<!-- Font Awesome -->

</head>
<%
	String email = (String) session.getAttribute("email");
	ArrayList<FacultyProfile> facultyprofilearray = (ArrayList<FacultyProfile>) session
			.getAttribute("fprofile");
	String type = (String) session.getAttribute("type");
	String fname = facultyprofilearray.get(0).getFname();
	String lname = facultyprofilearray.get(0).getLname();
	String femail = facultyprofilearray.get(0).getFemail();
	String dob = facultyprofilearray.get(0).getDob();
	String fsex = facultyprofilearray.get(0).getFsex();
	String fdept = facultyprofilearray.get(0).getFdept();
	String fcourse = facultyprofilearray.get(0).getFcourse();
	String frarea = facultyprofilearray.get(0).getFrarea();
	String fofhours = facultyprofilearray.get(0).getFofhours();
	String fofloc = facultyprofilearray.get(0).getFofloc();
	String photopath = (String) session.getAttribute("photopath");

	PrintWriter pwout = response.getWriter();
	response.setContentType("text/html");
%>

<%
	pwout.write("<body>");
	pwout.write("<header class='header'> </header>");
%>
<jsp:include page='include/fnavbar.html' />
<%
	pwout.write("<br><br><br>");
	pwout.write("<div id='#top'></div>");
	pwout.write("<section id='aboutUs'>");
	pwout.write("<div class='container'>");
	pwout.write("<div class='row'>");
	pwout.write("<div class='col-md-4 tileBox'>");
	pwout.write("<img src='" + photopath + "'><br> <br> <br>");
	pwout.write("<form action='PhotoUpload' method='post' enctype='multipart/form-data'>");
	pwout.write("<input id='uploadFile' class='form-control' placeholder='Choose File' disabled='disabled' style='width: 70%'/><div class='fileUpload btn btn-primary'><span>Choose</span><input id='uploadBtn' type='file' class='upload' name='photo' /></div>");
	pwout.write("<div class='fileUpload btn btn-primary'><span>Upload</span><input id='uploadBtn' type='submit' class='upload' /></div>");
	pwout.write("</form><br>");
	pwout.write("</div>");
	pwout.write("<div class='col-md-8 tileBox'>");
	pwout.write("<div class='txtHead'>");
	pwout.write("<h2>Hello, I am <span name='fname'>" + fname
			+ "&nbsp;</span>");

	pwout.write("<span name='lname'>" + lname + "</span>");
	pwout.write("</h2>");
	pwout.write("</div>");
	pwout.write("<p name='femail'><b>Email:</b>&nbsp;" + femail + "</p>");
	pwout.write("<p name='dob'>	<b>Date of Birth:</b>&nbsp;" + dob
			+ "</p>");
	pwout.write("<p name='fsex'>	<b>Gender:</b>&nbsp;" + fsex + "</p>");
	pwout.write("<p name='fdept'><b>Department:</b>&nbsp;" + fdept + "</p>");
	pwout.write("<p name='fcourse'><b>Courses Offered:</b>&nbsp;" + fcourse
			+ "</p>");
	pwout.write("<p name='frarea'><b>Research area:</b>&nbsp;"
			+ frarea + "</p>");
	pwout.write("<p name='fofhours'><b>Office hours:</b>&nbsp;" + fofhours + "</p>");
	pwout.write("<p name='fofloc'><b>Office Location:</b>&nbsp;" + fofloc + "</p>");
	
	pwout.write("</div>");
	pwout.write("</div>");
	pwout.write("</div>");
	pwout.write("</section>");
	pwout.write("<section id='skills' class='secPad white'>");
	pwout.write("<div class='container'>");
	pwout.write("<div class='heading '>");
	pwout.write("</div>");
%>
<jsp:include page='include/footer.html' />
<%
	pwout.write("</body>");
	pwout.write("</html>");
%>