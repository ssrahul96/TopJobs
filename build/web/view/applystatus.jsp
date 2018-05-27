<%-- 
    Document   : applystatus
    Created on : 20 Jan, 2016, 3:03:39 PM
    Author     : ssrahul96
--%>

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<%ResultSet rs =null;%>
<%ResultSet rs1 =null;%>
<%Statement st=null;%>
<% Set<String> set = new HashSet<String>();%>
<% Set<String> set1 = new HashSet<String>();%>
<%String selected="\n";%>
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
        <script>
            function checkChange(){
                document.formone.submit();
            }            
        </script>
    </head>
    <body>
        <h1> Applied Status </h1>
        Welcome ${sessionScope.uname}<br>
        
        <%            
       set.add("--");
        HttpSession ses=request.getSession();
            String uname=(String)ses.getAttribute("uname");
            String query="select employer from jobview where jobsek='"+uname+"';";
		Connection con=null;
		try
		{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/topjob","ssrahul96","rahul1234");
                    st=con.createStatement();
                    rs= st.executeQuery(query);
			while(rs.next())
                            {
				//out.println("<tr><td>"+rs.getString(1)+"</td></tr>");
                                set.add(rs.getString(1));
                            }
				
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
                %>
                <form action="applystatus.jsp" method="post" name="formone">
                Select Employer:<select name="semp" onchange="checkChange()">
                    <% for(String s: set){ 
                    %>        
                        <option value="<%=s%>"><%=s%></option>        
                    <%}%>
                </select>
                </form>
                
                <%
                                selected= request.getParameter("semp");
            //out.println(selected);
            set.add(selected);
        String query1="select job from jobview where employer='"+selected+"';";
        System.out.println(query1);
        try
        {
            rs1=st.executeQuery(query1);
    
                }
		catch(SQLException e)
		{
                    out.println("sql not found");
		}
		catch(Exception e)
		{
                    out.println("Exception");
		}
                while(rs1.next()){
                    set1.add(rs1.getString(1));
                }
        %>
        <table align="center">
            <% int i=1;
                for(String s: set1){ %>  
            <tr><td><%=i%></td><td><%=s%></td></tr>
            <%i++;}%>
        </table>
                
                
                <br><br><a href="../../../topjobs/info/jobseaker.jsp">go back</a>
    </body>
</html>
