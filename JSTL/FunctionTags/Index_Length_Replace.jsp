<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index, Replace, Length Function</title>
</head>
<body>
<!-- IndexOf function -->

<c:set var="string" value="It is first String."/> 
<h2><c:out value="${string}"></c:out></h2> 
<h2>Index of first in String is at location: ${fn:indexOf(string, "first")}</h2>

<!-- Length Function -->
 <c:set var="string" value="It is first String."/>
 <h2> Length of string is: <c:out value="${fn:length(string)}"> </c:out></h2>
 
 <!-- Replace function -->
 <c:set var="string" value="It is first String.">
 <h2>After replacing first string with other is: ${fn:replace(string,'first','other') }</h2></c:set>
</body>
</html>