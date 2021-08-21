function Validation()
        {
            var idtext = document.getElementById("id");
            //아이디의 id값
            var patext = document.getElementById("password");
            //비밀번호의 id값
            var mtext = document.getElementById("email");
           
            var id = idtext.value;
            var password = patext.value;
            var email = mtext.value;

            var regExp1 = /^[a-zA-Z0-9]{4,12}$/;
            //id와 비밀번호의 유효성 검사
            var regExp2 = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
            //e-mail의 유효성 검사
            
            if(!regExp1.test(id))
             //아이디 유효성 검사 후 4~12자의 영문 대소문자와 숫자의 유효성이 안 맞다면
             //공백을 주고 알람을 띄운다.
             //밑에 동일한 유효성 검사
            {
                alert("형식에 맞춰 ID를 입력하세요");
                idtext.value = "";
                idtext.focus();
                return false;
            }

            if (!regExp1.test(password))
            {
                alert("형식에 맞춰 비밀번호를 입력하세요");
                patext.value = "";
                patext.focus();
                return false;
            } 
            
            if ((password.slice(0, password.length) == id.slice(0, id.length))) 
            {
                alert("비밀번호가 ID와 동일하면 안됩니다.");
                patext.value = "";
                patext.focus();
                cpatext.value = "";
                cpatext.focus();
                return false;
            }

            if (!regExp2.test(email))
            {
                alert("올바른 이메일 형식이 아닙니다.");
                mtext.value = "";
                mtext.focus();
                return false;
            }
		}