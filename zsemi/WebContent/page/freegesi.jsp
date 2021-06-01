<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/freegesi.css" type='text/css' rel="stylesheet"/>
</head>
<body>
<div id="freegesibox">
    <div id="page">
    <div id='sub'>

    </div>
        <div id='main'>
            <h2>자유게시판</h2>
            <div id='asd'>
                <form name='frm' id='frm'> 
                    <input type='text' value='' id='findStr'>
                    <input type='button' value='검색' id='btn_find'>
                </form>
            </div>
            <div id='mgesi'>
                <div id='fr_gesi'>
                    <span class='no'>번호</span>
                    <span class='date'>날짜</span>
                    <span class='subject'>제목</span>
                    <span class='mid'>아이디</span>
                    <span class='hit'>조회수</span>
                </div>
                <hr/>
                <div id='fr_gesi'>
                    <span class='no'>1</span>
                    <span class='date'>날짜1</span>
                    <span class='subject'>제목1</span>
                    <span class='mid'>아이디1</span>
                    <span class='hit'>조회수1</span>
                </div>
             </div>
                <hr/>
            <div id='btn_zone'>
                <input type='button' value='＜' class='btn_find'>

                <input type='button' value='1' class='btn_find'>
                <input type='button' value='2' class='btn_find'>
                <input type='button' value='3' class='btn_find'>
                <input type='button' value='4' class='btn_find'>
                <input type='button' value='5' class='btn_find'>

                <input type='button' value='＞' class='btn_find'>

            </div>
                 <input type='button' value='작성' class='btn_create'>
    </div>
    </div>
</div>
<script src="./js/freegesi.js"></script>
<script src="./lib/jq.js"></script>
</body>
</html>