<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML Practice</title>
</head>
<body>
<h1>Working on Vegetable data using XML</h1>
<c:import url="VegetableData.xml" var="vegetable"/>
<x:parse xml="${vegetable}" var="parsed"/>
<x:forEach select="$parsed//vegetable">
<h5>Vegetable name : <x:out select="name"/></h5>
<h5>Vegetable Price: <x:out select="price"/></h5>
</x:forEach>
</body>
</html>