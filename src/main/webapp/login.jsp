<%@ page import="com.egs.internship.General" %>
<%--
  Created by IntelliJ IDEA.
  User: notebook
  Date: 18.09.19
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hello </title>

    <style> Globals
    body,
    html {
        margin: 0;
        padding: 0;
        background: #EAF6FF;
        font-family: 'Mukta Malar', sans-serif;
        font-weight: 700;
        overflow: hidden;
    }

    h1 {
        margin: 0;
        color: blue;
        text-transform: uppercase;
        font-size: 8vw;
        text-shadow: 0px 4px #d6e5e3;
    }
</style>
</head>
<body>
<h1>Hello <%=request.getAttribute("name")%>!</h1>
    <h2>
        <%=request.getAttribute("error") != null ? "Invalid Username/Password" : ""%>
    </h2>
<form action="${pageContext.request.contextPath}/login" method="post">
    Username
    <br/>
    <input name="login" id="Login" type="text">
    <br/>
    Password
    <br/>
    <input name="pwd" id="Password" type="text">
    <br/>
    <input type="submit" name="Log in">
</form>
</body>
</html>
