<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./index.css" type='text/css' rel="stylesheet"/>
    <title>농구</title>
</head>
<body>
<header>
    <img src='./img/2.jpg' id='top_img'>
    <div id="menu_box">
    <div class="banner">배너</div>
    <div class="menu">메뉴1</div>
    <div class="menu">메뉴2</div>
    <div class="menu">메뉴3</div>
    <div class="menu">메뉴4</div>
    <div class="menu">메뉴5</div>
  </div>
</header>
<div id="pagebox">
    <jsp:include page="./page/home.jsp"></jsp:include> 
</div>
<footer>
    ㅇㅇ
</footer>
<script src="./lib/jq.js"></script>    
</body>
</html>