<%
HttpSession ses=request.getSession();
ses.invalidate();
System.out.println("logged out");
%>
<jsp:forward page="index.jsp"/>