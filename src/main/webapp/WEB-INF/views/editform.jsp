<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";
body{
	text-align:center;
	background-color : #585858;
}
h1{
		font-family: cursive;
		color : white;
}
div{
	margin:0 auto; 
	margin-bottom: 60px;
}
#box1{
	width:200px;
	border-radius:16px;
	background-color:#D1A0BB;
}
#box2{
	padding:10px;
	font-weight:bold;
	color :  #585858;
	width:500px;
	border-radius:10px;
	background-color:#D1A0BB;

}
#input{
	border-radius:20px;
}
h2{
	
		color : #585858;	
}
</style>
</head>
<body>

<h1>Movie Database</h1>
<div id="box1">
<h2>후기 편집하기</h2>
</div>

<form:form commandName="boardVO" method="POST" action="../editok">
	<input type="hidden" name="seq" value="${boardVO.getSeq()}">
	<div id="box2">
	<table id="edit">
		<tr><td>제목</td><td><input type="text" value="${boardVO.getTitle()}" name="title"/></td></tr>
		<tr><td>감독</td><td><input type="text" name="director"/></td></tr>
		<tr><td>한줄 대사</td><td><textarea cols="50" rows="5" name="dialogue"></textarea></td></tr>
		<tr><td>추천</td><td><input type="text" value="${boardVO.getRecommend()}" name="recommend"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" value="${boardVO.getWriter()}" name="writer"/></td></tr>
	</table>
	</div>
	<button type="submit" value="Submit">수정하기</button>
	<button type="button" value="cancle" onclick="history.back()">취소하기</button>
</form:form>

</body>
</html>