<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${empty sessionScope.mid}">
	<form name='logFrm' id='logFrm' method='post' action=''>
	        <label>아이디</label>
	        <input type='text' name='mid' size='10' value=''>
	        <br/>
	        <label>암호</label>
	        <input type='password' name='password' size='10' value=''>
	        <br/>
	        <input type='button' id="loginBtn" value='로그인'/>
	        <input type='button' id="signUpBtn" value='회원가입' />
	        <input type="text" id="logcheck" value='${logcheck}'/>
	 </form>
</c:when>
<c:when test="${ not empty sessionScope.mid }">
 <form name="logFrm" id="logFrm">
     <input type=text name="mid" value="hong"/>
    <input type="button" value="내정보" id="mypage"/>
</form>
</c:when>
</c:choose>

<script src="./lib/jq.js"></script>
<script src="./js/logForm.js"></script>
</body>

</html>