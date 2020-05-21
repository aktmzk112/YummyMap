$(function(){
	
	$('#pw').keyup(function(){
		let pw = $('#pw').val();
		let pwck = pwchk(pw);
		
		if(!pwck){
			$('#pwhint').css('color','red');
			$('#pwhint').text('* 비밀번호는 숫자/특수문자/영문 대/소문자 1자리이상 포함한 8자리 이상 15자리 입니다');
		}else{
			$('#pwhint').text('');
		}
	});
	
	$('#pw').keyup(function(){
		
	});
	
	function pwchk(pw) {
		let patt = /^([a-z0-9!@#$%^&*-+_]){1}(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*-=])[a-zA-Z0-9!@#$%^&*-+_]{7,15}$/i;
		let pwok = patt.test(pw);
		return pwok;
	}
	
	
	
	
});


