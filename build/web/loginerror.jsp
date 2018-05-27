<%-- 
    Document   : error
    Created on : 17 Jan, 2016, 10:09:38 PM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TopJobs</title>
        <style>
        body {
                margin:50px 0px; padding:0px;
                text-align:center;
            }
        </style>  
    </head>
    <body>
        ${requestScope.logerr}
        <br><a href="../../../topjobs/login.jsp">Try Again</a>
    </body>
</html>
