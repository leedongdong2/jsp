<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="signModifyBox">
    <h2>회원정보 수정</h2>
	<form name='frm_member' id='frm_member' method='post'>
		<label>아이디</label>
		<input type='text' name='mid' value='${vo.mid }' />
		<input type='button' id='idCheck' value='중복확인' />
		<br/>
		<label>성명</label>
		<input type='text' name='irum' value='${vo.irum }' />
		<br/>
		<label>비밀번호</label>
		<input type='hidden' name='password' value='${vo.password }' />
		<label>연락처</label>
		<input type='text' name='phone' value='${vo.phone }' />
		<br/>
		
		
		<label>주소</label>
		<input type='text' name='post' value='${vo.post }' readOnly>
		<input type='button' id='btnZipCode' value='우편번호'/>
		<br/>
		<label></label>
		<input type='text' name='address' value='${vo.address }' size='50' readOnly/>
		<br/>
		<label>상세주소</label>
		<input type='text' name='address2' value='${vo.address2 }' size='50' />
		<br/>
		<label>이메일</label>
		<input type='text' name='account' value='${vo.account }'/>
		<output>@</output>
		
		<select name='host'>
			<option value='naver'>naver.com</option>
			<option value='google'>google.com</option>
			<option value='naver'>hmail.net</option>
			<option value='nate'>nate.com</option>
			<option value='daum'>daum.net</option>
		</select>
		
	
		<br/>
		<label>선호 포지션</label>
		<div>
		<img src='../imgs/F.JPG' width='150' height='180' 
					class='photo' id='photo'/>
					&nbsp;
					<img src='../imgs/C.jpg' width='150' height='180' 
					class='photo' id='photo'/>
					&nbsp;
					<img src='../imgs/G.jpg' width='150' height='180' 
					class='photo' id='photo'/>
					
		</div>
		
		
		<input type='text' name='posi'  value='${vo.posi}'/>
		
		<div id='btn_zone'>
			<input type='button' value='수정' id='btnUpdate'>
			<input type='button' value='탈퇴' id='btnDelete'>
		</div>
		
	</form>
</div>
<script src="./lib/jq.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./js/semimember.js"></script>
</body>
</html>