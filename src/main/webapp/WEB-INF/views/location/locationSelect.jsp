<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>Bean Brothers Coffee</title>

<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../resources/css/style.css">
<!-- <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap" rel="stylesheet">
<%-- <c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title> --%>
</head>
<body>
<%-- 	<c:import url="../template/header.jsp"></c:import> --%>


<div class="navbar navbar-default navbar-static-top" role="navigation">

     <div class="container">

          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="index.html" class="navbar-brand"><i class="fa fa-magnet"></i></a>
          </div>
          <div class="collapse navbar-collapse">
               <li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/location/locationList">Location</a></li>
                    <li><a href="#">Location</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contact</a></li>
               </ul>
          </div>

  </div>
</div>

	<div style="margin: 0 auto; text-align: center">
		<h2>Location Select Page</h2>
		<!-- 이미지 파일 불러오기 -->
		<div>
			<img alt="${dto.storeName}" src="../resources/images/${dto.storeImg}">
		</div>

		<!-- Select 된 데이터 내용 -->
		<h5>Store: ${dto.storeName}</h5>
		<h5>Location: ${dto.storeLoc}</h5>
		<!-- 소개글 -->
		<div>
			<p>${dto.storeInfo}</p>
		</div>
	</div>
	<!-- 지도 key : 29d592b09c4a7ae1856b2630da60b871&libraries=services -->
	<div id="map"
		style="width: 1000px; height: 400px; margin: 0 auto; text-align: center"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29d592b09c4a7ae1856b2630da60b871&libraries=services"></script>
	<script>
		// DB 에서 위도와 경도를 가져오기
		var storeLat = ${dto.storeLat};
		var storeLan = ${dto.storeLan};

		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(storeLat, storeLan), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(storeLat, storeLan);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			//클릭하면 해당 장소를 카카오맵으로 띄운다.
			window.open('http://map.kakao.com/?q=${dto.storeName}');
		});

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>
	<button onclick="history.back()">Store List</button>
	
	<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/custom.js"></script>
</body>
</html>