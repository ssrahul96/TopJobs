<%-- 
    Document   : appliedview
    Created on : 18 Jan, 2016, 2:37:31 PM
    Author     : ssrahul96
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<%ResultSet rs =null;%>
<%ArrayList<String> can = new ArrayList<String>();%>
<%ArrayList<String> job = new ArrayList<String>();%>
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
        <%
            
            HttpSession ses=request.getSession();
            String uname=(String)ses.getAttribute("uname");
            String query="select * from sekjob where jobs=ANY(select jobs from jobs where employer='"+uname+"');";
		Connection con=null;
		try
		{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/topjob","ssrahul96","rahul1234");
                    Statement st=con.createStatement();
                    rs= st.executeQuery(query);
			out.println("<table border=1 align=center><tr><th>Candidate</th><th>Applied for</th></tr>");
			while(rs.next())
                            {
                                can.add(rs.getString(1));
                                job.add(rs.getString(2));
				out.println("<tr><td>"+rs.getString(1)+"</td><td>"+ rs.getString(2)+"</td></tr>");
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
			}
                
                
                String qry="insert into jobview values(?,?,?)";
                PreparedStatement pst=con.prepareStatement(qry);
                for(int i=0;i<can.size();i++){
                pst.setString(1,can.get(i));
                pst.setString(2,uname);
                pst.setString(3,job.get(i));
                pst.executeUpdate();
                }
                con.close();
		%>
                <a href="../../../topjobs/info/employer.jsp">go back</a>
    </body>
</html>
