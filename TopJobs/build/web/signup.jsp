<%-- 
    Document   : signup
    Created on : 17 Jan, 2016, 8:38:27 PM
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
                var flag=0,ws=0;
                var v=document.sform.uname.value;
                if(v==="")
                    document.getElementById("vuname").innerHTML = 'Enter Username';
                else{
                    for (var i=0, len = v.length; i<len; ++i){
                        if (v.charAt(i) === ' ') {
                            ws++;  break;} }
                    if(ws===1)
                        document.getElementById("vuname").innerHTML = 'Cannot have blank spaces';
                    else{
                    flag++; document.getElementById("vuname").innerHTML = '';}}
                var w=document.sform.pass.value;
                if(w==="")
                    document.getElementById("vpass").innerHTML = 'Enter Password';
                else{
                    flag++; document.getElementById("vpass").innerHTML = '';}
                var x=document.sform.fname.value;
                if(x===""){
                    document.getElementById("vfname").innerHTML = 'Enter Name';
                }
                else{
                    flag++; document.getElementById("vfname").innerHTML = '';}
                var y=document.sform.mob.value;
                if(y==="")
                    document.getElementById("vmob").innerHTML = 'Enter Mobile';
                else{
                    if(isNaN(y))
                       document.getElementById("vmob").innerHTML = 'Enter Valid Mobile Number';
                    else{
                        if(y.length!==10)
                            document.getElementById("vmob").innerHTML = 'Enter Valid Mobile Number';
                        else{
                            flag++; document.getElementById("vmob").innerHTML = '';}}}
                var z=document.sform.email.value;
                if(z==="")
                    document.getElementById("vemail").innerHTML = 'Enter email';
                else{
                        var atpos = z.indexOf("@");
                        var dotpos = z.lastIndexOf(".");
                        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=z.length) 
                             document.getElementById("vemail").innerHTML = 'Enter Valid Email';                        
                        else{
                              flag++;document.getElementById("vemail").innerHTML = '';
                          }
                }
                if(flag===5){
                    document.sform.submit();
                }
            }
        </script>
    </head>
    <body>
        <form action="../../../topjobs/ssignup.do" method="post" name="sform">
            <h1 class="animated infinite fadeIn"> Signup </h1>
            <table align="center">
                <tr><td>Signup as</td>
                    <td><input type="radio" name="utype" value="1" checked="checked" />JobSeaker
                        <input type="radio" name="utype" value="2" />Employer </td>
                <tr><td>Name:</td><td><div class="text"><input type="text" name="fname" style="border: none"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="vfname" style="color:red;"></div></td></tr>
                <tr><td>Userid:</td><td><div class="text"><input type="text" name="uname" style="border: none"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="vuname" style="color:red;"></div></td></tr>
                <tr><td>Password:</td><td><div class="text"><input type="password" name="pass" style="border: none"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="vpass" style="color:red;"></div></td></tr>
                <tr><td>Gender:</td><td><input type="radio" name="sex" value="male" checked="checked" />Male
                        <input type="radio" name="sex" value="female" />Female</td></tr>
                <tr><td>Mobile:</td><td><div class="text"><input type="text" name="mob" style="border: none"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="vmob" style="color:red;"></div></td></tr>
                <tr><td>Email:</td><td><div class="text"><input type="text" name="email" style="border: none"></div></td></tr>
                <tr><td colspan="2" align="center"><div id="vemail" style="color:red;"></div></td></tr>
                <tr><td colspan="2" align="center"><input type="button" value="Signup" onclick="check()"></td></tr>
            </table>
        </form>
        	<p>Signup as Jobseaker to find for new jobs
		<p>Signup as Employer to offer new jobs
    </body>
</html>
