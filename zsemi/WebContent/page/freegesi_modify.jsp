<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/freegesi_modify.css" type='text/css' rel="stylesheet"/>
</head>
<body>
 <div id='freegesi_modify'>
 <div id='page'>
        <div id='sub'>서브메뉴</div>
            <div id='write_main'>
                
                <label>제목</label>
                <input type='text' placeholder="제목을 입력해주세요" id='title'/>
                <br/>
                <textarea cols="100" rows="30"></textarea>
                <div id='btn_write'>
                    <input type='button' value="수정"/>
                    <input type='button' value="취소"/>
                 </div>
             </div>
        </div>
       </div>
       
       <script src="./lib/jq.js"></script>
</body>
</html>