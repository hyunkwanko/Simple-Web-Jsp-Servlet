<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.sql.*,javax.naming.*,javax.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 모든 학생 리스트 </h1>
<a href="logout.jsp"> 로그아웃</a>

<table border=1>
<tr> <th> 학번 <th> 이름 <th> 학년 <th> 학과</tr>

<% 
/* 	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection( 
			"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", 
			"db201312097", 
			"201312097");
 */	
 
 // JNDI 방식 사용 - import 확인
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/xe");
	Connection conn = ds.getConnection();
	
	PreparedStatement st = conn.prepareStatement("select * from student");;
	
	ResultSet rs = st.executeQuery();
	while (rs.next()){
		int sno = rs.getInt("SNO");
		String sname = rs.getString("SNAME");
		int year = rs.getInt(3); // YEAR 컬럼
		String dept = rs.getString("DEPT");
%>

<tr> <td> <%=sno %> <td> <a href="http://localhost:8080/JSP2/view.jsp?sno=<%=sno%>"><%=sname %></a> <td> <%=year %> <td> <%=dept %> </tr>
<%
		// System.out.format("%d, %s, %d, %s\n", sno, sname, year, dept);
	}
	
	rs.close();
	st.close();
	conn.close();
%>
</table>

</body>
</html>