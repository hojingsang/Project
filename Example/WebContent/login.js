function oncheck() {
         var list = [[fm.id.value, "아이디를 입력하세요."], [fm.password.value, "비밀번호를 입력하세요."]];
         for (i = 0; i < list.length; i++) {
            if (!list[i][0]) {
               alert(list[i][1]);
               return false;
            }
         }
         if (!(fm.id.value == "1" && fm.password.value == "123")) {
            alert("아이디 비밀번호를 다시 확인해주세요.");
            return false;
         }
         alert("로그인에 성공했습니다.");
         return true;
      }
