<%@ page contentType="text/html; charset=utf-8" %>

<% 
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals("tsc03018") && pw.equals("1234")){
	response.sendRedirect("main.html");	
}else{
	response.sendRedirect("fail.html");
}
%>