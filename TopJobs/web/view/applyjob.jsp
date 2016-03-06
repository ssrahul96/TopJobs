<%-- 
    Document   : applyjob
    Created on : 18 Jan, 2016, 9:23:31 PM
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
        ${requestScope.sts}<br>
        <a href="../../../topjobs/info/jobseaker.jsp">go back</a>
    </body>
</html>
