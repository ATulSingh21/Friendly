<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
  
<html>  
<head>  
<title>sql:Updates Tag</title>  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>  
<body>  
   
<sql:setDataSource driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/mysql"  
     user="root"  password="Test@123$" var="ds"/>  
 
 <sql:update dataSource="${ds}" var="updateDs">
INSERT into persons values(12,"NewUser","NewLastName","NewAddress","NewCity"); 
 </sql:update>
 
<sql:query dataSource="${ds}" var="rs">  
SELECT * from persons;  
</sql:query>  
<div class="container">   
<table class="table">  
<tr>  
<th>Person ID</th>  
<th>FirstName</th>  
<th>LastName</th>  
<th>Address</th>
<th>City</th>  
</tr> 
</div> 
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.PersonID}"/></td>  
<td><c:out value="${table.FirstName}"/></td>  
<td><c:out value="${table.LastName}"/></td>  
<td><c:out value="${table.Address}"/></td>
<td><c:out value="${table.City}"/></td>  
</tr>  
</c:forEach>  
</table>  
  
</body>  
</html>