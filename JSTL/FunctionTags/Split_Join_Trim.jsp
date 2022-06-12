<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Split,Join & Trim</title>
</head>
<body>
<c:set var="string" value="This_is_Join_Split_String"></c:set>
<c:set var="string2" value="${fn:split(string,'_') }"></c:set>
<h2>After joining the string we get:<c:set var="string3" value="${fn:join(string2,' ') }"></c:set>
<c:out value="${string3}"></c:out>
</h2>

<!-- Trim -->
<c:set var="str1" value="This is   Trim        function         "/>  
<p>String-1 Length is before trim : ${fn:length(str1)}</p>  
  
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is after trim : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p>  
  
</body>
</html>