<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<%ResultSet rs =null;%>
<%ResultSet rs1 =null;%>
<%Statement st=null;%>
<%LinkedHashSet<String> s = new LinkedHashSet<String>();%>
<%ArrayList<String> val = new ArrayList<String>();%>
<%String ele=null;%>
<%String eleval=null;%>
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
        <script type="text/javascript">
            function checkChange(){
                document.formone.submit();
            }
            
            function submitform(){
                var che = document.formtwo.sjob.value;
                if(che==="")
                    alert("Select a Job");
                else
                    document.formtwo.submit();
            }
        </script>
    </head>
    <body>
        <h1>Find new Job</h1>
        
        
        <% selected= request.getParameter("semp");
        s.add(selected);
        %>
        <%
            String query="select * from jobs;";
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
                
                while(rs.next()){
                    s.add(rs.getString(1));
                }
        %>
    
    <table align=center>
    <div><form action="newsekjob.jsp" method="post" name="formone">
        <tr><td>Select Company :</td>
            <td><select name="semp" onchange="checkChange()">
                    <% for(String op:s){ 
                    %>        
                        <option value="<%=op%>"><%=op%></option>        
                    <%}%>
                </select>
            </td>    
    </form></div>
    
    <%
        String query1="select jobs from jobs where employer='"+selected+"';";
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
                //val.add("jobs");

                while(rs1.next()){
                    val.add(rs1.getString(1));
                }
        %>
    
    <form method="post" action="../applyjob.do" name="formtwo">
        <tr><td>Job offered</td>
            <td><select name="sjob">
            <% for(int j=0;j<val.size();j++){ 
            eleval=val.get(j);
            %>  
            <option value="<%=eleval%>"><%=eleval%></option>        
            <%}%>
                </select>
            </td></tr>
        <tr><td colspan="2" align="center"><input type="button" value="Select Job" onclick="submitform();"></td></tr>
    </form>
    </table>
    </body>
</html>
