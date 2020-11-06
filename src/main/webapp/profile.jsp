<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
        <!-- Follows the MVC design pattern -->
        <p>Is Admin: ${isAdmin}</p>

        <!-- This part should be handled in the servlet side -->
        <p>Is Admin: ${sessionScope.get("isAdmin")}</p>
    </div>

</body>
</html>
