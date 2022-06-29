<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--The action tags is used to control the flow between the pages
The jsp:forward action tag is used to forward the request to another resource it may be jsp, html or another resource.
Note: This doesn't print the contents(h2 value) it directly forward to the next page where include tags adds the content of the page too.
-->
<h2>This forward and include tags example</h2>

<%-- <jsp:forward page="forwardAndIncludeTagsTO.jsp">
<jsp:param value="Thankyou" name="printvalue"/>
</jsp:forward> --%>

<jsp:include page="forwardAndIncludeTagsTO.jsp">
<jsp:param value="Thankyou" name="printvalue"/>
</jsp:include>

</body>
</html>