<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.CustomerDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Crud</title>
</head>
<body>
<form id="customerForm">

    <input type="text" name="cusId" placeholder="Customer ID">
    <input type="text" name="cusName" placeholder="Customer Name">
    <input type="text" name="cusAddress" placeholder="Customer Address">
    <input type="text" name="cusSalary" placeholder="Customer Salary">

    <!--    ? = " "-->

    <!--    http://localhost:8080/crud/customer?cusId=C001&cusName=Dasun&cusAddress=Galle&cusSalary=1000-->

    <!--    ?cusId=C001&cusName=Dasun&cusAddress=Galle&cusSalary=1000  = Query String-->

</form>

<button type="submit" form="customerForm" formaction="customer" formmethod="post">Save</button>
<button type="submit" form="customerForm" formaction="customer" formmethod="get">Get All</button>

<br>
<br>
<table border="2" style="border-collapse:collapse;">
    <thead>
    <tr>
        <th>Customer ID</th>
        <th>Customer Name</th>
        <th>Customer Address</th>
        <th>Customer Salary</th>
    </tr>
    </thead>
    <tbody>
    <%

        ArrayList<CustomerDTO> allCustomers = (ArrayList<CustomerDTO>) request.getAttribute("customers");

        if (allCustomers != null) {
            for (CustomerDTO customer : allCustomers) {
    %>

    <tr>
        <td><%=customer.getId()%></td>
        <td><%=customer.getName()%></td>
        <td><%=customer.getAddress()%></td>
        <td><%=customer.getSalary()%></td>
    </tr>

    <%
            }
        }
    %>

    </tbody>
</table>

</body>
</html>
