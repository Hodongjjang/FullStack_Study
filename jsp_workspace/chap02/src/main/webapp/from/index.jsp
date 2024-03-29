<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Form</title>
</head>
<body>

   <h3># input</h3>

   <ul>
      <li>input 태그를 사용해 사용자로부터 다양한 입력을 받을 수 있다</li>
      <li>사용자가 입력한 데이터는 자바스크립트에서 활용할 수도 있고 서버로 전송할수도 있다</li>
      <li>type 속성을 변경해 다양한 방식으로 입력 받을 수 있다</li>      
   </ul>
   
   <br/>
   <hr/>
   
   <table border=1;>
      <tr>
         <th>Type</th>
         <th>Shape</th>
         <th>Description</th>
      </tr>
      <tr>
         <td>test</td>
         <td><input type="text" placeholder="input your name here..."></td>
         <td>일반적인 텍스트 입력</td>
      </tr>
         <td>number</td>
         <td><input type="number" min="-10" max="10" step="2" value="8"></td>
         <td>숫자만 입력받을 수 있는 칸</td>
      </tr>
      <tr>
         <td>password</td>
         <td><input type="password"></td>
         <td>어깨 너머로 볼 수 없는 입력칸</td>
      </tr>
      <tr>
         <td>date</td>
         <td><input type="date"></td>
         <td>날짜 선택란(브라우저마다 생김새 다름)</td>
      </tr>
      <tr>
         <td>radio</td>
         <td>
         <!-- ※ name 속성은 input 태그의 카테고리를 의미한다 -->
         <!-- ※ id 속성과 label 태그의 for 속성을 이용해 라벨을 지정해 줄 수 있다 -->
            <input type="radio" name="Lunch" id="hotbar">
            <label for="hotbar">핫바</label><br>
            <input type="radio" name="Lunch" id="samkim">
            <label for="samkim">삼각김밥</label><br>
            <input type="radio" name="Lunch" id="cup-noodle">
            <label for="cup-noodle">컵라면</label><br>
            <input type="radio" name="Lunch" id="rice-burger">
            <label for="rice-burger">밥버거</label><br>
         </td>
         <td>같은 카테고리의 여러 옵션 중 택1하는 선택란</td>
      </tr>
      <tr>
         <td>checkbox</td>
         <td>
            <input type="checkbox" name="genre" id="comedy">
            <label for="comedy">코미디</label><br>
            <input type="checkbox" name="genre" id="thriller">
            <label for="thriller">스릴러</label><br>
            <input type="checkbox" name="genre" id="action">
            <label for="action">액션</label><br>
            <input type="checkbox" name="genre" id="noir">
            <label for="noir">느와르</label><br>
         </td>
         <td>여러 옵션 중 택1하는 선택란</td>
      </tr>
      <tr>
      	<td>textarea</td>
      	<td><textarea name="" id="" cols="30" rows="10"></textarea></td>
      	<td>긴 내용의 텍스트를 입력받는 용도</td>
      </tr>
      <tr>
      	<td>select</td>
      	<td><select name="" id="">
      		<option value="">South Korea</option>
      		<option value="">Republic of Korea</option>
      		<option value="">대한민국</option>
      	</select></td>
      	<td>선택란</td>
      </tr>
      <tr>
      	<td>color</td>
      	<td><input type="color" /></td>
      	<td>색상을 고를 수 있음</td>
      </tr>
   </table>

   <h3># form</h3>
   
   <ul>
   		<li>사용자가 form태그 내부의 input태그들에서 선택한 값을 서버로 전송할 수 있다</li>
   		<li>form태그 내부에서 submit이 발생하녕 폼 내부의 데이터와 함께 서버로 요청을 보낸다</li>
   		<li>input태그의 name속성이 데이터의 key역할을 하여 value와 함께 전송된다</li>
   		<li>실어보낸 데이터는 서버측의 request 객체에서 확인할 수 있다</li>
   		<li>action 속성 : 요청을 보낼 곳의 URL</li>
   		<li>method 속성 : 요청 방식을 선택(GET or POST)</li>
   </ul>
   
   <h3># GET 방식 요청</h3>
   
   <ul>
   		<li>GET방식 요청은 데이터가 ?key1=value2&key2=value2...형태로 URL의 맨 뒤에 붙어서 전송된다</li>
   		<li>비밀번호 같은 중요한 정보들은 GET방식으로 전달하면 안된다</li>
   </ul>
  	<form action="/chap02/formTest" method="get">
  	<table>
  		<tr>
  			<th>name</th>
  			<td> <input type="text" name="user_name"></td>
  		</tr>
  		<tr>
  			<th>age</th>
  			<td> <input type="number" name="user_age"></td>
  		</tr>
  		<tr>
  			<th>password</th>
  			<td> <input type=password name="user_password"></td>
  		</tr>
  		<tr>
  			<th>color</th>
  			<td> <input type=color name="my_color"></td>
  		</tr>
  		<tr>
  			<td><input type="submit" /></td> <!-- 데이터 전송하기 -->
  			<td><input type="reset" /></td> <!-- 입력했던 내용 모두 취소하기 -->
  		</tr>
  		</table>
  		</form>
  		
  		 <h3># POST 방식 요청</h3>
   
   <ul>
   		<li>POST방식은 데이터를 URL에 노출이 되지 않은 채로 데이터를 실어 보낼 수 있다 </li>
   		<li>데이터는 request의 body라는 곳에 실려 보내진다</li>
   </ul>
  	<form action="/chap02/formTest" method="post">
  	<table>
  		<tr>
  			<th>name</th>
  			<td> <input type="text" name="user_name"></td>
  		</tr>
  		<tr>
  			<th>age</th>
  			<td> <input type="number" name="user_age"></td>
  		</tr>
  		<tr>
  			<th>password</th>
  			<td> <input type=password name="user_password"></td>
  		</tr>
  		<tr>
  			<th>color</th>
  			<td> <input type=color name="my_color"></td>
  		</tr>
  		<tr>
  			<td><input type="submit" /></td> <!-- 데이터 전송하기 -->
  			<td><input type="reset" /></td> <!-- 입력했던 내용 모두 취소하기 -->
  		</tr>
  	</table>
  	</form>
  	
  	<h3># 링크로 GET 방식 요청 보내기</h3>
  	
  	<p>주소를 직접 수정하는것만으로도 GET방식 파라미터를 실어보낼 수 있다</p>
  	
  	<a href="/chap02/formTest?user_name=kim&user_age=20">링크</a>
   
   
   
</body>
</html>