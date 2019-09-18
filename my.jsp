<!--<%%>-브라우저상에서 표현은안된다 그냥 자바문법실행-->
<%@ page contentType="text/html; charset=utf-8" %> <!--선언부!!-->
<%
String id = request.getParameter("myid");
String pw = request.getParameter("mypw");
if(id.equals("zzz1234") && pw.equals("7777")){
	//파라미터로 받아온 값이 내가 설정한 값과 같으면 아래부분을 실행
	response.sendRedirect("./main.html");

}else{
	//파라미터로 받아온 값이 내가 설정한 값과 다르면 아래부분을 실행
	%>
	<html>
		<head><title>로그인 실패ㅜㅠ</title></head>
		<body>로그인실패함</body>
		</html>
<%
}
%>




<html>
<head>
	<title>로그인</title>
</head>
<body>

</body>
</html>