<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form:form commandName="boardVO" method="POST" action="../editok">
	<input type="hidden" name="seq" value="${boardVO.getSeq()}">
	<table id="edit">
		<tr><td>제목</td><td><input type="text" value="${boardVO.getTitle()}" name="title"/></td></tr>
		<tr><td>감독</td><td><input type="text" name="director"/></td></tr>
		<tr><td>한줄 대사</td><td><textarea cols="50" rows="5" name="dialogue"></textarea></td></tr>
		<tr><td>추천</td><td><input type="text" value="${boardVO.getRecommend()}" name="recommend"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" value="${boardVO.getWriter()}" name="writer"/></td></tr>
	</table>
	<button type="submit" value="Submit">수정하기</button>
	<button type="button" value="cancle" onclick="history.back()">취소하기</button>
</form:form>

</body>
</html>