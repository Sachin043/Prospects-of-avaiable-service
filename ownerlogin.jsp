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
        <h3 id="main1">Welcome To Owner Login</h3>
        <p style="text-align: justify">
        Font Times New Roman
Title font size : 18
Subheading font size : 14
Text font size : 12 (Should be justified)
Figures should be numbered and captioned (named) in order like figure 1, figure 2 etc.
Font Times New Roman
Title font size : 18
Subheading font size : 14
Text font size : 12 (Should be justified)
Figures should be numbered and captioned (named) in order like figure 1, figure 2 etc.

Font Times New Roman
Title font size : 18
Subheading font size : 14
Text font size : 12 (Should be justified)
Figures should be numbered and captioned (named) in order like figure 1, figure 2 etc.

Font Times New Roman
Title font size : 18
Subheading font size : 14
Text font size : 12 (Should be justified)
Figures should be numbered and captioned (named) in order like figure 1, figure 2 etc.

Font Times New Roman
Title font size : 18
Subheading font size : 14
Text font size : 12 (Should be justified)
Figures should be numbered and captioned (named) in order like figure 1, figure 2 etc.
        </p>


    </div>
	
	<h3 id="side1"><font color="blue">Admin Menu</font></h3>
	<h2 id="menu1">
		<ul id="secul">
			<li id="sec"><a href="#.html">Home</a></li>
			<li id="sec"><a href="#.html">View Profile</a></li>
			<li id="sec"><a href="addproducts.jsp">Add Products</a></li>
                        <li id="sec"><a href="ownerup.jsp">View Uploaded Products</a></li>
                        <li id="sec"><a href="addprod.jsp">View All Purchased Products and Total Bill</a></li>
                        <li id="sec"><a href="#.html">View CyberCrime Users</a></li>
                        <li id="sec"><a href="#.html">View Online Products Trust and Recover</a></li>
                        <li id="sec"><a href="#.html">Logout</a></li>
		</ul>
	</h2>		
</body>
</html>
