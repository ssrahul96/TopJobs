<%-- 
    Document   : empview
    Created on : 18 Jan, 2016, 8:39:43 PM
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
        <h1>Your Profile</h1>
       <table align="center">
            <tr><td>Username:</td><td>${requestScope.uname}</td></tr>
            <tr><td>Password:</td><td>${requestScope.pass}</td></tr>
            <tr><td>Name:</td><td>${requestScope.fname}</td></tr>
            <tr><td>Gender:</td><td>${requestScope.gender}</td></tr>
            <tr><td>Mobile:</td><td>${requestScope.mobile}</td></tr>
            <tr><td>email:</td><td>${requestScope.email}</td></tr>
            <tr><td colspan="2" align="center"><a href="../../../../topjobs/info/employer.jsp">go back</a></td></tr>
        </table>
            <a href="../../../topjobs/change/emp.jsp">Change Password</a>
    </body>
</html>
