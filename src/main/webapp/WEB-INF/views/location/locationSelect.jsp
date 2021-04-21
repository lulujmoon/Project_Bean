<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/setting.jsp"></c:import>
<title>Bean Brothers Coffee</title>

</head>
<body>
<!-- header 부분 -->
<c:import url="../template/header.jsp"></c:import>

<!-- Blog Section -->

<section id="blog">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-md-10 col-sm-12">
                    <div class="section-title">
                         <h2>${dto.storeName}</h2>
                    </div>

                         <div class="blog-post-image col-lg-10">
                              <a href="single-post.html">
                                   <img src="${pageContext.request.contextPath}/resources/images/${dto.storeImg}" width="120%" class="img-responsive center-block">
                              </a>
                         </div>
                         <div class="col-lg-10">
	                         <div class="blog-post-title">
	                              <h3><a href="single-post.html">${dto.storeName}</a></h3>
	                         </div>
	                         <div class="blog-post-format">
	                              <span><i class="fa fa-date"></i>${dto.storeLoc}</span>
	                         </div>
	                         <div class="blog-post-des">
	                              <p>${dto.storeInfo}</p>
	                         </div>
                         </div>
                    </div>
               </div>

          </div>
</section>
	
	<div class="container">
	<h5>LOCATION</h5>
	</div>
	<!-- 지도 key : 29d592b09c4a7ae1856b2630da60b871&libraries=services -->
	<div id="map"
		style="width: 60%; height: 400px; margin: 30px auto; text-align: center"></div>

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

	
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>