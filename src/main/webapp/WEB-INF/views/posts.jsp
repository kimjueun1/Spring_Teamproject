<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/css1.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<div>
<img src="https://jeshoots.com/wp-content/uploads/2018/03/IMG_6926-1024x683.jpg"
width ="50%"; height="250";>
</div>
<h1>Movie Database</h1>

<table id="list" >
<tr>
	<th>No</th>
	<th>영화 제목</th>
	<th>닉네임</th>
	<th>영화 한줄(대사)</th>
	<th>후기</th>
	<th>추천</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getActor()}</td>
		<td>${u.getDialogue()}</td>
		<td>${u.getContent()}</td>
		<td>${u.isRecommend()}</td>
		<td><a href="editform.jsp?id=${u.getSeq()}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">삭제</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="./add">Add New Post</a>
</body>
</html>