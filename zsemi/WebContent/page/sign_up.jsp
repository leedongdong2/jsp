<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="signUpbox">
    <form name='frm_member' id='frm_member' method='post'>
	 	 <label>아이디</label>
	   	 <input type='text' name='mid' id='mid' value='hong' />
		 <input type='button' id="checkBtn" value='중복확인' />
		<br/>
		<label>성명</label>
		<input type='text' name='irum' value='변승현' />
		<br/>
		<label>비밀번호</label>
		<input type='password' name='password' />
		<output>비밀번호 확인</output>
		<input type='password' id="passwordCheck" />
		<br/>
		<label>연락처</label>
		<input type='text' name='phone' value='010-1234-5678' />
		<br/>
		<label>주소</label>
		<input type='text' name='post' readOnly>
		<input type='button' id='btnZipCode' value='우편번호'/>
		<br/>
		<label></label>
		<input type='text' name='address' size='50' readOnly/>
		<br/>
		<label>상세주소</label>
		<input type='text' name='address2' size='50' />
		<br/>
		<label>이메일</label>
		<input type='text' name='account' />
		<output>@</output>
		<select name='host'>
			<option value='IT여행자'>naver.com</option>
			<option value='acorn'>google.com</option>
			<option value='네이버'>hmail.net</option>
			<option value='네이트'>nate.com</option>
			<option value='다음'>daum.net</option>
		</select>
		<br/>
		<label>선호 포지션</label>
		<div>
		<img src='../imgs/F.JPG' width='150' height='180' 
					class='photo' id='imgForward'/>
					&nbsp;
					<img src='../imgs/C.jpg' width='150' height='180' 
					class='photo' id='imgCenter'/>
					&nbsp;
					<img src='../imgs/G.jpg' width='150' height='180' 
					class='photo' id='imgGuard'/>		
		</div>
		<input type='text' name='posi'  value='gard'/>
		<div id='btn_zone'>
			<input type='button' value='가입' id='btnInsert'>
			<input type='button' value='취소' id='btnSelect'>
		</div>
		</form>
   
	</div>
<script src="./lib/jq.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./js/semimember.js"></script>
</body>
</html>