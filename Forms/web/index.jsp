<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        div {
            display: inline-block;
            width: 300px;
            height: 300px;
            border: 1px solid red;
        }
    </style>
</head>
<body>

<form action="" method="get">
    <input type="text" placeholder="ID" name="id">
    <input type="text" placeholder="Name" name="name">
    <input type="text" placeholder="Address" name="address">
    <input type="text" placeholder="Salary" name="salary">
    <button type="submit">Save</button>
</form>

<%!int x;%>

<%

    ArrayList<String> arrayList = new ArrayList<>();
    arrayList.add("Name1");
    arrayList.add("Name2");
    arrayList.add("Name3");
    arrayList.add("Name4");
    arrayList.add("Name5");

    for (String s :
            arrayList) {
%>

<div>
    <p><%=s%>
    </p>
</div>

<%

    }

%>

</body>
</html>