<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Redirecting and Appending Tags</title>
</head>
<body>
<!--Appending value in the url  -->

<c:url var="myUrl" value="https://www.youtube.com/">
<c:param name="q" value="/watch?v=HhjHYkPQ8F0&ab_channel=AlanWalker"></c:param>
<c:out value="${myUrl}"></c:out>

<!-- Redirecting to the Page -->
<c:redirect url="https://www.google.com/"></c:redirect>
</c:url>

</body>
</html>