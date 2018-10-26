<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="div.css">
                 <script type="text/javascript" src="catsubcat.js"></script>
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
        <h3 id="main1">Add Products and Details</h3>
      <Form name="form1" id="f1" action="addproducts" method="post">
            <h3 id="note">Note : &nbsp; <font color="orange">*= &nbsp; Required</font></h3>
            <b><h3 id="fi">Product Id &nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp; <input type="text" name="pid" required=""></h3></b>
                        <b><h3 id="fo" >Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="orange"> *</font>&nbsp;&nbsp;  <select name="Category" id="country" onchange="setstates();">
                <option selected="" value="-1" disabled="">Select Category</option>
                <option value="India">India</option>
                <option value="Australia">Australia</option>
                <option value="United States">United States</option>
            </select>
                </h3></b>
            <b><h3 id="fi">Sub-Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp;<select name="state" id="state" onchange="setcities();">
                <option selected="" value="-1" disabled="">Select state</option>
                <option value="">Please Select a Country</option>
            </select></h3></b>
        
        <b><h3 id="fi">Product Model &nbsp;<font color="orange"> *</font> &nbsp;&nbsp; <select name="city" id="city" >
                <option selected="" value="-1" disabled="">Select city</option>
                <option value="">Please Select a Country</option>
               
            </select>
               
            </select></h3></b>
        <b><h3 id="fi">Product Name &nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp; <input type="text" name="pname" required=""></h3></b>
        <b><h3 id="fi">Product Price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp;<input type="text" name="price" required=""></h3></b>
       <b><h3 id="fi">Select Product Image &nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp;<input type="file" name="pimage" required=""></h3></b><br>
        <b><h3 id="fi">Select Description Document &nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp;<input type="file" name="doc" required=""></h3></b><br>
   <b><h3 id="fi">Document Content &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="orange"> *</font> &nbsp;&nbsp;<input type="text" name="content" required=""></h3></b>
        <input id="bi" type="submit" value="Add Details"> &nbsp;&nbsp; &nbsp;&nbsp;</form>
	
	<h3 id="side2"><font color="blue">Side Bar Menu</font></h3>
	<h2 id="menu">
		<ul id="secul">
			<li id="sec"><a href="index.html">Home</a></li><br>
                        <li id="sec"><a href="index.html">Logout</a></li><br>
			
		</ul>
	</h2>			
</body>
</html>

