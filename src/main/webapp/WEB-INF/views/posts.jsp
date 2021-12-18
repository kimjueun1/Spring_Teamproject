<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<link href="../css/css1.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
@charset "UTF-8";

body{
 background-color: #F3EBF6;
}

#sign{
	 padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 40px;
}


#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
   border : 2px solid #AF3B7D;
  border-radius:16px;
}
#list td, #list th {
  border : 2px solid #AF3B7D;
  padding: 8px;
  text-align:center;
  box-shadow : inset 0 0 8px #7D7178;
  font-weight: bold;
}

#list tr:hover {background-color: #ddd;}
#list th {
 border : 2px solid #AF3B7D;
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color : #D1A0BB;
  color: white;
}
h1{
font-family: 'Ubuntu', sans-serif;
text-align : center;
color : white;

}

th{
	font-family: 'Ubuntu', sans-serif;
}
div{
text-align : center;

}


</style>
<title>free board</title>

<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='./deleteok/'+id;
	}
</script>
</head>
<body>
<div id="total">
<h1 id="sign">Movie Database</h1>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>영화 제목</th>
	<th>영화 감독</th>
	<th>영화 한줄(대사)</th>
	<th>추천</th>
	<th>작성자</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getDirector()}</td>
		<td>${u.getDialogue()}</td>
		<td>${u.getRecommend()}</td>
		<td>${u.getWriter()}</td>
		<td><a href="./edit/${u.getSeq()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="./add">Add New Post</a>
</div>
</body>
</html>