<%-- 
    Document   : login
    Created on : 17 Jan, 2016, 8:34:35 PM
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
            table{
                height: 50px;
            }
            td {
                vertical-align: bottom;
            }
            .text
            {
            display: inline-block;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
            float: none;
            z-index: auto;
            width: auto;
            height: auto;   
            position: static;
            cursor: default;
            opacity: 1;
            margin: 0;
            padding: 6px 20px;
            overflow: visible;
            -webkit-border-radius: 32px / 54px;
            border-radius: 32px / 54px;
            font: normal 18px/normal "Coda", Helvetica, sans-serif;
            color: rgba(0,142,198,1);
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            background: rgba(252,252,252,1);    
            -webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
            box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2) inset;
            text-shadow: 1px 1px 0 rgba(255,255,255,0.66) ;
            -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            -webkit-transform: none;
            transform: none;
            -webkit-transform-origin: 50% 50% 0;
            transform-origin: 50% 50% 0;            
            }
            
        </style>
        <link href="animate.css" rel="stylesheet" type="text/css"/>
        <script>
            function check(){
                var flag=0;
                var x=document.lform.uname.value;
                if(x==="")
                    document.getElementById("e1").innerHTML="Enter Username";    
                else{
                    flag++;  document.getElementById("e1").innerHTML="";}
                var y=document.lform.pass.value;
                if(y==="")
                    document.getElementById("e2").innerHTML="Enter Password";
                else{
                    flag++;  document.getElementById("e2").innerHTML="";}
                if(flag===2){
                    document.lform.submit();
                }
            }
        </script>
    </head>
    <body>
        <form action="../../../topjobs/slogin.do" method="post" name="lform">
            <h1 class="animated infinite fadeIn"> Login </h1>
            <table align=center>
                <tr><td>Login as</td>
                    <td><input type="radio" name="utype" value="1" checked="checked" />JobSeaker
                        <input type="radio" name="utype" value="2" />Employer
                        <input type="radio" name="utype" value="3" />Admin</td></tr>
                <tr><td>Userid:</td><td><div class="text"><input type="text" name="uname" style="border:none;"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="e1" style="color:red;"></div></td></tr>
                <tr><td>Password:</td><td><div class="text"><input type="password" name="pass" style="border:none;"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="e2" style="color:red;"></div></td></tr>
                <tr><td colspan="2" align=center><input type="button" value="login" onclick="check()"></td></tr>
                <tr><td colspan="2" align=center><a href="signup.jsp">New User? </a></td></tr>
            </table>
        </form>
        		<p>more features coming soon!! stay tuned
    </body>
</html>
