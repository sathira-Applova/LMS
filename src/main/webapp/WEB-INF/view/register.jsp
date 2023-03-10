<%--
  Created by IntelliJ IDEA.
  User: sathira
  Date: 09/03/2023
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3 style="text-align: center">Register User</h3>

<form:form action="regUser" method="post" modelAttribute="user">
    <table align="center">
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
                <form:input path="password" required="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="password2">Re-enter password</form:label>
            </td>
            <td>
                <form:input path="password2" required="true"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="padding: 30px">
                <input type="submit" style="width: 100%" value="Register"/>
            </td>

        </tr>
    </table>
</form:form>
</body>
</html>
