<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contains Function Practice</title>
</head>
<body>
<!-- Contains Function -->
<c:set var="String" value="This is my First string"></c:set>
<h1><c:out value="${String}"></c:out></h1>
<h2>1. Check weather String contains First or not</h2>
<c:if test="${fn:contains(String,'First') }">
<h3>String contains First</h3>
<h2>2. Print if String contains World </h2>
<c:if test="${fn:contains(String,'World') }">
<h3>This String contains World</h3>

<!-- Ends and Starts with Function -->

</c:if>
</c:if>
</body>
</html>