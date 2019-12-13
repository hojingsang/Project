function oncheck(){
		if(!fm.name.value){
			alert("이름을 입력하세요.");
			fm.name.focus();
			return false;
		}
		if(!fm.password.value){
			alert("비밀번호를 입력하세요.");
			fm.password.focus();
			return false;
		}
		if(!fm.tel2.value || !fm.tel3.value){
			alert("전화번호를 입력하세요.");
			fm.tel2.focus();
			return false;
		}
		if(!(fm.gender[0].checked || fm.gender[1].checked)){
			alert("성별을 선택하세요.");
			return false;
		}
	}