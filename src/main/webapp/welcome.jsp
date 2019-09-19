<%--
  Created by IntelliJ IDEA.
  User: notebook
  Date: 19.09.19
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            background: #1d1f20;
        }
        /* Basic styles */
        h1 {
            text-align: center;
            position: relative;
            float: left;
            color: #d7b94c;
            font-family: 'Inconsolata', Consolas, monospace;
            font-size: 4em;
        }
        h1 span{
            position: absolute;
            top: 0;
            right: 0;
            background: #1d1f20;
            width: 100%;
            border-left: .1em solid transparent;
            -webkit-animation: typing 3s steps(16) forwards,
            cursor 1s infinite;
            animation: typing 3s steps(16) forwards,
            cursor 1s infinite;
        }
        /* Animation */
        @-webkit-keyframes typing{
            from { width: 100%;}
            to { width: 0;}
        }
        @-webkit-keyframes cursor{
            50% { border-color: white;}
        }
        @keyframes typing{
            from{ width: 100%;}
            to{ width: 0;}
        }
        @keyframes cursor{
            50% { border-color: white;}
        }
    </style>
</head>
<body>
<div class="wrapper">
    <h1 style="text-align-all: center"><%=session.getAttribute("name") != null ?
            "Welcome " + session.getAttribute("name") : "Please login."%><span>&nbsp;</span></h1>
    <a href="${pageContext.request.contextPath}/logout" style="size: auto;color: azure">Log out</a>
</div>
</body>
</html>
