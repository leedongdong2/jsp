<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name='viewport' content='width=device-widht,initial-scale=1.0'>
<meta charset="UTF-8">
<title>append_removechild</title>
</head>
<body>
<div id='append_removechild'>
   <h2>상품 옵션추가</h2>
   <label><input type='text' id='color'/></label>
   
   <input type='button' value='append' id='btnappend'/>
   <input type='button' value='remove' id='btnremove'/>
   <div id='zone'></div>

</div>
<script>
var zone =document.getElementById("zone");
var btnAppend = document.getElementById("btnappend");
var btnDelete = document.getElementById("btnremove");
var color = document.getElementById("color")

color.onkeyup = function(ev){
	if(ev.keyCode==13){
		var radio = document.createElement("input");
		   var label = document.createElement("label");
		   radio.setAttribute("name","chk")
		   radio.setAttribute("type","radio");
		   radio.setAttribute("value",color.value);
		   label.appendChild(radio);
		   //innerhtml은 입력된 html코드를 가져올수잇어 += radio과 lable의 텍스트를 이어줌
		   label.innerHTML += color.value;
		   zone.appendChild(label);
		   color.value='';
		
	}
	
}
btnAppend.onclick = function(){
   var radio = document.createElement("input");
   var label = document.createElement("label");
   radio.setAttribute("name","chk")
   radio.setAttribute("type","radio");
   radio.setAttribute("value",color.value);
   label.appendChild(radio);
   //innerhtml은 입력된 html코드를 가져올수잇어 += radio과 lable의 텍스트를 이어줌
   label.innerHTML += color.value;
   zone.appendChild(label);
   color.value='';
}

btnDelete.onclick = function(){
	var radios = zone.getElementsByTagName("input");
	for(var i=0;i<radios.length;i++){
		if(radios[i].checked){
			var p = radios[i].parentNode;
			zone.removeChild(p);
			
		}
	}
}

</script>
</body>
</html>