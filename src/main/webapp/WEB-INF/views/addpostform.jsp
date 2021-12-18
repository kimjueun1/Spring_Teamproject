<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	border-radius:50px;
	border : 1px solid #D1A0BB;
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

<form action="./addok" method="post">
	<div id="box2">
	<table id="edit">
		<tr><td>제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>감독</td><td><input type="text" name="director"/></td></tr>
		<tr><td>한줄 대사</td><td><textarea cols="50" rows="5" name="dialogue"></textarea></td></tr>
		<tr><td>추천</td><td><input type="text" name="recommend"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
	</table>
	</div>
	<button type="button" onclick="location.href='./list'">목록보기</button>
	<button type="submit">등록하기</button>
</form>
</body>
</html>