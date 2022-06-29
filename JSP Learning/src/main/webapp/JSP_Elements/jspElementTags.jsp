<%@page import="org.apache.bcel.generic.RETURN"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- There are three types of Scriplet Elements are present
1.Scriplet Tags
2.Expression Tags
3.Declaration Tags -->

<h1>Scriplet Tags</h1>
<!-- Scriplet tags consists <% %>  -->
<body>
<form>
<h3>Write the text you want to fetch</h3>
<input type="text" name="uname">
<input type="Submit" value="Fetch"><br></br>
</form>
<h2>With the help of Scriplet tags we get output like:</h2>
<%
String fname=request.getParameter("uname");
out.println("Output after fetching data from textbox is : "+fname);
%>

<!-- Expression tags are used to print the values and output of the method or expression. we use this instead of out.println -->
<h2>With the Help of Expression tags we get the output</h2>
<%="Welcome= "+request.getParameter("uname") %>

<!-- JSP Declaration Tags is used to declare fields and method 
The Code written in the Declaration tags is placed outside the service() tags so it doesn't add memory with each request
-->
<h2>Declarative Tags</h2>
<%!int cube(int n){
return n*n*n;}
%>
<%="Cube of 3 is "+cube(3) %>
</body>
</html>