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

        <h1>Jobseaker</h1>
        Welcome ${sessionScope.uname}<br>
        <form action="../../../topjobs/sekview">
            <input type="submit" value="click here to view details">
        </form><br>
        <a href="../../../topjobs/new/newsekjob.jsp">Find Job</a><br><br>
        <a href="../../../topjobs/view/applystatus.jsp">Check Status</a>
    </body>
</html>
