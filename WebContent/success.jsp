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
//User user = (User) request.getAttribute("user");
%>

<jsp:useBean id="user" class="org.koushik.javabrains.dto.User" scope="request">
<jsp:setProperty property="userName" name="user" value="newUser" />
</jsp:useBean>

Hello <%=user.getUserName() %>!

hello <jsp:getProperty property="userName" name="user"/>

</body>
</html>