<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Switch Practice</title>
</head>
<body>
<!-- Switch -->
<c:set var="i" value="-1" scope="application"></c:set>
<c:out value="${i}"></c:out>
<c:choose>
<c:when test="${i>0}">
<h2> Value of I is greater than 0</h2>
</c:when>
<c:when test="${i<0}">
<h2> Value of I is smaller than 0</h2>
</c:when>
<c:otherwise><h2>value is equal to 0</h2></c:otherwise>

</c:choose>
</body>
</html>