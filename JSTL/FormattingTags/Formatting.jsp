<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date Formatting Tags</title>
</head>
<body>
<c:set var="Date" value="<%=new java.util.Date()%>"></c:set>

<p>Formatting Date and Time: 
<fmt:formatDate type="both" value="${Date}"/></p>

<p>Formatting Date only: 
<fmt:formatDate type="date" value="${Date}"/></p>

<p>Formatting Time only: 
<fmt:formatDate type="time" value="${Date}"/></p>

<p>Formatting date and time in short: 
<fmt:formatDate type="both" dateStyle="short" value="${Date}"/></p>

<p>Formatting date and time in Medium:  
<fmt:formatDate type="both" dateStyle="medium" value="${Date}"/></p>

<p>Formatting date and time in long: 
<fmt:formatDate type="both" dateStyle="long" value="${Date}"/></p>

</body> 
</html>