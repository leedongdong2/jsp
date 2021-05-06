<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang='ko'>
<style>
#memebr_suggest{
   margin:30px auto;
   width:500px;
   position:relative;
   }
   
#member_suggest input[name=findStr]{
width:300px;
}

#member_suggest select{
width:300px;
position:absolute;
visibility:hidden;
opaciti : 0.8;
}



#member_suggest .bottom{
width:300px;
border:2px solid #aaa;
padding:10px;
box-sizing:border-box;
min-height:200px;
border-radius:10px;
box-shadow: 2px 2px 4px #bbb;
}
</style>
<meta name='viewport' content='width=device-widht,initial-scale=1.0'>
<meta charset="UTF-8">
<title>member_suggest</title>
</head>
<body>
<div id='member_suggest'>
	<h2>회원상세조회</h2>
	<div class='top'>
		<form name='frm' method='post'>
			<input type='search' name='findStr' size='40'>
			<input type='button' value ='검색' id='btnFind'>
			<br/>
			<select name='sel' size='10'> 
				
			</select>
		</form>
	</div>
	<div class='bottom'>RESULT</div>



</div>
<script src="member_suggest.js"></script>
</body>
</html>