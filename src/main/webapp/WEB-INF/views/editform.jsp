<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Movie Database</h1>

<form:form commandName="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>영화 제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>닉네임</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>영화 한 줄</td><td><input type="text" name="dialogue"/></td></tr>
		<tr><td>후기</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
		<tr><td>추천</td><td><input type="text" name="recommend"/></td></tr>
	</table>
</form:form>
</body>
</html>