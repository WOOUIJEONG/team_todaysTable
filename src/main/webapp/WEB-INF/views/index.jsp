<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Directory Theme by Bootstrapious</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet"
	href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="resources/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<!-- POPUP CSS -->
<style type="text/css">
#popup {
	display: flex;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .7);
	z-index: 1;
}

#popup.hide {
	display: none;
}

#popup.has-filter {
	backdrop-filter: blur(4px);
	-webkit-backdrop-filter: blur(4px);
}

#popup .content {
	padding: 20px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, .3);
}
</style>

</head>
<body>

	<section class="d-flex align-items-center dark-overlay bg-cover"
		style="background-image: url(resources/img/photo/photo-1525610553991-2bede1a236e2.jpg);">
		<div
			class="container py-6 py-lg-7 text-white overlay-content text-center">
			<div class="row">
				<div class="col-xl-10 mx-auto">
					<h1 class="display-3 fw-bold text-shadow">Todays Table</h1>
					<p class="text-md text-shadow">당신의 근처. 가장 가까운 식당이 `오늘의 식탁`입니다.</p>
				</div>
			</div>
		</div>
	</section>


	<!-- HEADER include -->
	<%
		String id = (String) session.getAttribute("id");
		if (id == null) {
	%>
	<jsp:include page="headerMain.jsp" />
	<%
		} else {
	%>
	<jsp:include page="headerMain_afterLogin.jsp" />
	<%
		}
	%>


	<section class="py-6"></section>
	<div class="container d-flex justify-content-center">
		<div
			class="search-bar rounded col-11 p-lg-4 px-4 py-4 position-relative mt-n5 z-index-20">
			<form action="searchResult.do">
				<div class="row">
					<div class="col-lg-5 d-flex align-items-center form-group">
						<input class="form-control border-0 shadow-0" type="search"
							name="search" placeholder="What are you searching for?">
					</div>
					<div class="col-md-6 col-lg-3 d-flex align-items-center form-group">
						<div class="input-label-absolute input-label-absolute-right w-100">
							<label class="label-absolute" for="location"><i
								class="fa fa-crosshairs"></i> </label> <input
								class="form-control border-0 shadow-0" type="text"
								name="location" placeholder="Location" id="location">
						</div>
					</div>
					<div class="col-lg-2 form-group d-grid mb-0">
						<button class="btn btn-primary h-100" type="submit">Search</button>
					</div>
					<div class="col-lg-2 form-group d-grid mb-0">
						<button class="btn btn-primary h-100 inline-block" type="button"
							data-bs-toggle="collapse" data-bs-target="#moreFilters"
							aria-expanded="false" aria-controls="moreFilters">
							<i class="fas fa-filter me-1"></i>FILTER
						</button>
					</div>
					<div class="col-12 py-4">
						<div class="collapse" id="moreFilters">
							<div class="col-12 mb-4">
								<label class="form-label">Menu Option</label>
								<ul class="list-inline mb-0">
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_0"
												name="type[]"> <label class="form-check-label"
												for="type_0">아침 메뉴</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_1"
												name="type[]"> <label class="form-check-label"
												for="type_1">점심 메뉴</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_2"
												name="type[]"> <label class="form-check-label"
												for="type_2">어린이메뉴</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_3"
												name="type[]"> <label class="form-check-label"
												for="type_3">글루텐 프리</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_4"
												name="type[]"> <label class="form-check-label"
												for="type_4">베지테리언</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_4"
												name="type[]"> <label class="form-check-label"
												for="type_4">콜키지 프리</label>
										</div>
									</li>
								</ul>
							</div>
							<div class="mb-4">
								<label class="form-label">매장 추가 정보</label>
								<ul class="list-inline mb-0">
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_0" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_0">주차장</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_1" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_1">FREE WIFI</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_2" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_2">예약 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_3" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_3">포장 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_4" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_4">애완동물 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_5" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_5">대관 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="cuisine_5" name="cuisine[]"> <label
												class="form-check-label" for="cuisine_5">외부 좌석</label>
										</div>
									</li>
								</ul>
							</div>
							<div class="row">
								<div class="col-xl-6 mb-3">
									<label class="form-label">유아, 어린이</label>
									<ul class="list-inline mb-0">
										<li class="list-inline-item">
											<div class="form-check">
												<input class="form-check-input" type="radio"
													id="vegetarians_0" name="vegetarians"> <label
													class="form-check-label" for="vegetarians_0">유아용 의자</label>
											</div>
										</li>
										<li class="list-inline-item">
											<div class="form-check">
												<input class="form-check-input" type="radio"
													id="vegetarians_1" name="vegetarians"> <label
													class="form-check-label" for="vegetarians_1">키즈존</label>
											</div>
										</li>
										<li class="list-inline-item">
											<div class="form-check">
												<input class="form-check-input" type="radio"
													id="vegetarians_1" name="vegetarians"> <label
													class="form-check-label" for="vegetarians_1">노키즈존</label>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- RECOMMEND -->
				<div class="col-lg-2 form-group d-grid mb-0"
					style="left: 50%; transform: translateX(-50%); cue-after: none;">
					<button class="btn btn-primary h-100" id="recBTN" type="button"
						onclick="showPopup(true)">recommend</button>
				</div>

				<div id="popup" class="hide">
					<div class="col-sm-6 col-lg-4 mb-5 hover-animate"
						data-marker-id="59c0c8e33b1527bfe2abaf92">
						<div class="card h-100 border-0 shadow">
							<!--가게 이미지  -->
							<div class="card-img-top overflow-hidden dark-overlay bg-cover"
								style="background-image: url(resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
								<!--가게 상세 페이지 링크  -->
								<a class="tile-link" href="detail.html"></a>
								<div id="storeName" class="card-img-overlay-bottom z-index-20">
									<!-- <h4 class="text-white text-shadow"></h4> -->
								</div>
							</div>
							<div class="card-body">


								<!-- Random List -->
								<!-- 껍데기만 만들어놓고 ajax로 데이터받아온것을 append해주는 방식 -->
								<table class="Rank_table">
									<colgroup>
										<col style="width: 30%;">
										<col style="width: 70%">
									</colgroup>
									<tbody id="rankUsers">
									</tbody>
								</table>


								<div class="d-flex justify-content-between align-items-center">
									<p class="mb-2 text-sm fw-bold">
										<i class="fa fa-star text-warning"></i><i
											class="fa fa-star text-warning"></i><i
											class="fa fa-star text-warning"></i><i
											class="fa fa-star text-warning"></i>
									</p>
									<!-- 찜한 가게 추가 sql -->
									<form action="#">
										<a class="position-relative z-index-40"
											href="javascript: void();">
											<button class="btn btn-primary btn-sm" type="submit">찜하기</button>
										</a>
									</form>
								</div>
								<button class="btn btn-primary h-100" type="button"
									onclick="closePopup()"
									style="width: 100px; margin: auto; display: block;">닫기</button>
							</div>
						</div>
					</div>
				</div>
		</div>

		</form>
	</div>
	</div>
	<!-- Search end-->
	<section class="pt-2 pb-6"></section>
	<section class="py-6 bg-gray-100">
		<div class="container">
			<div class="text-center pb-lg-4">
				<p class="subtitle text-secondary">Try something new today</p>
				<h2 class="mb-5">오늘 당신의 식탁은 어디인가요?</h2>
			</div>
		</div>
		<div class="container-fluid">
			<!-- Slider main container-->
			<div
				class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-3">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper pb-5">
					<!-- Slides-->
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum et quis nostrud veniam dolore deserunt.
										Pariatur dolore ut in elit id nulla. Irur...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Restaurant,</a> <a class="me-1"
											href="#">Contemporary</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e322f3375db4d89128">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Plutorque</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Proident irure eiusmod
										velit veniam consectetur id minim irure et nostrud mollit
										magna velit. Commodo amet proident aliq...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Restaurant,</a> <a class="me-1"
											href="#">Fusion</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e3a31e62979bf147c9"
							style="width: 400; height: 200;">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1466978913421-dad2ebd01d17.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Junipoor</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Music
											club</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Lorem amet ex duis in et
										fugiat consectetur laborum eiusmod labore. Quis cupidatat et
										do dolor in in magna. Eu sit quis ...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Music,</a> <a class="me-1" href="#">Techno,</a>
										<a class="me-1" href="#">House</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e3503eb77d487e8082">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Musix</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Music
											club</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Deserunt eiusmod Lorem
										proident consequat elit culpa laboris ea cupidatat. Consequat
										dolore proident ipsum qui sint enim...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Music,</a> <a class="me-1" href="#">Club,</a>
										<a class="me-1" href="#">Rock</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e39aa2eed0626e485d">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1504087697492-238a6bf49ce8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Prosure</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cillum sunt
										reprehenderit ea non irure veniam dolore commodo labore fugiat
										est consequat velit. Cupidatat nisi qui ad si...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Nisi,</a> <a class="me-1" href="#">Ex,</a>
										<a class="me-1" href="#">Eiusmod</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e39aa2edasd626e485d">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1505275350441-83dcda8eeef5.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Take That</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Café</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cillum sunt
										reprehenderit ea non irure veniam dolore commodo labore fugiat
										est consequat velit. Cupidatat nisi qui ad si...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Nisi,</a> <a class="me-1" href="#">Ex,</a>
										<a class="me-1" href="#">Eiusmod</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-gray-300"> </i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum et quis nostrud veniam dolore deserunt.
										Pariatur dolore ut in elit id nulla. Irur...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Restaurant,</a> <a class="me-1"
											href="#">Contemporary</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e322f3375db4d89128">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Plutorque</h4>
										<p class="mb-2 text-xs">
											<i class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i><i
												class="fa fa-star text-warning"></i>
										</p>
									</div>
									<div
										class="card-img-overlay-top d-flex justify-content-between align-items-center">
										<div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
										<a class="card-fav-icon position-relative z-index-40"
											href="javascript: void();"> <svg
												class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg>
										</a>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Proident irure eiusmod
										velit veniam consectetur id minim irure et nostrud mollit
										magna velit. Commodo amet proident aliq...</p>
									<p class="text-sm text-muted text-uppercase mb-1">
										By <a href="#" class="text-dark">Matt Damon</a>
									</p>
									<p class="text-sm mb-0">
										<a class="me-1" href="#">Restaurant,</a> <a class="me-1"
											href="#">Fusion</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- If we need pagination-->
				<div class="swiper-pagination"></div>
			</div>
			<div class="text-center mt-5">
				<a class="btn btn-outline-primary" href="category-2.html">오늘의
					식탁은 ?</a>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<jsp:include page="footer.jsp" />
	<!-- JavaScript files-->
	<script>
		// ------------------------------------------------------- //
		//   Inject SVG Sprite - 
		//   see more here 
		//   https://css-tricks.com/ajaxing-svg-sprite/
		// ------------------------------------------------------ //
		function injectSvgSprite(path) {

			var ajax = new XMLHttpRequest();
			ajax.open("GET", path, true);
			ajax.send();
			ajax.onload = function(e) {
				var div = document.createElement("div");
				div.className = 'd-none';
				div.innerHTML = ajax.responseText;
				document.body.insertBefore(div, document.body.childNodes[0]);
			}
		}
		// to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
		// use your own URL in production, please :)
		// https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
		//- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
		injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');
	</script>
	<!-- jQuery-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript">

		$(function() {
			$("button").click(function() {
				if (this.id == 'recBTN') {
					$.ajax({
						type : 'POST',
						url : 'storeRandomlist.do',
						data : "",
						async : false,
						contentType : "json",
						success : function(data) {
							//초기화
							$("div#storeName").html('');
							$("tbody").html('');
							
							//랜덤출력하기
							if (data.length == 0) {
								alert('데이터가 존재하지 않습니다.');
							} else {
								console.log(data);
								$(data).each(function(idx){
									
									$("div#storeName").append(
											
											'<h4 class="text-white text-shadow">'+ data[idx].name +'</h4>'
									)

									
									$("tbody").append(
										'<tr><td>카테고리 :</td><td>'
										+data[idx].category+
										'</td></tr>'	
										+
										'<tr><td>주소 :</td><td>'
										+data[idx].address+
										'</td></tr>'	
										+
										'<tr><td>전화번호 :</td><td>'
										+data[idx].tel+
										'</td></tr>'
										
									)
								});
								
							}
						},
						error : function(request, status, error) {
							alert(error);
						}
					});
				}
			});
		});

		function showPopup(hasFilter) {
			const popup = document.querySelector('#popup');

			if (hasFilter) {
				popup.classList.add('has-filter');

			} else {
				popup.classList.remove('has-filter');
			}

			popup.classList.remove('hide');
		}

		function closePopup() {
			const popup = document.querySelector('#popup');
			popup.classList.add('hide');
		}
	</script>
	<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Magnific Popup - Lightbox for the gallery-->
	<script
		src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Smooth scroll-->
	<script
		src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Bootstrap Select-->
	<script
		src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="resources/vendor/object-fit-images/ofi.min.js"></script>
	<!-- Swiper Carousel                       -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
	<script>
		var basePath = ''
	</script>
	<!-- Main Theme JS file    -->
	<script src="resources/js/theme.js"></script>



</body>
</html>