<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='./css/home.css'>
</head>
<body>
<div id="homebox">
  <div id="totpage">
    <div id="free">  
    자유게시판
    </div>
    <div id="gesi">
      <form id='frm_more' method='post' action=''>
        <div id='fr_ge'>
          <span class='subject'>제목</span><br/>
          <span class='subject'>시간</span>
        </div>
        <hr/>
        <div id='fr_ge'>
          <span class='subject'>제목</span><br/>
          <span class='subject'>시간</span>
        </div>
        <hr/>
        <div id='fr_ge'>
          <span class='subject'>제목</span><br/>
          <span class='subject'>시간</span>
        </div>
        <hr/>
        <div id='fr_ge'>
         <span class='subject'>제목</span><br/>
         <span class='subject'>시간</span>
        </div>
        <hr/>
        <div id='fr_ge'>
        <span class='subject'>제목</span><br/>
        <span class='subject'>시간</span>
        </div>
        <hr/>
       <input type='button' value='더보기' id='btn_more'>
      </form>
    </div>
    <div id="log"> 
      <jsp:include page="./logForm.jsp"></jsp:include> 
    </div>
  </div>
  <div id="totpage2">
    <div id="video">   
     영상
    </div>
    <div id="gong"> 
    공지사항
    </div>
  </div>
</div>
<script src="./lib/jq.js"></script>
</body>
</html>