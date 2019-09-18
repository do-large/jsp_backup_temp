<!--<%%>-브라우저상에서 표현은안된다 그냥 자바문법실행-->
<%@ page contentType="text/html; charset=utf-8" %> <!--선언부!!-->
<html>
<head>
	<title>로그인</title>
</head>

<body>
<table width="100%">
<form action="login.jsp" method="post">
	<tr>
		<td align="center"><img src="logo.png" alt="로고 이미지" /></td>
	</tr>

	<tr>
		<td align="center"><input type="text" placeholder="아이디" name="myid" style="width:100%; height: 50px;"></td>
	</tr>

	<tr>
		<td align="center"><input type="password" placeholder="비밀번호"  name="mypw" style="width:100%; height: 50px;"></td>
	</tr>

	<tr>
		<td align="center"><input type="submit" value="확인" style="width:100%; height: 60px;"></td>
	</tr>
</form>

</table>
</body>
</html>