<%-- 
    Document   : newempjob
    Created on : 18 Jan, 2016, 11:07:25 AM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TopJobs</title>
        <script>
            function check(){
                var flag=0;
                var x=document.pform.jobtype.value;
                if(x==="")
                    alert('Enter Job');
                else
                    flag++; 
                
                if(flag===1)
                    var r = confirm("Are you sure you want to post the job?");
                    if(r==true)
                        document.pform.submit();
                }
        </script>
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
    </head>
    <body>
        <h1>Post new Jobs</h1>
        <form action="../../../topjobs/postjob.do" method="post" name="pform">
            Job : <div class="text"><input type="text" name="jobtype" style="border:none"></div>
            <input type="button" value="Post job" onclick="check()">
        </form>
    </body>
</html>
