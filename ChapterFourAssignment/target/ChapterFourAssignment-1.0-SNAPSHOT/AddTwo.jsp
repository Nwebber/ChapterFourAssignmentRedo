<%-- 
    Document   : AddTwo
    Created on : Mar 4, 2021, 2:57:36 PM
    Author     : Dorchek
--%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");

    if (num1 == null || num1.equals("")) {
        num1 = "0";
    }
    if (num2 == null || num2.equals("")) {
        num2 = "0";
    }

    String message;
    String error1 = " ";
    String error2 = " ";

    BigDecimal num1bd = null;
    BigDecimal num2bd = null;

    try {

        try {
            num1bd = new BigDecimal(num1);
        } catch (NumberFormatException ex) {
            error1 = "Invalid";
        }

        try {
            num2bd = new BigDecimal(num2);
        } catch (NumberFormatException ex) {
            error2 = "Invalid";
        }

        BigDecimal sum = num1bd.add(num2bd);
        message = num1bd + " + " + num2bd + " = " + sum;
        sum = sum.setScale(2, RoundingMode.HALF_UP);

    } catch (NumberFormatException ex) {

        message = "Needs to be a number";
    }

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles\main.css" rel="stylesheet" />
    </head>
    <body>
        <h1>Hello Guest!</h1>
        <p>Please enter two numbers and press Submit to calculate the sum.</p>
        <form action="AddTwo.jsp" method="POST">
            <input type="hidden" name="action" value="create" />
            <label for="num1">Enter a number:</label><br>
            <input type="text" name="num1" id="num1" placeholder="<%= num1%>"><%= error1%><br><br>
            <label for="num2">Enter another number:</label><br>
            <input type="text" name="num2" id="num2" placeholder="<%= num2%>"><%= error2%><br><br>
            <input type="submit" value="Submit">
        </form>
        <p>The Result is: <%= message%></p>
    </body>
</html>
