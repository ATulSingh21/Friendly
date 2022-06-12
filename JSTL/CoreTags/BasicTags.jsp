<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tags Practice</title>
</head>
<body>
<h1>Example of Basic tag practice</h1>

<!--Basic set and cout tags-->
<c:set var="i" value="21" scope="application"></c:set>
<h2>Value of i is: <c:out value="${i}"></c:out></h2>

<!-- Remove Tags -->
<%--<c:remove var="i"/>
<h2>Here we have removed value of i: <c:out value="${i}"></c:out></h2>--%>

<!--If tags -->
<c:set var="j" value="21" scope="application"></c:set>
<c:if test="${i==j}">
<h2>value of i matches the new value of j using if loop</h2>
</c:if>



</body>
</html>