<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <title>Elective Courses</title>
    <style>
        body {font-family: Arial, sans-serif; background-color: #f4f4f4;}
        h2 {text-align: center; color: #333;}
        table {margin: 0 auto; border-collapse: collapse; width: 80%; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);}
        th, td {padding: 12px; border: 1px solid #ddd; text-align: center;}
        th {background-color: #f2f2f2; color: #333;}
        tr:nth-child(even) {background-color: #f9f9f9;}
        tr:hover {background-color: #f1f1f1;}
    </style>
</head>
<body>
    <h2>Elective Courses</h2>
    <table>
        <tr><th>Course Code</th><th>Course Name</th><th>L</th><th>T</th><th>P</th><th>C</th></tr>
        <%
            ResultSet resultSet = (ResultSet) request.getAttribute("resultSet");
            try {
                while (resultSet != null && resultSet.next()) {
                    String courseCode = resultSet.getString("MyUnknownColumn");
                    String courseName = resultSet.getString("MyUnknownColumn_[0]");
                    int l = resultSet.getInt("MyUnknownColumn_[1]");
                    int t = resultSet.getInt("MyUnknownColumn_[2]");
                    int p = resultSet.getInt("MyUnknownColumn_[3]");
                    int c = resultSet.getInt("MyUnknownColumn_[4]");
        %>
        <tr>
            <td><%= courseCode %></td>
            <td><%= courseName %></td>
            <td><%= l %></td>
            <td><%= t %></td>
            <td><%= p %></td>
            <td><%= c %></td>
        </tr>
        <%
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>