<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/base.css">
	<link rel="stylesheet" href="/YummyMap/css/game/game.css">
	<script type="text/javascript" src="/YummyMap/js/jquery-3.5.0.min.js"></script>
	<script type="text/javascript" src="/YummyMap/js/game/Winwheel.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>`
	
	<title>게임 화면</title>
	<style>

	</style>


</head>

<body>



	<div class="container mt-3" style="width: 900px;">
		<nav class="d-flex justify-content-between navbar navbar-light ">
			<div>
				<a class="navbar-brand tcolor logo" href="#">
					YUMMY MAP
				</a>
			</div>
			<h2 class="mt-1 tcolor">룰렛 게임</h2>
		</nav>

		<div class="bar"></div>

		<div style="width: 500px; margin: auto;" class="mt-5 mb-5">
			<div class="border-bottom p-3 text-center" id="menuBox">
			<input type="checkbox" id="menu"  value="짜장면">짜장면
				<input type="checkbox" id="menu"  value="밥">밥
				<input type="checkbox" id="menu"  value="국">국
				<input type="checkbox" id="menu"  value="반찬">반찬
			</div>

			<div style="max-width: 500px; height: 300px;" class="">

				<div id="canvasContainer" class="mt-3">
					<canvas id='canvas' width='500' height='300'>
						메뉴를 선택하세요
					</canvas>
					<img id="prizePointer" src="../../img/game/basic_pointer.png" alt="V" />
				</div>
			</div>

			<div class="text-center my-2 ">
				<button type="button" id="bt1"  class="px-5 py-2 btn btn-success">돌리기</button>
				<button type="button" id="bt2" class="px-5 py-2 btn btn-warning" >초기화</button>
			</div>
		</div>
		<div class="bar"></div>

	</div>

</body>
<script type="text/javascript" src="/YummyMap/js/game/game.js"></script>
<script type="text/javascript">

</script>

</html>