<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//	서버측에서 쿠키 추가
	Cookie cookie = new Cookie("nmPm", "1");
	
	cookie.setMaxAge(30);
	cookie.setHttpOnly(true);
	// HttpOnly : 자바스크립트 측에서 사용할 수 없게 한다(보안상의 이유)

	response.addCookie(cookie);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>blank</title>
</head>
<body>

	<script>
		window.close();
	</script>

</body>
</html>