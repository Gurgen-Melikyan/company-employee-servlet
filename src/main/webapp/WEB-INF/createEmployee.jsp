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
<body>
<a href="/employees">Back</a>

<h2>Create Employee</h2>
<form action="/createEmployee" method="post">
    name:<input type="text" name="name"><br>
    surname:<input type="text" name="surname"><br>
    email:<input type="text" name="email"><br>
    company:
    <select name="id">
        <% for (Company company : companyList) { %>
        <option  value="<%=company.getId()%>"><%=company.getName()%> </option>
        <%}%>
    </select>
    <br>
    <input type="submit" value="crate">
</form>
</body>
</html>
