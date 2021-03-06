<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/base.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/login.css">
	<script type="text/javascript" src="/YummyMap/js/jquery-3.5.0.min.js"></script>
	<script type="text/javascript" src="/YummyMap/js/admin/login.js"></script>
	<title>관리자 로그인 페이지</title>

</head>

<body>



	<div class="container  mt80" style="width: 900px;">
		<nav class="d-flex justify-content-between navbar navbar-light ">
			<div>
				<a class="navbar-brand tcolor logo mt-5" href="#">
					YUMMY MAP
				</a>
			</div>
			<h2 class="mt-5 tcolor">Admin Login</h2>
		</nav>

		<div class="bar"></div>

		<div class="container mb-4 " style="max-width: 450px;">
		 <form method="post" action="/YummyMap/admin/loginProc.mmy" id="frm">
			<div class="input-group mb-3 mt100">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-default">I &nbspD&nbsp</span>
				</div>
				<input type="text" class="form-control" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default" id="id" name="id" autofocus="autofocus">
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-default">P W</span>
				</div>
				<input type="password" class="form-control" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default" id="pw" name="pw">
			</div>
			<c:if test="${param.noad eq 'b'}">
			<div class="text-danger" id="idck"> *일치하는 관리자가 없습니다</div>
			</c:if>
			</form>
			<div class="d-flex justify-content-between mb-5">
				<div class="mt-3"><a href="#" class="text-right">관리자 정보 찾기</a></div>
				<button type="button" class="btn btn-primary" id="join">로그인</button>
			</div>
		</div>

		<div class="bar"></div>

	</div>




</body>

</html>