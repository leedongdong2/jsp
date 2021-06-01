<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/freegesi_view.css" type='text/css' rel="stylesheet"/>
</head>
<body>
<div id="freegesi_view">
  <div id='page'>
        <div id='sub'>서브메뉴</div>
            <div id='write_main'>
                
                <label>제목</label>
                <input type='text' placeholder="제목을 입력해주세요" id='title'/>
                <br/>
                <textarea cols="100" rows="30"></textarea>
                <div id='btn_write'>
                    <input type='button' value="수정"/>
                    <input type='button' value="삭제"/>
                    
                 </div>
                 <div id="repl_zone">
                   <div id="repl">
                    <form>
                     <input type="text" value="id" id="repl_id">
                     <input type="text" value="날짜" id="repl_date">
                     <input type="text" value="내용" id="repl_doc">
                     <input type="button" value="수정" id="repl_update">
                     <input type="button" value="삭제" id="repl_delete">
                    </form>
                    </div>
                </div>
             </div>
            </div>
     </div>
<script src="./lib/jq.js"></script>
</body>
</html>