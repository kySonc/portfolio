//회원 가입 유효성 검사
function signUpCheck() {
	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|k-l|가-힝]/;
	var regExpPasswd = /^[0-9]*$/;
	var regExpName = /^[가-힣]*$/;
 		
	var form = document.frm;
    
	var id = form.id.value;
	var pw = form.pw.value;
	var name = form.name.value;
    
	if(!regExpId.test(id)){
		alert("아이디는 문자로 시작해주세요");
		form.id.select();
		return;
	}
	if(!regExpPasswd.test(pw)){
		alert("비밀번호는 숫자만 입력해주세요");        		
		return;
	}
	if(!regExpName.test(name)){
		alert("이름은 한글만 입력해주세요");        		
		return;
	}
  	form.submit();
}