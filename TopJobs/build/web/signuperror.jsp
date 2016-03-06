<%-- 
    Document   : signuperror
    Created on : 18 Jan, 2016, 10:11:11 AM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        body {
                margin:50px 0px; padding:0px;
                text-align:center;
            }
        </style>  
    </head>
    <body>
        ${requestScope.superr}
        <a href="../../../topjobs/signup.jsp">Try Again </a>
    </body>
</html>
