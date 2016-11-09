<%--
  Created by IntelliJ IDEA.
  User: Marc
  Date: 19/10/2016
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculadora que más mola</title>
    <style>
        input [type=number]{
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

        .entrada {
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

        select{
            margin: 0 auto;
            width: 50%;
            text-align: center;
            align-content: center;
            align-self: center;
            background-color: #00ff7b;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

    </style>
</head>
<body>
<form action="/interfaz-calculadora" method="post">
    <br><br>
    <p align="center">
        Primer número: <br>
    <input class="entrada" type="number" min="0" step="1" name="primNum"> <br>
    Operación: <br>
    <select name="operacion">
        <option value="suma" selected="selected">Suma</option>
        <option value="resta">Resta</option>
        <option value="multiplicacion">Multiplicación</option>
        <option value="division">División</option>
    </select> <br>
    Segundo número: <br>
    <input class="entrada" type="number" min="0" step="1" name="segNum"><br>
    <input type="submit" value="Ejecuta">
    </p>
</form>
</body>
</html>
