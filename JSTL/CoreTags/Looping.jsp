<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Looping tags</title>
</head>
<body>
<c:forEach var="i" begin="0" end="10">
<h5>Value of i is: <c:out value="${i}"></c:out></h5>
</c:forEach>
</body>
</html>