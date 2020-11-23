//회원 가입 유효성 검사
function bbsCheck() {
	
	var regExpName = /^[a-z|A-Z|ㄱ-ㅎ|k-l|가-힝]{2,12}$/; //아이디는 영문 대소문자와 숫자 4~12자리로 입력해야한다
	//var regExpName = /^[가-힣]*$/; //한글만
	//var regExpName = /^[가-힣].{1,4}$/; //2~4자 한글만
	
	var regExpBbsEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	var regExpBbsPhone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
	// 01로 시작하는 핸드폰 및 지역번호와 050, 070 검증함. 그리고 -(하이픈)은 넣어도 되고 생략해도 되나 넣을 때에는 정확한 위치에 넣어야 함.
	
	var form = document.frm;
    
	var name = form.bbsName.value;
	var email = form.bbsEmail.value;
	var phone = form.bbsPhone.value;
	
	if (!checkExistData(name, "이름을")){	
		return false;
	 }
    if(!regExpName.test(name)){
		//alert("이름은 한글만 입력해주세요");
		alert("이름은 한글 또는 영문 대소문자와 숫자 2~12자리로 입력하세요");        		
		return;
	}
	
	if (!checkExistData(email, "이메일을")){	
		return false;
	 }
	if(!regExpBbsEmail.test(email)){
		alert("올바른 이메일 형식이 아닙니다.");        		
		        		
		return;
	}
	
	if (!checkExistData(phone, "전화번호를")){	
		return false;
	 }
	if(!regExpBbsPhone.test(phone)){
		alert("유효하지 않는 전봐번호입니다.");        		
		        		
		return;
	}
	
  	form.submit();
}

// 공백확인 함수
function checkExistData(value, dataName) {
	if (value == "") {
	    alert(dataName + " 입력해주세요!");
        return false;
    }
        return true;
}