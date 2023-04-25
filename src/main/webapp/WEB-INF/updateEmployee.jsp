<%@ page import="java.util.List" %>
<%@ page import="manager.CompanyManager" %>
<%@ page import="model.Employee" %>
<%@ page import="model.Company" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/24/2023
  Time: 10:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crate Company</title>
</head>
<% List<Company> companyList = (List<Company>) request.getAttribute("companies"); %>
<% Employee employee = (Employee) request.getAttribute("employee"); %>
<body>
<a href="/employees">Back</a>

<h2>Create Employee</h2>
<form action="/updateEmployee" method="post">
     <input name="id" type="hidden" value="<%=employee.getId()%>">
    name:<input type="text" name="name" value="<%=employee.getName()%>"><br>
    surname:<input type="text" name="surname" value="<%=employee.getSurname()%>"><br>
    email:<input type="text" name="email" value="<%=employee.getEmail()%>"><br>
    company:<input type="text" name="company" value="<%=employee.getId()%>">
            <input type="text" name="company" value="<%=employee.getId()%>">

    <br>
    <input type="submit" value="update">
</form>
</body>
</html>
