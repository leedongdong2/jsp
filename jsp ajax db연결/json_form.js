/**
 * 
 */
var btn = document.getElementById("btnFind");
 var frm = document.frm
 var input = frm.findStr;
var xhr = new XMLHttpRequest(); 

 input.onkeyup = funcKey;
 btn.onclick = funcFind;

var xhr = new XMLHttpRequest();
var rs = document.getElementsByClassName("result")[0];

function funcKey(ev){
	if(ev.keyCode==13){
		funcFind();
	}
}

function funcFind(){
	var url="json_form_result.jsp";
	var data = {};
	//객체는 동적생성 
	//data{findStr:frm.findStr.value가 만들어짐}
	data.findStr = frm.findStr.value;
	var param = JSON.stringify(data);
	
	                  //파라미터 데이터  
    url = url + "?findStr=" + frm.findStr.value;
	
	
	console.log(param);
	//get타입으로 이페이지와 요청페이지를 연결할수 있다
	xhr.open("get",url);
	//요청페이지에 파라미터데이터를 송신해줌 
	xhr.send()
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			        //텍스트로 송신된곳에서 처리해서 수신함
			var temp = xhr.responseText;
			rs.innerHTML = temp;
			
			
		}
	}
	
}