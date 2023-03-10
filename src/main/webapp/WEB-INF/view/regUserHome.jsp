<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.userwebapp.model.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>

    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .centerBtn {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }
        .buttonArrangement {
            display: flex;
            justify-content:center;
            padding: 5px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        button:hover {
            background-color: #3e8e41;
        }
    </style>
</head>

<body>
<h3 style="text-align: center">Library Management System</h3>

<div class="centerBtn">
    <button type="button"><a href="newForm">Add New Book</a></button>
</div>

<table>
    <tr>
        <th>Book ID</th>
        <th>Name</th>
        <th>No of copies</th>
        <th colspan="2">Action</th>
    </tr>

    <c:forEach var="book" items="${bookList}">
        <tr>
            <td>${book.getBookID()}</td>
            <td>${book.getbName()}</td>
            <td>${book.getNoOfCopies()}</td>
            <td>
                <button><a href="update?bookID=${book.getBookID()}" style="color: white;">Update</a></button>
            </td>
            <td>
                <button><a href="delete?bookID=${book.getBookID()}" style="color: white;">Delete</a></button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>

</html>
