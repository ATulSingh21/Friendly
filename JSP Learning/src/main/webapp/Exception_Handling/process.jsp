<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page errorPage="error.jsp" %>
<% 
String firstValue=request.getParameter("firstNumber");
String secondValue=request.getParameter("secondNumber");
int a=Integer.parseInt(firstValue);
int b=Integer.parseInt(secondValue);
int c=a/b;
out.println("Output after dividing value of a and b is: "+c);
 %>
</body>
</html>