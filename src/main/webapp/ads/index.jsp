<%--
  Created by IntelliJ IDEA.
  User: sarsi
  Date: 11/4/20
  Time: 12:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Must show all listings of the ads</h2>
<ul>
    <c:forEach var="ad" items="${ads}">
<%--        <p>${quote}</p>--%>
<%--        <q>${quote.content}</q>--%>
<%--        -${quote.authorFirstName} ${quote.authorLastName}--%>

        <p>${ad.title}</p>
        <p>${ad.description}</p>

<%--        <q>${quote.content}</q>--%>
<%--        -${quote.authorFirstName} ${quote.authorLastName}--%>
        <hr>
    </c:forEach>
</ul>
</body>
</html>
