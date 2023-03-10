<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sathira
  Date: 09/03/2023
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<c:set var="type" value="${book.bookID == 0 ? 'Add New Book' : 'Edit Book'}" />

<head>
    <title>${type}</title>
    <style>
        body {
            background-color: #f1f1f1;
        }
        h1 {
            text-align: center;
            margin-top: 50px;
        }
        form {
            width: 50%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 2px 2px #ccc;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px;
            width: 100%;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
        .error {
            color: red;
        }
    </style>
</head>

<body>
<h1>${type}</h1>

<form:form action="saveBook" method="post" modelAttribute="book">
    <%--this model  attribute is only mapped there with @MedelAttribute Book book in saveBook--%>
    <table>
        <form:hidden path="bookID" />
        <tr>
            <td>
                <form:label path="bName">Book Name</form:label>
            </td>
            <td>
                <form:input path="bName" required="true" />
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="noOfCopies">Number of copies</form:label>
            </td>
            <td>
                <form:input path="noOfCopies" required="true" min="1" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="${type}" />
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
