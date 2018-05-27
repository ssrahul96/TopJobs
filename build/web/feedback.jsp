<%-- 
    Document   : feedback
    Created on : 4 Mar, 2016, 10:40:42 AM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>TopJobs</title>
    </head>
    <body><br><br><br><br>
        <h1>FeedBack</h1>
        <form action="feedbacksubmit.do" method="get">
            Name : <input type="text" name="fname"><br><br>
            Contact Number :<input type="text" name="num"><br><br>
            how good is website <input type="radio" name="webr" value="0">0
                                <input type="radio" name="webr" value="1">1
                                <input type="radio" name="webr" value="2">2
                                <input type="radio" name="webr" value="3">3
                                <input type="radio" name="webr" value="4">4
                                <input type="radio" name="webr" value="5">5<br><br>
            Suggestion :        <textarea rows="4" cols="50" name="ufed">
            </textarea><br><br>
            <input type="submit" value="submit">
        </form>
    </body>
</html>
