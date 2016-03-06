<%-- 
    Document   : emp
    Created on : 25 Jan, 2016, 5:28:07 PM
    Author     : ssrahul96
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<%ResultSet rs=null;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TopJobs</title>
        <style>
        body{
                margin:50px 0px; padding:0px;
                text-align:center;
        }
        table{
                border-collapse: collapse;
        }

        table, td, th{
                border: 1px solid black;
        }
            
        </style>  
    </head>
    <body>
        <h1>List Of Employers</h1>
        
        <%
            HttpSession ses=request.getSession();
            String uname=(String)ses.getAttribute("uname");
            //out.println(uname);
            if(uname!=null){
            String query="select * from employer;";
		Connection con=null;
		try
		{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/topjob","ssrahul96","rahul1234");
                    Statement st=con.createStatement();
                    rs= st.executeQuery(query);
			out.println("<table align=center><tr><th>Username</th><th>Password</th><th>Name</th><th>Gender</th><th>Mobile</th><th>email</th></tr>");
			while(rs.next())
                            {
				out.println("<tr><td>"+rs.getString(1)+"</td><td>"+ rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
                            }
        			out.println("</table>");
				
			}
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			catch(Exception e)
			{
			}out.println("<a href='info.jsp'>Go back</a>");
            }else{ %>
            Click <a href="../../../topjobs/login.jsp">here</a> to login
            <% }
        %>       
    </body>
</html>
