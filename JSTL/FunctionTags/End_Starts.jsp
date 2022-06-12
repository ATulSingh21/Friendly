<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ends and Starts with</title>
</head>
<body>
<!-- Ends with Function -->
<c:set var="String" value="This is my First string"></c:set>
<h1><c:out value="${String}"></c:out></h1>
<h2> Print if String ends with string</h2>
<c:if test="${fn:endsWith(String,'string') }">
<p>String ends with 'string'</p>
</c:if>

<!-- Starts with -->
<h2> Print if String ends with 'This'</h2>
<c:if test="${fn:startsWith(String,'This') }">
<p>String ends with 'This'</p>

</c:if>
</body>
</html>