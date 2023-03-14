<%--
  Created by IntelliJ IDEA.
  User: sathira
  Date: 09/03/2023
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<c:set var="type" value="${user.uid == 0 ? 'Add New User' : 'Edit User'}" />

<head>
    <title>${type}</title>
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
<h3 style="text-align: center">${type}</h3>

<form:form action="saveUser" method="post" modelAttribute="user">
    <table>
        <form:hidden path="uid"/>
        <tr>
            <td>
                <form:label path="fName">First Name</form:label>
            </td>
            <td>
                <form:input path="fName" required="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lName">Last Name</form:label>
            </td>
            <td>
                <form:input path="lName" required="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="email">Email</form:label>
            </td>
            <td>
                <form:input path="email" required="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="password">Password</form:label>
            </td>
            <td>
                <form:input path="password" required="true" type="password"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="reEnteredPassword">Re-enter password</form:label>
            </td>
            <td>
                <form:input path="reEnteredPassword" required="true" type="password"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="padding: 30px">
                <input type="submit" value="${type}"/>
            </td>

        </tr>
    </table>
</form:form>
</body>
</html>
