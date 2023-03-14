<%--
  Created by IntelliJ IDEA.
  User: sathira
  Date: 13/03/2023
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Account Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: auto;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #333;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        input[type=text], input[type=password], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h3 style="text-align: center">Account Credentials page</h3>

<form:form action="#" method="post" modelAttribute="user"> <%--Make inputs disabled, and dislay correct outputs--%>
    <table>
        <tr>
            <td>
                <form:label path="uid">User ID</form:label>
            </td>
            <td>
                <form:input path="uid" readonly="readonly" disabled="disabled"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="fName">First Name</form:label>
            </td>
            <td>
                <form:input path="fName" readonly="readonly" disabled="disabled"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lName">Last Name</form:label>
            </td>
            <td>
                <form:input path="lName" readonly="readonly" disabled="disabled"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="email">Email</form:label>
            </td>
            <td>
                <form:input path="email" readonly="readonly" disabled="disabled"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="password">Password</form:label>
            </td>
            <td>
                <form:input path="password" type="password" readonly="readonly" disabled="disabled"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="padding: 30px">
                <input type="submit" value="Go to login page"/>
            </td>

        </tr>
    </table>
</form:form>
</body>
</html>
