<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도민호우~ 핏짜</title>
<style>
*{
	box-sizing: border-box;
}
.pizza{
 	display: flex;
    justify-content: space-around;
}
#pizza{
    padding: 10px ;
    margin: 10px;
}
</style>
</head>
<body>

	<h1># Menu</h1>
	
	<table border=1;>
	<tr>
	  <td>메뉴</td>
      <td id="pizza"><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_a0G7WsxF.jpg" width="400px" height="auto"/></td>
      <td id="pizza"><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_B8cGMt1w.jpg" width="400px" height="auto"/></td>
      <td id="pizza"><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_Y3W7J63w.jpg" width="400px" height="auto"/></td>
      <td id="pizza"><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231215_965Hu68d.jpg" width="400px" height="auto"/></td>
      </tr>
      <tr>
         <td>메뉴이름</td>
         <td>스노우 브리스킷 바비Q</td>
         <td>스노우 블랙타이거 슈림프</td>
         <td>스노우 와일드 와일드 웨스트 스테이크</td>
         <td>브리스킷 바비Q</td>
      </tr>
         <td>수량</td>
         <td><input type="number" min="0" max="10" step="1" value="0"></td>
         <td><input type="number" min="0" max="10" step="1" value="0"></td>
         <td><input type="number" min="0" max="10" step="1" value="0"></td>
         <td><input type="number" min="0" max="10" step="1" value="0"></td>
      </tr>
      <tr>
         <td>사이즈</td>
         <td>
            <input type="checkbox" name="genre" id="M1">
            <label for="comedy">M</label>
            <input type="checkbox" name="genre" id="L1">
            <label for="thriller">L</label><br>
         </td>
          <td>
            <input type="checkbox" name="genre" id="M2">
            <label for="comedy">M</label>
            <input type="checkbox" name="genre" id="L2">
            <label for="thriller">L</label><br>
       </td>
          <td>
            <input type="checkbox" name="genre" id="M3">
            <label for="comedy">M</label>
            <input type="checkbox" name="genre" id="L3">
            <label for="thriller">L</label><br>
       </td>
          <td>
            <input type="checkbox" name="genre" id="M4">
            <label for="comedy">M</label>
            <input type="checkbox" name="genre" id="L5">
            <label for="thriller">L</label><br>
       </td>

      </tr>
      </table>
</body>
</html>