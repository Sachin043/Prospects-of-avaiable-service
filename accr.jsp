<%-- 
    Document   : accr
    Created on : 31 Jul, 2018, 1:10:35 AM
    Author     : admin
--%>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" type="text/css" href="div.css">
	<title>HOME PAGE</title>
</head>

<body>
   
	<div class="wave">
		
	</div>
	<div id="a" align="center">
		<ul id="fstul1">
	 	<ul id="fstul1"><li id="fst1"><div class="bullet1"></div></li></ul><li id="fst1"><a href="index.html">HOME</a></li>
		<ul id="fstul1"><li id="fst1"><div class="bullet1"></div></li></ul><li id="fst1"><a><%
        HttpSession s=request.getSession();
        String n=(String)s.getAttribute("sachin");
        out.println(n);
                %></a></li>
                <ul id="fstul1"><li id="fst1"><div class="bullet1"></div></li></ul><li id="fst1"><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
    <div id="text">
     <h3 id="main1">Add Money To Your Account</h3>
  <form action="accr" method="post">
         <b><h3 id="fo"><i>Enter 11 digit account Number<input type="text" name="acno" required=""></i></h3></b><br>
         <b><h3 id="fo"><i>Enter Amount :<input type="text" name="amt" required=""></i></h3></b><br>
         <input type="submit" value="Add Money"><br>
         <%
        out.println(n);
                %>
     
     Your Account Added Successfully</form>
      </div>
	
	<h3 id="side1"><font color="blue">Admin Menu</font></h3>
	<h2 id="menu1">
		<ul id="secul">
			<li id="sec"><a href="userlogin.jsp">Home</a></li>
			<li id="sec"><a href="viewac.jsp">View Account Details</a></li>
                        <li id="sec"><a href="logout.jsp">Logout</a></li>
		</ul>
	</h2>		
</body>
</html>
