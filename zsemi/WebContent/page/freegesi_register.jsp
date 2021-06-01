<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' type='text/css' href='./css/freegesi_register.css'>
<title>Insert title here</title>
</head>
<body>
<div id="freegesi_register">
  <div id="page">
     <div id='sub'>서브메뉴</div>
         <div id='write_main'>
             
            <label>제목</label>
            <input type='text' placeholder="제목을 입력해주세요" id='title'/>
            <br/>
            <textarea cols="100" rows="30"></textarea>
            <div id='btn_write'>
                <input type='button' value="확인"/>
                <input type='button' value="취소"/>
             </div>
         </div>
     </div>
    </div>
    <script src="./lib/jq.js"></script>
</body>
</html>