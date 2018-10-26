<%-- 
    Document   : logout
    Created on : 25 Jul, 2018, 3:17:22 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    <alert>Logged Out Successfully</alert>;
</script>
<%
    session.invalidate();
    session = request.getSession();
    
    response.sendRedirect("index.html");
%>
