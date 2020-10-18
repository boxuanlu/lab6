<%-- 
    Document   : register
    Created on : Oct 18, 2020, 12:47:45 PM
    Author     : 843827
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="<c:url value='/ShoppingList'/>" method="post" >
            <label>Username:</label>
            <input type="text" name="username" value ="">
            <input type="hidden" name="action" value="register">
            <input type="submit" value="register">
            <br>
        </form>
            <a>${message}</a>
    </body>
</html>
