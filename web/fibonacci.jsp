<%--
  Created by IntelliJ IDEA.
  User: Marc
  Date: 19/10/2016
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fibonacci nos salvará</title>
    <style>
        input[type=number], select {
            width: 50%;
            align-content: center;
            text-align: center;
            align-self: center;
            align-items: center;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            margin: 0 auto;
            width: 50%;
            text-align: center;
            align-content: center;
            align-self: center;
            background-color: lightblue;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input [type=number]:focus{
            border: 3px solid grey;
        }

        input[type=submit]:hover {
            background-color: lightskyblue;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        h1 {
            color: #ff893b;

        }

    </style>
</head>
<body>
<form action="/calcular-fibonacci">
    <br>
    <br>
    <h1 align="center">Number of results:</h1>
   <p align="center">
       <br>
       <input type="number" min="0" step="1" name="numFib">
       <input type="submit" value="Ejecuta">
   </p>
</form>

</body>
</html>
