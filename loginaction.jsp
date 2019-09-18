<%@ page contentType="text/html; charset=utf-8" %>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%
	String memberID = request.getParameter("id");
	String memberPW = request.getParameter("pw");
%>

<html>
<head>
	<title>로그인페이지</title>
</head>
<body>
		
</body>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{
	//String jdbcDriver = "jdbc:mysql://dburl:port/dbname?"+"userUnicode=true&characterEncoding=utf-8";
	//3306은 db포트
	String jdbcDriver = "jdbc:mysql://01043573052.iptime.org:3306/stu?"+"userUnicode=true&characterEncoding=utf-8";
	//db아이디랑 비번써야됨
	String dbUser="new_stu";
	String dbPass="00xx";
	String query="select * from (user_information_table_do) where UserID = '"+memberID+"' and UserPW ='"+memberPW+"'";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);

	if(rs.next()){
%>
	<h1>로그인 성공</h1>
<%
	} else {	
%>
	<h1>로그인 실패</h1>
<%
	}
}catch(Exception e){

}finally{
	if(rs != null) try{rs.close();}catch(SQLException ex){}
	if(stmt != null) try{stmt.close();}catch(SQLException ex){}
	if(conn != null) try{conn.close();}catch(SQLException ex){}
}
%>
</body>
</html>