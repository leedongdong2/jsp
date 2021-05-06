<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json_data_type</title>
</head>
<body>
<h2 id='h'>json_data_type</h2>
<script>
//1)맵구조 (k:v를 한쌍으로 나열하는 형태)
 var fruits = {"apple":"사과","banana":"바나나","melone":"melon",
		"fun":function(){
			var h2 = document.getElementById("h");
			h2.innerHTML = "HI";
		}}
 console.log(fruits.apple)
 fruits.fun();
 
 // 2)맵구조 map+array구조 (k:[v])
 var grp = {"one1":["김길동","홍길동","이길동"],"two":["일지매","이지매","삼지매"]};
 console.log(grp.one1);
 
 //3)array구조([a,b,c])
 var arr=["백두산","한라산","지리산","금강산","내장산"];
 console.log(arr);
 
 //4)array+map([{},{},{}])
  var list = [
	   {"id":"hong1","name":"홍일"},
	   {"id":"hong2","name":"홍이"},
	   {"id":"hong3","name":"홍삼"},
	   {"id":"hong4","name":"홍사"}
  ]

  console.log(list[2].id);
  console.log(list[2].name);
</script>
</body>
</html>