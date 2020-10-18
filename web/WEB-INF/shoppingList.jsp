<%-- 
    Document   : shoppingList
    Created on : Oct 18, 2020, 12:48:01 PM
    Author     : 843827
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <h1>Hello, ${username}</h1>
        
        <br>
        <h1>List:</h1>
        <form method="post" action="ShoppingList">
            <label>Add item:</label>
            <input type="text" name="itemname" value ="">
            <input type="submit" value="Add">
            <br>
        </form>
    </body>
</html>
