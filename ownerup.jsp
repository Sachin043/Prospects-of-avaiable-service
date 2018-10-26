<%-- 
    Document   : ownerup
    Created on : 27 Jul, 2018, 12:27:35 AM
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
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <ul id="fstul1"><li id="fst1"><div class="bullet1"></div></li></ul><li id="fst1"><a href="logout.html">Logout</a></li>
		</ul>
	</div>
    
    <div id="text">
        <h3 id="main1">All Uploaded Products</h3>
    </div>
</body>
</html>

<%
        
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection c=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
              Statement st=c.createStatement();
               ResultSet rs=st.executeQuery("select * from products where username='"+n+"'");
               String str="<table border=3><tr><th>Product Category</th><th>Sub Ctegory</th><th>Product Model</th><th>Product Name</th><th>Product Price</th><th>Product Description</th></tr>";
               
               while(rs.next())
               {
                  str +="<tr><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(10)+"</td></tr>"; 
               }
               str+="</table>";
               out.println(str);
           }
      
           catch(Exception e)
                   {
           e.printStackTrace();
           }
   

%>