<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border=1>
<tr> <th> 학번 <th> 이름 <th> 학년 <th> 학과</tr>

<% 
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection( 
			"jdbc:oracle:thin:@db.pknu.ac.kr:1521:xe", 
			"db201312097", 
			"201312097");
	String cno = request.getParameter("cno");
	
	PreparedStatement st;
	
	if (cno == null || cno.trim().equals("")) { // 인자가 없거나 공백인 경우 
		st = conn.prepareStatement("select * from student");
	
	} else {// 정상적인 값이 전달된 경우 
		st = conn.prepareStatement("select * from student where sno=" + cno);
	}
	
	ResultSet rs = st.executeQuery();
	while (rs.next()){
		int sno = rs.getInt("SNO");
		String sname = rs.getString("SNAME");
		int year = rs.getInt(3); // YEAR 컬럼
		String dept = rs.getString("DEPT");
%>

<tr> <td> <%=sno %> <td> <%=sname %> <td> <%=year %> <td> <%=dept %> </tr>
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