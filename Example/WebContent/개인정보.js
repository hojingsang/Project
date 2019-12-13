function check(){
			var fm = document.fm;
			if(!fm.agree1.checked){
				alert("약관에 동의하세요.");
				fm.agree1.focus();
				return false;
			}
			if(!fm.agree2.checked){
				alert("개인정보에 동의하세요.");
				fm.agree2.focus();
				return false;
			}
			location.href="main.html";
		}
		function allCheck() {
			/* with(document.fm){
				if(all.checked){
					for(var i=0; i<length; i++){
						if(elements[i].type == "checkbox"){
							elements[i].checked = true;
						}
					}
				}else{
					for(var i=0; i<length; i++){
						if(elements[i].type == "checkbox"){
							elements[i].checked = false;
						}
					}
				}
			} */
			if(fm.all.checked){
				fm.agree1.checked = true;
				fm.agree2.checked = true;
			}else{
				fm.agree1.checked = false;
				fm.agree2.checked = false;
			}
		}