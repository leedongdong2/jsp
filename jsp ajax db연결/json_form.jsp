<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#json_form{
width:800px
}
 .h{
 border:1px solid #000000;
 width:500px;
 background-color:#ff3fee;
 }
 
 span{
 display:inline-block;
 width:120px;
 }
 .result {
 border:1px solid #000000;
 min-height:200px;
 width:500px;
 }
</style>
<meta charset="UTF-8">
<title>json_form</title>
</head>
<body>
<div id='json_form'>
	<h2>주소 검색</h2>
	<div class='input_zone'>
<!-- 폼태그는 엔터키가되면 결과를 서버로 전달하려함 -- 서브밋을 못하게 막음 새로고침 막기 -->
		<form name='frm' method='post' onsubmit='return false'>
			<label>검색어</label>
			<input type='text' size='40' name='findStr'/>
			<input type='button' value='검색' id='btnFind'/>
		</form>
	</div>
	<div class="h">
		<span>성명</span>
		<span>이메일</span>
		<span>연락처</span>
		<span>급여</span>
	</div>
	<div class='result'>

	</div>
</div>


<script src='json_form.js'></script>
</body>
</html>