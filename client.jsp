<!--<%%>-브라우저상에서 표현은안된다 그냥 자바문법실행-->
<%@ page contentType="text/html; charset=utf-8" %> <!--선언부!!-->
<html>
<head>
	<title>클라이언트  및 서버정보</title>
	<style>
	span{
	color:#e2e2e2;
	font-size:20px;
	font-weight:500;
	}
	</style>
</head>

<body>
<span>접속자 IP =</span><%= request.getRemoteAddr() %><br/>
<span>서버이름</span><%= request.getServerName() %><br/>
<span>서버포트</span><%= request.getServerPort() %><br/>

<form action="getinfo.jsp" method="get"> <!--get-위에 브라우저창에 내가 넘긴값이 표시가됨 . post-내가 넘긴값이 주소창에 표시안됨, 보안이 더 우수함-->
	<input type="text" name="info"/>
	<input type="submit"/>

</form>

<span>요청정보</span><%= request.getCharacterEncoding() %><br/>
<span>요청정보 전송방식</span><%= request.getMethod() %><br/>
<span>요청 URI </span><%= request.getRequestURI() %><br/>

11부터 20까지의 합은 

<%
int sum=0;
for(int i= 11; i <=20; i++){
	sum+=i;
}
%>
<%= sum%>입니다.

</body>
</html>