<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.koushik.javabrains.dto.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3> Login Successful </</h3>

<%
// User user = (User) session.getAttribute("user");
User user = (User) request.getAttribute("user");
%>
Hello <%=user.getUserName() %>!

</body>
</html>