<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "margin-left:25%; margin-top:5%">
<% 
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");	
	String age = request.getParameter("age");
	String email = request.getParameter("email_address");
	String bdate= request.getParameter("bDate");
	String title = request.getParameter("title");
	String status = request.getParameter("status");
	String country = request.getParameter("country"); 
	
	//get the current Date and Time
	Date x = new java.util.Date(); 
	   
	//Change the data type of age from String to integer to manipulate it 
	int yourAge = Integer.parseInt(age);
   
	//print out the content to DOM
	out.print("<span><h2 style = 'color:red'>" + "Hello there "  + title + " " + lname + " !" + " </h2></span>"); 
	out.print("<h4>" +"Today's date is : " +  x + "</h4></br>");
	out.print("<p>"+ "Your fullname is " + fname + " " + lname + ", " + age + " years of age  and you are " + status +  "</p>");
	out.print("<p>" + "Your birthday is " + bdate +  "</p>");
	out.print("<p>" + " Currently living in  " + country + "</p>");
	out.print("<p>" +  " Your email-adress is " +  email + "." + "</p>");
	
	out.print("<h3 style = 'color:green'>" + "Do you know that?" +  "</h3>"); 
	
	
	//Reverse first name
	//create a StringBuilder with fname1 object
	StringBuilder fname1 = new StringBuilder(); 
			
	//fname1 appends the String fname to this character sequence.
	fname1.append(fname);	
	
	//reverse StringBuilder fname1 
    fname1 = fname1.reverse(); 
    out.print("<p>" + "1. When you reverse your first name it became - " + fname1 + "</p>");
	
    //years to reach your next big -0 
   	 int yourAgeNow = yourAge/10;
         int yourAge1= (yourAgeNow*10) + 10;
         int yourAge2 = yourAge1 - yourAge;
    
    out.print("<p>" + "2. You will be " + yourAge1 + " in " + yourAge2 + " years " +"</p>");

%>
</body>
</html>
