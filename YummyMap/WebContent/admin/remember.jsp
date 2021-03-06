<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/base.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/remember.css">
	<script type="text/javascript" src="../../js/jquery-3.5.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/YummyMap/js/admin/rememb.js"></script>
	<title>회원정보 수정 페이지</title>
</head>

<body>
	<div class="container mt-1 mb-5">
		<nav class="d-flex justify-content-between navbar navbar-light">
			<a class="navbar-brand tcolor logo mt-5" href="#">
				YUMMY MAP
			</a>
			<div>
				로그인 이미지
			</div>
		</nav>
		<div class="bar"></div>
		<div class="row row-cols-2 sub">
			<div class="col-3 pt-5 pr-4 text-right bar-ri">
				<div><a href="http://localhost/YummyMap/admin/main.mmy">
						<h5>회원 관리</h5>
					</a></div>
				<div class="mt-3">
					<a href="#">
						<h5>게시글 관리</h5>
					</a>
				</div>
			</div>

			<div class="col-8  ml-5 text-center mb-5 ">
				<h3 class="mt-4">회원 정보 변경</h3>
				<div class="container" style="max-width: 550px;">
					<div class="mt-5 row ">
						<h5 class="col-3 ml-1 mr-5 ">아이디 </h5>
						<span class="border-b col-6 ml-1 pb-2 id-span">${MVO.mid }</span>
					</div>

					<form action="" method="POST" id="frm">
						<input type="hidden" name="mno" value="${MNO}">
						<div class="mt-4 row ml-1">
							<h5 class="in-bl text-left ml-2 col-3 mt-1">이름</h5>
							<input class="col-6 form-control border-b margin-name text-center"  type="text" id="name" name="name" value="${MVO.mname }">
						</div>
						<div class="mt-4 row ml-1">
							<h5 class="in-bl col-3  mt-1">비밀번호 </h5>
							<input type="password" class="col-6 form-control border-b margin-pw text-center" id="pw" name="pw">
						</div>
						<div class="mt-3" style="font-size: 14px;" id="pwhint"></div>
						<div class="mt-4  row ml-1">
							<h5 class="in-bl col-4 mt-1">비밀번호 확인 </h5>
							<input type="password" class="col-6 form-control border-b text-center" id="pwck">
						</div>
						<div class="mt-3" style="font-size: 14px;" id="pwok"></div>
						<div class="mt-4 row ml-1">
							<h5 class="in-bl col-3 mt-1  text-left ml-2">연락처 </h5>
							<input type="text" class="col-6 form-control border-b margin-tel text-center" id="tel" name="tel" value="${MVO.mtel }">
						</div>
						<div class="mt-4 row ml-1">
							<h5 class="in-bl col-3 mt-1  text-left ml-2">이메일 </h5>
							<input type="text" class="col-3 form-control border-b margin-mail text-center" id="mail" name="mail" value="${MVO.memail }">
							<span class="mt-2">@</span><input type="text" class="col-3 form-control border-b text-center" id="domin"
								name="domain" value="${MVO.mdomain}">

							<select class="col-3 form-control border-b  mt-1 margin-domain">
								<option value="">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="google.com">google.com</option>
								<option value="yahoo.com">yahoo.com</option>
							</select>
						</div>
							<div class="row  mt-3 d-flex justify-content-center">
								<div>
									<input class="mr-2" type="checkbox" value="악성회원">악성회원
								</div>
				
								</div>
					</form>
				</div>

				<div class="mt-5">
					<button type="button" class="btn btn-outline-primary px-5">수정</button>
					<button type="button" class="btn btn-outline-danger px-5 ml-2">취소</button>
				</div>
			</div>
		</div>
		<div class="bar"></div>
	</div>



</body>

</html>