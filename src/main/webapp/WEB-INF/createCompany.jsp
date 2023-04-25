<%@ page import="java.util.List" %><%--
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
<%List<String> countries = (List<String>) request.getAttribute("countryList");%>
<body>
<a href="/companies">Back</a>

<h2>Create Company</h2>
<form action="/createCompany" method="post">
    name:<input type="text" name="name"><br>
    country:
    <select name="country">
        <%for (String country : countries) { %>
        <option value="<%=country%>"><%=country%>></option>
        <% }%>
    </select>
    <br>
    <input type="submit" value="crate">
</form>
</body>
</html>
