<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.sql.*" %>
    <%@page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Context initContext= new InitialContext();
Context envContext = (Context) initContext.lookup("java:/comp/env");
DataSource ds=(DataSource) envContext.lookup("jdbc/myoracle");
Connection conn = ds.getConnection();
out.println("연동성공");
%>
</body>
</html>