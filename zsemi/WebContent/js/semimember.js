/**
 * 
 */

$("#btnInsert").click(function(){
	const data = $('#frm_member').serialize();
    $.ajax({
	type: 'POST',
	url : './member.do?flag=register',
	data : data,
	success : function(resp){
		alert(resp);
	}
	
	
})
})

$("#btnDelete").click(function(){
	const data = $('#frm_member').serialize();
	$.ajax({
	 type:'POST',
     url : './member.do?flag=delete',
     data : data,
     success : function(resp){
      alert(resp);
      	
}
	})
})

$("#btnUpdate").click(function(){
	const data =$('#frm_member').serialize();
	$.ajax({
		type:'POST',
		url : './member.do?flag=modify',
		data : data,
		success : function(resp){
			alert(resp);
		}
	})
});


$('#btnZipCode').on('click',function(){
	const frm = document.frm_member;
	
	new daum.Postcode({
		//검색하고 더블클릭하면 매개변수를 타고 데이터가 들어온다
		oncomplete: function(data){
			//우편번호
			frm.post.value = data.zonecode;
			//주소
			frm.address.value = data.address;
		}
	}).open();
})