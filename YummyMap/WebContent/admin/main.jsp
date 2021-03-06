<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/base.css">
	<link rel="stylesheet" href="/YummyMap/css/admin/main.css">
	<script type="text/javascript" src="/YummyMap/js/jquery-3.5.0.min.js"></script>
	<script type="text/javascript" src="/YummyMap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="/YummyMap/js/admin/main.js"></script>
	<title>회원관리 페이지</title>
</head>

<body>
	<form method="post" action="" id="frm">
		<input type="hidden" name="mno" id="no" >
		<input type="hidden" name="nowpage" id="nowpage" >
		<input type="hidden" name="searchs" id="searchs" >
		<input type="hidden" name="opts" id="opts" value="${OPT}">
	</form>
	<div class="container mt-1">
		<nav class="d-flex justify-content-between navbar navbar-light">
			<a class="navbar-brand tcolor logo mt-5" href="#">
				YUMMY MAP
			</a>
			<div>
				${SID}
			</div>
		</nav>
		<div class="bar"></div>
		<div class="row row-cols-2 mt-2 sub">
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

			<div class="col-9 d-flex flex-column mt-2" style="height: 575px;">
				<div class="mb-auto p-2" >
					<div class="d-flex justify-content-around text-center">
						<div class="col-2">번호</div>
						<div class="col-2">아이디</div>
						<div class="col-2">이름</div>
						<div class="col-2">악성회원</div>
						<div class="col-3">비고</div>
					</div>
					<div class="row bar py-1"></div>
					<c:forEach var="data" items="${LIST}">
					<div class="d-flex mt-3 justify-content-around text-center" id="${data.mno }">
						<div class="col-2">${data.mno}</div>
						<div class="col-2 mid" >${data.mid }</div>
						<div class="col-2">${data.mname }</div>
						<div class="col-2"></div>
						<div class="col-3">
							<button class="col-5 obtn">수정</button>
					 		<button class="col-5 btn-danger rbtn" type="button" data-toggle="modal" data-target="#staticBackdrop">삭제</button>
						</div>
					</div>
					</c:forEach>
				</div>
					<div class=" p-2 d-flex"> 
					<select style="display: inline-block;" class="ml-auto col-2 form-control" id="opt" name="opt" >
						<option value="nos">검색조건</option>
						<c:if test="${empty OPT}">
							<option id="idsel" value="idch">아이디 검색</option>
							<option id="namesel" value="namech">이름 검색</option>
						</c:if>
						<c:if test="${not empty OPT and OPT eq 'idch' }">
							<option id="idsel" value="idch" selected>아이디 검색</option>
							<option id="namesel" value="namech">이름 검색</option>
						</c:if>
						<c:if test="${not empty OPT and OPT eq 'namech' }">
							<option id="idsel" value="idch" >아이디 검색</option>
							<option id="namesel" value="namech" selected>이름 검색</option>
						</c:if>
					</select>
					<div class="col-3 bd-highlight">
						<input type="search" class="form-control ds-input" id="search-input" placeholder="Search..."
							aria-label="Search for..." autocomplete="off" data-docs-version="4.5" spellcheck="false" role="combobox"
							aria-autocomplete="list" aria-expanded="false" aria-owns="algolia-autocomplete-listbox-0" dir="auto"
							style="position: relative; vertical-align: top;" name="search" value="${SCH}">
					</div>
						<button type="button" class="btn btn-secondary" id="sbtn">검색</button>
				</div>
				<div class="d-flex justify-content-around mb-1 mt-2" id="${data.nowPage}">
					<div class="btn-group mr-2" role="group" aria-label="First group">
						<c:forEach var="page" begin="${PAGE.startPage}" end="${PAGE.endPage}">
							<button type="button" class="btn btn-secondary pbtn">${page}</button>
						</c:forEach>
					</div>
				</div>

			</div>
		</div>
		<div class="bar"></div>
	</div>
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger" id="rokbtn">확인</button>
      </div>
    </div>
  </div>
</div>



</body>

</html>