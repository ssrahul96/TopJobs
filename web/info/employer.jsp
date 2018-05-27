<%-- 
    Document   : employer
    Created on : 17 Jan, 2016, 10:18:44 PM
    Author     : ssrahul96
--%>

<%@page import="java.sql.*"%>
<%@page import="java.lang.String"%>
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

        <h1>Employer</h1>
        Welcome ${sessionScope.uname}
        <br>
        <form action="../../../topjobs/empview">
            <input type="submit" value="click here to view details">
        </form>
        <a href="../../../topjobs/new/newempjob.jsp">Post Job</a><br><br>
        <a href="../../../topjobs/new/appliedview.jsp">View Applied Candidates</a>
        
    </body>
</html>
