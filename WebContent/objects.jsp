<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String userName = request.getParameter("name");

if( userName!="" && userName!=null ) {
	session.setAttribute("savedUserName", userName);
	application.setAttribute("savedUserName", userName);
	pageContext.setAttribute("applicationUserName", userName);
// 	pageContext.setAttribute("savedUserName", userName, PageContext.APPLICATION_SCOPE );
}
%>

<br> userName in the request object is : <%=userName %>
<br> userName in the session object is : <%=session.getAttribute("savedUserName") %>
<br> userName in the application object is : <%=application.getAttribute("savedUserName") %>
<br> userName in the page context object is : <%=pageContext.getAttribute("applicationUserName") %>


</body>
</html>