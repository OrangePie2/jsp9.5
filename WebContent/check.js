function loginCheck(){
	if(document.frm.id.value.length==0){
		alert("아이디 입력");
		frm.id.focus();
		return false;
	}
	if(document.frm.pass.value.length==""){
		alert("비밀번호 입력");
		frm.pass.focus();
		return false;
	}
	return true;
}
function rewriteCheck(){
	if(document.frm.id.value.length==0){
		alert("아이디 입력");
		frm.id.focus();
		return false;
	}
	if(document.frm.pass.value.length==""){
		alert("비밀번호 입력");
		frm.pass.focus();
		return false;
	}
	if(document.frm.name.value.length==0){
		alert("이름 입력");
		frm.name.focus();
		return false;
	}
	if(document.frm.number.value.length==0){
		alert("전화번호 입력");
		frm.number.focus();
		return false;
	}
	return true;
}
function joinCheck(){
	if(document.frm.id.value.length==0){
		alert("아이디 입력");
		frm.id.focus();
		return false;
	}
	if(document.frm.pass.value.length==""){
		alert("비밀번호 입력");
		frm.pass.focus();
		return false;
	}
	if(document.frm.name.value.length==0){
		alert("이름 입력");
		frm.name.focus();
		return false;
	}
	if(document.frm.number.value.length==0){
		alert("전화번호 입력");
		frm.number.focus();
		return false;
	}
	return true;
}