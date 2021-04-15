<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h2>Location Select Page</h2>

	<!-- Select 된 데이터 내용 -->
	<h5>Store: ${dto.storeName}</h5>
	<h5>Location: ${dto.storeLoc}</h5>


	<!-- 지도 / 키 번호: 29d592b09c4a7ae1856b2630da60b871 -->
	<div id="map" style="width: 1000px; height: 400px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29d592b09c4a7ae1856b2630da60b871&libraries=services"></script>
	<script>
		var storeLat = ${dto.storeLat};
		var storeLan = ${dto.storeLan};
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(storeLat, storeLan), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
		
	</script>
</body>
</html>