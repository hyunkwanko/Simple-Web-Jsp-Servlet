<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h1> 로그인 하세요. </h1>
		<FORM ACTION="j_security_check" METHOD="POST">
			<INPUT TYPE="TEXT" NAME="j_username" />
			<INPUT TYPE="PASSWORD" NAME="j_password" />
			<INPUT TYPE="SUBMIT" />
		</FORM>
	</body>
</html>