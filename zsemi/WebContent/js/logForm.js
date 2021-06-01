/**
 * 
 */
$("#mypage").click(function(){
	const param = $("#frm").serialize();
	$("#pagebox").load("./member.do?flag=search",param);
})

$("#signUpBtn").click(function(){
	$("#pagebox").load("./page/sign_up.jsp");
})

$("#loginBtn").click(function(){
	const param = $("#logFrm").serialize();
	$("#pagebox").load("./member.do?flag=login",param);
})



