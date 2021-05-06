/**
 * 
 */

/**
 * 회원 상세보기 및 suggest 기능
 */
var btn = document.getElementById("btnFind");
 var frm = document.frm
 var input = frm.findStr;
var xhr = new XMLHttpRequest(); 
var rs = document.getElementsByClassName("bottom")[0];
var sel = frm.sel;

 input.onkeyup = funcKey;
 btn.onclick = funcFind;



function funcKey(ev){
	           
	var d = ev.target.value;
	console.log(d);
	if(d.length>1){
		funcFind();
	}
}

function funcFind(){
	var sel = frm.sel;
	sel.length=0; //select 안에 있는 모든 데이터를 제거한다.
	
	var url="member_suggest_result.jsp";
	
 
    url = url + "?findStr=" + frm.findStr.value;
	
	

	xhr.open("get",url);
	xhr.send()
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			        //텍스트로 송신된곳에서 처리해서 수신함
			var temp = xhr.responseText;
			var json = JSON.parse(temp);
			for(var i=0;i<json.length;i++){
				var d = json[i];                           //text값 , 벨류값
				                            // <option value=d.id>d.data</option>
	/*셀렉트의i번지 옵션*/		  sel.options[i] = new Option(d.data,d.id); //옵션태그를 만드는법
			}
			
			if(sel.length<1){//보여질 데이터가 없다면 감춤
				sel.style.visibility = "hidden";
			}else{
				sel.style.visibility = "visible";
			}
}
}
}


sel.ondblclick= function(){
	var v = sel[sel.selectedIndex].value;
	var url = 'member_suggest_detail.jsp?eid='+v;
	xhr.open('get',url);
	xhr.send();
	xhr.onreadystatechange = function(){
		if(xhr.status==200&&xhr.readyState==4){
			var temp = xhr.responseText;
			var json = JSON.parse(temp);
			rs.innerHTML = '<li>사번:' + json.eid
			               +'<li>성명:' + json.fn
                           +'<li>이메일:' + json.em
                           +'<li>연락처:' + json.ph
                           +'<li>부서코드:' + json.did
                           +'<li>매니저아이디:' + json.mid
                           +'<li>직무코드:' + json.jid
		sel.style.visibility = 'hidden';
		}
		
	}
}