<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
<link rel="stylesheet" href="/YummyMap/css/member/login.css">
<link rel="stylesheet" href="/YummyMap/css/w3.css">

<link rel="stylesheet" href="/YummyMap/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		('#login').click(function(){
			var mid = $('#id').val();
			var mpw = $('#pw').val();
			
			if(!mid){
				$('#id').focus();
				return;
			}
			if(!mpw){
				$('#pw').focus();
				return;
			}
			
			$('#frm').attr('method', 'POST');
			$('#frm').attr('action', './loginProc.mmy');
			$('#frm').submit();
		});
	});
		<%
		String mid = (String)session.getAttribute("mid");
		%>
		
<%-- 		
		var mid = '<%= mid %>';
		if(mid != 'null' && mid.length != 0 ){
			$('#loginWin').css('display', 'none');
			$('#msg').html(mid);
			$('#msgWin').css('display', '');
		}
		
		$('#hbtn').click(function(){
			$(location).attr('href', '/clsProj/main.mmy');
		}); --%>
	
</script>
</head>
<style>

</style>
<body>
  <div class="">
    <div class="container border  all-mar all-wid" style="width: 600px">
      <div class="text-center">
      <img class="img" src="./img/logo_ex.png">
      </div>
      <br>
      <h2 class="login text-right mr-5"> 로그인하기</h2>
      <br>
      <form id="frm" name="frm">
        <div class="ml-5 body-wid ">
        <h5 class="input-tit-mar">아이디  </h5>
        <input type="text" class="input-wid" id="id" name="id">
        <br><br>
        <h5 class="input-tit-mar2">비밀번호  </h5>
        <input type="text" class="input-wid" id="pw" name="pw">
        </div>
        </form>
        <br><br><br>
          <div>
            <button type="button" class="btn btn-primary " style="width: 155px;">ID 찾기</button>
            <button type="button" class="btn btn-primary " style="width: 155px;">PW 찾기</button>
            <button type="button" class="btn btn-primary " style="width: 155px;" >회원가입</button>
            <br><br>
            <button type="button" class="btn btn-primary " style="width: 235px;" id="login">로그인</button>
            <button type="button" class="btn btn-primary " style="width: 235px;">홈으로</button>
            <br><br>
            <button type="button" class="btn btn-success btn3-wid">Naver 계정으로 로그인</button>
            <br><br>
            <button type="button" class="btn btn-warning btn3-wid" >Kaokao 계정으로 로그인</button>
            </div>
          </div>
      </div>
    </div>
</body>
</html>