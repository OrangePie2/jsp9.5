<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="head.jsp"/>
</head>
<body>
<table align="center" border="1">
<tr><td align="center" colspan="2" ><h3>사원 정보</h3></td></tr>
<tr><td align="center" colspan="2" >회원정보가 수정되었습니다</td></tr>
<tr>
<td>아이디</td>
<td>아이디</td>
</tr>

<tr>
<td>비밀번호</td>
<td>비밀번호</td>
</tr>

<tr>
<td>이름</td>
<td>이름</td>
</tr>

<tr>
<td>권한</td>
<td>권한</td>
</tr>

<tr>
<td>성별</td>
<td>성별
</td>
</tr>

<tr>
<td>전화번호</td>
<td>전화번호</td>
</tr>

<tr>
<td align="center" colspan="2">
<input type="submit" value="메인페이지로 이동" onclick="location.href='main.jsp'">
</td></tr>

</table>
</body>
</html>