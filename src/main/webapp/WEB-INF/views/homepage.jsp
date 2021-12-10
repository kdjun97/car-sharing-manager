<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>Room</h1>
<p>안녕하세요."${login.id}"님.</p><a href="./makeRoom">방 만들기</a><button type="button" onclick="location.href='editUser'">회원정보수정</button>
<table id="list" width="90%">
<tr>
	<th>방번호</th>
	<th>인원</th>
	<th>내용</th>
	<th>입장여부</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.title}</td>
		<td>${u.content}</td>
		<td><a href="./editform/${u.seq}">글수정</a></td>
<!--<td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>-->
	</tr>
</c:forEach>
</table>
<br/>
</body>
</html>