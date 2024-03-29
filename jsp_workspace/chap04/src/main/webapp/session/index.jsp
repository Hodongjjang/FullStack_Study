<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션</title>
<%@ page import = "java.util.Date" %> <!-- jsp에서 임포트 하는 방법 -->
</head>
<body>
   
   <h3>#Http는 연결이 유지되지 않는다 (비연결성)</h3>

   <ul>
      <li>HTTP는 응답을 하고 나면 클라이언트와의 연결을 끊어버린다</li>
      <li>별도의 조치가 없다면 해당 클라이언트가 이전에 접속한 클라이언트와 동일한
         클라이언트인지 구분할 수 없다</li>
      
   </ul>
   
   <h3># Http Session 발급 순서</h3>
   
   <ol>
      <li>클라이언트가 최초로 웹서버에 접속하면 서버는 해당 클라이언트에게 세션 ID를 발급한다</li>
      <li>발급받은 세션ID는 클라이언트측의 웹 브라우저에 저장된다
         (다른 웹 브라우저로 접속하면 새로운 세션 ID를 발급받는다)
      </li>
      
      <li>이후 해당 클라이언트는 해당 서버로 요청을 보낼때마다 세션ID를 
         요청에 함께 실어 전달하게 된다</li>
      <li>서버는 실려온 세션ID로 클라이언트를 구분할 수 있다</li>
      <li>세션ID는 개인 사물함 열쇠같은 역할을 하기도 한다
         세션 어트리뷰트에 접근할 때 해당 세션 ID로 세션 어트리뷰트에 접근하여 사용한다.</li>
      <li>세션이 유지되는 동안은 세션객체가 유지된다 </li>       
      <li>세션 객체에 너무 많은 양의 데이터를 추가하는 것은
         서버의 성능을 저하시킬 수 있으므로 주의해야 한다 </li>
      <li>세션 ID는 기본적으로 사용자의 웹 브라우저가 종료될 때 함께 사라지도록 설정되어 있다 </li>
      <li>세션 어트리뷰트는 일정시간 동안 요청을 받지않으면 사라지도록 설정되어 있다 </li>
   </ol>
   
   <!--  sessionAttribute ={
   
      59DA602B856E9B698550BF1FE9084DA :{
         'food' : 'orange',
         'age' : 20
         
      },
      EA123354289418947182937189231211:{
         'food' : 'orange',
      }
   }  --> 
   
   
   <%
   //미활동 시 세션이 만료되는 시간을 설정 (단위 = 초)
   int interval = 5;
   session.setMaxInactiveInterval(interval);
   %>
   
   <h3># 현재 세션 정보</h3>
   
   <ul>
      <li>SESSION ID: <%=session.getId() %></li>
      <li>세션이 생성된 시간: <%= new Date(session.getCreationTime()) %></li> <!--  longtype = 유닉스타임이 나옴 -->
      <li>가장 최근에 접속했던 시간 <%=new Date(session.getLastAccessedTime()) %></li>
      <li>미활동 시 세션을 만료시키는 시간: <%=session.getMaxInactiveInterval() %>초</li>
   </ul>
   
   <button onclick="location.href='/chap04/session/closeSession.jsp';">세션 만료시키기</button>

</body>
</html>