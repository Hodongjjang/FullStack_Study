<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈</title>
</head>
<body>

<h3># Quiz</h3>

	<ul>
		<li>이 페이지에 접속할 때 광고창이 하나 뜨게 만들어주세요</li>
		<li>광고창에는 적당한 이미지 하나와 체크박스 버튼이 있어야함</li>
		<li>체크박스를 체크하고 창을 닫으면 30초동안 이 페이지에 접속하더라도 광고창이 뜨지 않아야 함</li>
	</ul>
	
	<c:url value="/quiz/promotion.jsp" var="pmURL"/>
	
	<!-- JSP 페이지에서는  EL로 쿠키값을 쉽게 꺼낼 수 있다 -->
	
	
	<script>
	//open할때 내가 연 새 창의 인스턴스를 반환한다
		const a= open('${pmURL}','_blank', 'width=1020,height=1500');
	</script>

</body>
</html>