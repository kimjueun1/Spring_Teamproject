<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/css2.css" rel="stylesheet" type="text/css">
<title>기록 추가하기</title>
</head>
<body>
<form method="post">
	<table id="edit">
		<tr><td>영화제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>닉네임</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>영화 한 줄</td><td><input type="text" name="dialogue"/></td></tr>
		<tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
		<tr><td>추천</td><td><input type="text" name="recommend"/></td></tr>
	</table>
	<button type="button" onclick="location.href='./list'">목록보기</button>
	<button type="submit">등록하기</button>
</form>
</body>
</html>