<%-- 
    Document   : addfilter
    Created on : 25 Jul, 2018, 3:00:35 PM
    Author     : admin
--%>

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
        <h3 id="main1">Add Filter Words</h3>
      <Form name="form1" id="f1" action="addfilter" method="post">
               <b><h3 id="fi">Add Filter Name : &nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp; <input type="text" name="filter" required=""></h3></b>         
        <input id="bi" type="submit" value="Add Filter"> &nbsp;&nbsp; &nbsp;&nbsp;</form>
	
	<h3 id="side2"><font color="blue">Side Bar Menu</font></h3>
	<h2 id="menu">
		<ul id="secul">
			<li id="sec"><a href="index.html">Home</a></li><br>
                        <li id="sec"><a href="index.html">Logout</a></li><br>
			
		</ul>
	</h2>			
</body>
</html>

