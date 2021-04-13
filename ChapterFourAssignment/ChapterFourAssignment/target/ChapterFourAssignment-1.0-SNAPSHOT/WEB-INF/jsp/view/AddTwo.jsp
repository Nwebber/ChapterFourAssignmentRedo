<%--@elvariable id="number" type="com.webber.SumHandler"--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles\main.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Hello Guest!</h1>
            <p>Please enter two numbers and press Submit to calculate the sum.</p>
            <form method="POST" action="sumhandler">
                <li><span class="bold">Enter a Number: </span><p class="error">${number.num1Error}</p></li>
                <input name="num1" value="${fn:escapeXml(number.num1)}" /><br>
                <li><span class="bold">Enter another Number: </span><p class="error">${number.num2Error}</p></li>
                <input name="num2" value="${fn:escapeXml(number.num2)}" /><br><br>
                <input type="submit" value="Submit">
            </form>
            <p><span class="bold" name="message">The Result is: ${number.message}</span></p>
        </div>
    </body>
</html>
