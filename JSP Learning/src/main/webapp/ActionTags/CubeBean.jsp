<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="javaBean.CubeClass">
<%
int m=obj.Cube(4);
out.println("value of cube is:  "+m);
%>
</jsp:useBean>
</body>
</html>