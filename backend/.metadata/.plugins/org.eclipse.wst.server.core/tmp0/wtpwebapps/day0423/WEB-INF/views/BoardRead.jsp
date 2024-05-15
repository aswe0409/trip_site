<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>read</title>
</head>
<body>
	<%@ include file="Header.jsp"%>

	<table border="1">
		<tr>
			<td>bno:</td>
			<td>${board.bno}</td>
		</tr>
		<tr>
			<td>제목:</td>
			<td>${board.title}</td>
		</tr>
		<tr>
			<td>작성자:</td>
			<td>${board.writer}</td>
		</tr>
		<tr>
			<td>작성일시:</td>
			<td>${board.writeDate}</td>
		</tr>
		<tr>
			<td>조회수:</td>
			<td>${board.readCount}"</td>
		</tr>
		<tr>
			<td>내용:</td>
			<td>${board.content}</td>
		</tr>
	</table>

	<div>
		<c:if test="${not empty board.files}">
			<c:forEach items="${board.files}" var="f">
				<a href="${root}/board/download?fno=${f.fno}">${f.originalName}</a>
			</c:forEach>
		</c:if>
	</div>



	<div id="areaCmt"></div>
	댓글 작성하기 :
	<input type="text" id="ccontent">
	<button id="btnCmt">댓글 전송</button>

	<script type="text/javascript">
	
		document.getElementById('btnCmt').onclick = function() {
			fetch('${root}/comment/write', {
				method:"POST",
				headers:{'content-type':'application/json'},
				body:JSON.stringify({
					ccontent:document.getElementById('ccontent').value,
					bno:'${board.bno}'
				})
			})
			.then(resp=>resp.text())
			.then(data=>{
				alert(data);
				getComments();
			})
		}

	
	
		function getComments() {
			fetch('${root}/comment/list/${board.bno}')
			.then(resp=>resp.json())
			.then(data=>{
// 				document.getElementById('areaCmt').innerText = data;
				let cmts ='';
				for(let i=0; i<data.length; i++){
					cmts += '작성자:' + data[i].cwriter;
					cmts +=  ' 댓글내용:' + data[i].ccontent;
					cmts += '<br>';
				}
				document.getElementById('areaCmt').innerHTML = cmts;
			})
		}
		getComments();
	</script>






	<a
		href="${root}/board/update?bno=${board.bno}&title=${board.title}&writer=${board.writer}&writeDate=${board.writeDate}&readCount=${board.readCount}">수정</a>
	<a href="${root}/board/delete?bno=${board.bno}">삭제</a>
</body>
</html>