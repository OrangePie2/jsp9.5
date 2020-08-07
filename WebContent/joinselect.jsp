<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String uid = request.getParameter("id");
String upass = request.getParameter("pass");
String uname = request.getParameter("name");
String ulev = request.getParameter("lev");
String ugender = request.getParameter("gender");
String unumber = request.getParameter("number");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="head.jsp" />
</head>
<body>

	<table align="center" border="1">
		<tr>
			<td align="center" colspan="2"><h3>사원정보</h3></td>
		</tr>
		<tr>
			<td align="center">회원 등록에 성공했습니다</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=uid%></td>
		</tr>

		<tr>
			<td>비밀번호</td>
			<td><%=upass%></td>
		</tr>

		<tr>
			<td>이름</td>
			<td><%=uname%></td>
		</tr>

		<tr>
			<td>권한</td>
			<td><%=ulev%></td>
		</tr>

		<tr>
			<td>성별</td>
			<td><%=ugender%></td>
		</tr>

		<tr>
			<td>전화번호</td>
			<td><%=unumber%></td>
		</tr>

		<tr>
			<td align="center" colspan="2"><input type="submit"
				value="메인페이지로 이동" onclick="location.href='main.jsp'"></td>
		</tr>

	</table>
</body>
</html>