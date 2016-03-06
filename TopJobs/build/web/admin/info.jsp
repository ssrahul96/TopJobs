<%-- 
    Document   : info
    Created on : 25 Jan, 2016, 5:27:54 PM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
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
        Welcome ${sessionScope.uname}<br>

        <a href="../../../topjobs/admin/sek.jsp">Click here to view JobSeakers</a><br>
        <a href="../../../topjobs/admin/emp.jsp">Click here to view Employers</a><br>
    </body>
</html>
