<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board.board_id}번 글의 상세내용</title>
</head>
<body>
	<h3>${board.board_id}</h3>
	
	<table border="3">
		<tr>
			<th>글 번호</th>
			<td>${board.board_id}</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${board.view_count}</td>
		</tr>
		<tr>
			<th>글 제목</th>
			<td>${board.board_title}</td>
		</tr>
		<tr>
			<th>글쓴이</th>
			<td>${board.board_writer}</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password"></td>
		</tr>
		<tr>
			<th>글 내용</th>
			<td><textarea>${board.board_content}</textarea></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${board.write_date}</td>
		</tr>
		<tr>
			<th>최근수정일</th>
			<td>몰라</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file"></td>
		</tr>
	</table>
	
	<hr>
   
	<div id="replyWriterDiv">
   		<textarea name="reply_content" id="replyContent" rows="5" cols="80" form="replyForm"></textarea> <br />
   		댓글쓴이<input id="replyWriter" type="text" name="reply_writer" form="replyForm"/>
   		비밀번호<input id="replyPassword" type="password"  name="reply_password" form="replyForm"/>
   		<button id="replyWriteBtn" form="replyForm">댓글 쓰기</button>
   </div>
   
   <form id="replyForm" action="./reply/add" method="POST" >
   		<input type="hidden" name="board_id" value="${detail.board_id}"/>
   </form>

</body>
</html>