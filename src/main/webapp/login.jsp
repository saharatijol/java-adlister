<%--
  Created by IntelliJ IDEA.
  User: sarsi
  Date: 11/3/20
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login - JSP/JST Exercise</title>
</head>
<body>
<h2>Login</h2>

<form method="POST" action="/login.jsp">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password">
    <button type="submit">Login</button>
</form>

<c:choose>
    <c:when test="${param.username == 'admin' && param.password == 'password'}">
        <%response.sendRedirect("/profile.jsp");%>
    </c:when>
</c:choose>

</body>
</html>
