<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String uid=request.getParameter("id"); 
String upass=request.getParameter("pass"); 

out.println(uid);
out.println(upass);

%>
</body>
</html>