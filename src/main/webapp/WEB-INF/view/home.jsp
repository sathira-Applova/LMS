<%--
  Created by IntelliJ IDEA.
  User: sathira
  Date: 09/03/2023
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Welcome</title>
</head>

<style>
  .centerBtn {
    display: flex;
    justify-content: center;
    margin: 20px 0;
  }
  .buttonArrangement{
    display: flex;
    justify-content:center;
    padding:5px;
  }

</style>

<body>
<h3 style="text-align: center">Library Management System</h3>

<div class="centerBtn">
  <button type="button"><a href="#">Login</a></button> <%-- this have have login --%>

  <button type="button"><a href="#">Register</a></button> <%-- this have have register --%>
</div>

<table border="1" align="center" style="width: 70%; text-align: center">
  <tr>
    <th>Book ID</th>
    <th>Name</th>
    <th>No of copies</th>
  </tr>

  <c:forEach var="book" items="${bookList}">
    <tr>
      <td>${book.getBookID()} </td>
      <td>${book.getbName} </td>
      <td>${book.getNoOfCopies()} </td>
      <td colspan="2">
      </td>
    </tr>
  </c:forEach>

</table>

</body>
</html>
