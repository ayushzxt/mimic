<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mock.project.entity.MockConfiguration" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mock List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #b2ebf2); /* Soft gradient background */
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: #ffffff; /* Solid white background for the table */
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #007bff; /* Table header background color */
            color: #ffffff;
        }
        tr:nth-child(even) {
            background: #f9f9f9; /* Alternating row colors */
        }
        tr:hover {
            background: #e0f7fa; /* Highlight row on hover */
        }
        a {
            display: block;
            text-align: center;
            padding: 10px 20px;
            margin: 20px auto;
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            width: max-content;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>List of Mocks</h1>
    <table>
        <tr>
            <th>Request Path</th>
            <th>Request Method</th>
            <th>Response Status</th>
            <th>Response Body</th>
            <th>Request Body</th>
            <th>Request Headers</th>
            <th>Query Params</th>
        </tr>
        <%
            List<MockConfiguration> mocks = (List<MockConfiguration>) request.getAttribute("mocks");
            if (mocks != null) {
                for (MockConfiguration mock : mocks) {
        %>
            <tr>
                <td><%= mock.getRequestPath() %></td>
                <td><%= mock.getRequestMethod() %></td>
                <td><%= mock.getResponseStatus() %></td>
                <td><%= mock.getResponseBody() %></td>
                <td><%= mock.getRequestBody() %></td>
                <td><%= mock.getRequestHeaders() %></td>
                <td><%= mock.getQueryParams() %></td>
            </tr>
        <%
                }
            }
        %>
    </table>
    <a href="/api/mocks/configure">Add New Mock</a>
</body>
</html>
