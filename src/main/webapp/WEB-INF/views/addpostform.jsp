<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/css2.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<style>
@charset "UTF-8";

body{
	text-align:center;
 	background-color: #F3EBF6;
 	
}

#total{
	width:80%;
	height : 600px;
	background-color: #FFFFFF;
	margin: 7em auto;
    border-radius: 1.5em;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}

h1{
		font-family: 'Ubuntu', sans-serif;
		color : white;
}
div{
	margin:0 auto; 
	margin-bottom: 60px;

}


#box1{
	width:300px;
	border-radius:16px;
	background: linear-gradient(to right, #9C27B0, #E040FB);
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}

#box2{
	width:60%;
	height : 250px;
	margin-top:20px;
	padding : 20px;
	border-radius:10px;
	border : 1px solid #D1A0BB;
	background-color: #D1A0BB;

	
}

#input{
	border-radius:20px;
}

h2{
	font-family: 'Ubuntu', sans-serif;
	font-size:30px;
		color : #fff;	
}
td{
	font-family: 'Ubuntu', sans-serif;
	font-size: large;
	font-weight: bold;
}

</style>
<title>Add Page</title>

</head>
<body>
<div id="total">
<h1>Movie Database</h1>
<div id="box1">
<h2>후기 등록하기</h2>
</div>

<form action="./addok" method="post">
	<div id="box2">
	<table id="edit" style="margin-left: auto; margin-right: auto;">
		<tr><td style="margin-top:40px;">제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">감독</td><td><input type="text" name="director"/></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">한줄 대사</td><td><textarea cols="50" rows="5" name="dialogue"></textarea></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">추천</td>
		<td><input type="text" name="recommend"></td>
		</tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">글쓴이</td><td><input type="text" name="writer"/></td></tr>
	</table>
	</div>
	<button type="button" onclick="location.href='./list'" style="font-family: 'Ubuntu', sans-serif;">목록보기</button>
	<button type="submit" style="font-family: 'Ubuntu', sans-serif;">등록하기</button>
</form>
</div>
</body>
</html>