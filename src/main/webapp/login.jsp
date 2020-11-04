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
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Login Page"/>
    </jsp:include>
</head>
<body>

<jsp:include page="partials/navbar.jsp"/>

<h2>Login</h2>

<form method="POST" action="/login.jsp">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password">
    <button type="submit">Login</button>
</form>

<%--param has better handling with method = null--%>
<c:choose>
    <c:when test="${param.username == 'admin' && param.password == 'password'}">
        <%response.sendRedirect("/profile.jsp");%>
    </c:when>
</c:choose>


<%@ include file="partials/footer.jsp"%>
<jsp:include page="partials/scripts.jsp"></jsp:include>
</body>
</html>
