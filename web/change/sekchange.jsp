<%-- 
    Document   : empchange
    Created on : 21 Jan, 2016, 1:14:43 PM
    Author     : ssrahul96
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<%ResultSet rs=null;%>
<%Statement st=null;%>
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
    </head>
    <body>
        <%
            String uname=(String)session.getAttribute("uname");
            String oldpass =request.getParameter("oldpass");
            String newpass=request.getParameter("newpass");
            
            if(uname==null){
                out.println("Login to change pass");
            }else{
            String query="select password from jobseaker where username='"+uname+"';";
            Connection con=null;
		try
		{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/topjob","ssrahul96","rahul1234");
                st=con.createStatement();
		rs=st.executeQuery(query);
                }
		catch(ClassNotFoundException e)
		{
                    out.println("Class not found");
		}
		catch(SQLException e)
		{
                    out.println("sql not found");
		}
		catch(Exception e)
		{
                    out.println("Exception");
		}
                rs.next();
                
                if(oldpass.equals(rs.getString(1))){
                    String query1="update jobseaker set password='"+newpass+"' where username='"+uname+"';";
                    System.out.println(query1);
                    st.executeUpdate(query1);
                    out.println("Password Successfully Changed");
                    %><br><br><a href="../../../topjobs/info/jobseaker.jsp">go back</a><%   
                }else{
                    out.println("Wrong Password!!! Try Again");
                    %><br><br><a href="sek.jsp">go back</a><%
                }       
            }
            
            
        %>
    </body>
</html>
