<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TopJobs</title>
        <style>
        body {
            text-align:center;
            background: #333;
            color: #eee;
        }
        
        .fon{
    position: absolute;
    right: 0px;
    top: 0px;
   display: inline-block;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  cursor: pointer;
  padding: 10px 20px;
  border: 1px solid rgba(1,141,196,0.78);
  -webkit-border-radius: 25px;
  border-radius: 25px;
  font: normal 16px/normal "Comic Sans MS", cursive, sans-serif;
  color: rgba(255,255,255,0.9);
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
  background: #02d866;
  -webkit-box-shadow: 5px 5px 8px 2px rgba(0,0,0,0.5) inset, 2px 2px 2px 0 rgba(15,255,39,0.2) ;
  box-shadow: 5px 5px 8px 2px rgba(0,0,0,0.5) inset, 2px 2px 2px 0 rgba(15,255,39,0.2) ;
  text-shadow: 4px 4px 6px rgba(0,55,255,0.78) , -1px -1px 0 rgba(0,97,255,0.93) ;
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
}
.footer{
    position: absolute;
    text-align: center;
    bottom: 0px;
    width: 100%;
}

            
        </style>
        <link href="animate.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1 class="animated infinite pulse">Welcome To TopJobs</h1>
        <a href="../../../topjobs/login.jsp"><div class="fon">login/signup</div></a>
        <img src="findjob.png" height="300" width="400"/>
		<P>An online website for searching and posting jobs
		<p>Signup with us and benifit yourself
                <p><a href="feedback.jsp"> Feedback </a>
                    
        <div class="footer">Copyright &copy; TopJobs Inc 2016   <a href="contactus.jsp">Contact us</a></div>
        
        <%
          String ipAddress  = request.getHeader("X-FORWARDED-FOR");
          String date = new java.util.Date().toString();
          String browser = request.getHeader("User-Agent");
            System.out.println(browser);
            if(ipAddress == null)
            {
              ipAddress = request.getRemoteAddr();
            }
            System.out.println("ipAddress:"+ipAddress);
            String query="insert into address values('"+ipAddress+"','"+date+"','"+browser+"');";
            System.out.println(query);
            Connection con=null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/topjob","ssrahul96","rahul1234");
				Statement stmt=con.createStatement();
				stmt.executeUpdate(query);
                                con.close();
                                //out.println("Thank You");
			}
			catch(ClassNotFoundException e)
			{
				System.out.println("Class not found");
			}
			catch(SQLException e)
			{
				System.out.println("sql not found");
			}
			catch(Exception e)
			{
			}  
        %>
    </body>
</html>
