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
        <a href="<c:url value='/ShoppingList?action=logout'/>">Logout</a>
        
        <br>
        <h1>List:</h1>
        <form method="post" action="<c:url value='/ShoppingList'/>">
            <label>Add item:</label>
            <input type="text" name="item" value ="">
            <input type="hidden" name="action" value="add"/>
            <input type="submit" value="Add">
            <br>
        </form>
            <a>${message}</a>
            <br>
            <c:if test="${sessionScope.itemList.size() > 0}">
                <form action="<c:url value='/ShoppingList'/>" method="post">
                    <c:forEach var='item' items ="${sessionScope.itemList}">
                        <input type="radio" name="delete" value="${item}">${item}
                        <br>
                    </c:forEach>
                        <input type="submit" value="delete">
                        <input type="hidden" name="action" value="delete">
                </form>
            </c:if>
    </body>
</html>
