<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>

<%
	String uid = request.getParameter("id");
    String upass = request.getParameter("pass");
    String ulev =   request.getParameter("lev");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String id = null;
String pass = null;
String lev=null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "shinssd";
String password = "0000";
String sql = "select * from employees where id='" + uid + "'";
try {
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection(url, user, password);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while (rs.next()) {
		id = rs.getString("id");
		pass = rs.getString("pass");
		lev = rs.getString("lev");
	}
} catch (Exception e) {
	e.printStackTrace();
}
/* out.println("-------------------------------");
out.println("uid"+uid);
out.println("upass"+upass);
out.println("id"+id);
out.println("pass"+pass);
out.println("-------------------------------");  */
if (uid != null) {
	if ((uid.equals(id)) && (upass.equals(pass)) && (ulev.equals(lev))) {
		RequestDispatcher ds = request.getRequestDispatcher("main.jsp");
		ds.forward(request, response);
	}
} else {

}
%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="headbefore.jsp"/>
</head>
<body>

<form method="post" name="frm" action="login.jsp">

<table align="center" border="1">

<tr>
<td align="center" colspan="2">로그인</td></tr>

<tr><td>아이디</td>
<td><input type="text" name="id" value="${id}"></td>
</tr>

<tr><td>비밀번호</td>
<td><input type="password" name="pass" value="${pass}"></td>
</tr>

<tr><td>레벨</td>
<td><select id="lev"  name="lev" size="1">
<option value="B">일반회원</option>
<option value="A">관리자</option>
</select>
</td>
</tr>

<tr>
<td align="center" colspan="2">
<input type="submit" value="로그인"  onclick="return loginCheck()">
<input type="reset" value="취소">
</td></tr>

</table>
</form>
</body>
</html>