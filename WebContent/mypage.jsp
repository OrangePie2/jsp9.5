<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");

String uid = request.getParameter("id");
String upass = request.getParameter("pass");
String uname = request.getParameter("name");
String ulev = request.getParameter("lev");
String ugender = request.getParameter("gender");
String unumber = request.getParameter("number");


Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String id = null;
String pass = null;
String lev = null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "shinssd";
String password = "0000";
String sql = "INSERT into employees values(?,?,?,?,default,?,?)";

try {
	Class.forName("oracle.jdbc.OracleDriver");
	conn = DriverManager.getConnection(url, user, password);
	pstmt = conn.prepareStatement(sql);
	
		pstmt.setString(1, uid);
		pstmt.setString(2, upass);
		pstmt.setString(3, uname);
		pstmt.setString(4, ulev);
		pstmt.setString(5, ugender);
		pstmt.setString(6, unumber);
		pstmt.executeUpdate();
	
	
} catch (Exception e) {
	e.printStackTrace();
}

/* System.out.println("-------------------------------");
System.out.println("uid"+uid);
System.out.println("upass"+upass);
System.out.println("uname"+uname);
System.out.println("ulev"+ulev);
System.out.println("now"+now);
System.out.println("ugender"+ugender);
System.out.println("unumber"+unumber);
System.out.println("sql"+sql);
System.out.println("-------------------------------");  */


if (uid != null) {
	if ((uid!= null) && (upass!= null) && (uname!= null) && (unumber!= null)) {
		RequestDispatcher ds = request.getRequestDispatcher("mypageselect.jsp");
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
<jsp:include page="head.jsp"/>
</head>
<body>
<form method="post" name="frm" action="mypage.jsp">

<table align="center" border="1">
<tr><td align="center" colspan="2" >마이페이지</td></tr>

<tr>
<td>아이디</td>
<td><input type="text" name="id" value="${id}"></td>
</tr>

<tr>
<td>비밀번호</td>
<td><input type="password" name="pass" value="${pass}"></td>
</tr>

<tr>
<td>이름</td>
<td><input type="text" name="name" value="${name}"></td>
</tr>

<tr>
<td>권한</td>
<td><select id="lev" name="lev" size="1">
<option value="A">관리자</option>
<option value="B">일반회원</option>
</select></td>
</tr>

<tr>
<td>성별</td>
<td><select id="gender" name="gender" size="1">
<option value="1">남자</option>
<option value="2">여자</option>
</select>
</td>
</tr>

<tr>
<td>전화번호</td>
<td><input type="text" name="number" value="${number}"></td>
</tr>

<tr>
<td align="center" colspan="2">
<input type="submit" value="수정" onclick="return rewriteCheck()">
<input type="reset" value="취소">
</td></tr>

</table>
</form>
</body>
</html>