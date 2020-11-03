<%--
  Created by IntelliJ IDEA.
  User: sarsi
  Date: 11/3/20
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counter = 0; %>
<% counter += 1; %>

<%! String name = ""; %>
<% name = "Sara"; %>


<html>
<head>
    <title>JSP/JSTL</title>
</head>
<body>
<h1>Welcome To The Site!</h1>
<%@ include file="partials/navbar.jsp" %>
<h1>The current count is <%= counter %>.</h1>

<h1>Implicit objects example</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"name" parameter with Expression Language: ${param.name}</p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<% request.setAttribute("message", "Hello, World!"); %>
...
<h1>Here is the message: ${message}</h1>
View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

<c:choose>
    <c:when test="${param.name}">
        <p>boolean_expression_1 was true</p>
    </c:when>
    <c:when test="${param.name}">
        <p>boolean_expression_1 was false, and boolean_expression_2 was true</p>
    </c:when>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>
</c:choose>


</body>
</html>
