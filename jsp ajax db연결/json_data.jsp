<%@page import="kr.jobtc.json.DataVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%// file name : json_data.jsp%>
<%// 구조화된 제이슨타입의 형태를 가져올떄는 제이슨문법 이외의 것들이 있으면 안된다%>
[

 {"mid":"hong", "mname":"홍길동","phone" : "010-1111-1111"},
 {"mid":"kim", "mname":"김길동","phone" : "010-1111-2222"},
 {"mid":"park", "mname":"박길동","phone" : "010-1111-3333"},
 {"mid":"choi", "mname":"최길동","phone" : "010-1111-4444"},
 {"mid":"lee", "mname":"이길동","phone" : "010-1111-5555"},
<%
//자바의 클래스를 jsp에서 가지고와 쓰기
 DataVo vo = new DataVo();
 vo.setMid("nam");
 vo.setMname("남씨");
 vo.setPhone("010-2222-2222");
 //gson에선 자동으로 해주는 메소드도 잇다
 String json 
 = String.format("{'mid':'%s','mname':'%s','phone':'%s'}",
		 vo.getMid(),vo.getMname(),vo.getPhone());
 json = json.replaceAll("'","\"");
 out.print(json);
%>

]