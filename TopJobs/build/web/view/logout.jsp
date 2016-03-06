<%
HttpSession ses=request.getSession();
ses.invalidate();
response.sendRedirect("../../../topjobs/index.jsp");
%>