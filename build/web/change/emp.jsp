<%-- 
    Document   : emp
    Created on : 21 Jan, 2016, 12:56:07 PM
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
        <script type="text/javascript">
            function validate(){
                var opass = document.cform.oldpass.value;
                var npass = document.cform.newpass.value;
                var cnpass = document.cform.cnewpass.value;
                
                if(npass===cnpass){
                    document.getElementById("vpass").value = '';
                    document.cform.submit();
                }
                else
                    document.getElementById("vpass").value = 'Password doesnot match';
            }
        </script>
    </head>
    <body>
        <form name="cform" method="post" action="empchange.jsp">
        <table align="center">
            <tr><td colspan="2" align="center" ><h3>Change Password</h3></td></tr>
            <tr><td>Old Password</td><td><div class="text"><input type="password" style="border:none;" name="oldpass"></div></td></tr>
            <tr><td colspan="2" align="right"><input type="text" style="border:none; color:red;" readonly></td></tr>
            <tr><td>New Password</td><td><div class="text"><input type="password" style="border:none;" name="newpass"></div></td></tr>
            <tr><td colspan="2" align="right"><input type="text" style="border:none; color:red;" readonly></td></tr>
            <tr><td>Confirm New Password</td><td><div class="text"><input type="password" style="border:none;" name="cnewpass"></div></td></tr>           
            <tr><td colspan="2" align="right"><input type="text" style="border:none; color:red;"  id="vpass" readonly></td></tr>        
            <tr><td colspan="2" align="center"><input type="button" value="Change Password" onclick="validate();"></td></tr>
        </table>
        </form>
    </body>
</html>
