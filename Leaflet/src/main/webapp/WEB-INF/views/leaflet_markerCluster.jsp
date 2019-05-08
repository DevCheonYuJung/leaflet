<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4.4/leaflet.css" />
<script src="http://cdn.leafletjs.com/leaflet-0.4.4/leaflet.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/dist/screen.css" />
<link rel="stylesheet" href="resources/dist/MarkerCluster.css" />
<link rel="stylesheet" href="resources/dist/MarkerCluster.Default.css" />
<script src="resources/dist/leaflet.markercluster-src.js"></script>

<style>
html, body, #mapid {
	height: 100%;
	margin: 0;
}
</style>
</head>
<body>
	<div id='map'></div>
</body>
<script>

var tilelayer = 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
cloudmade = new L.TileLayer(tilelayer, {maxZoom: 18}),

//시작할때 위도 경도를 셋팅하기 위해 위치 변수를 생성
latlng = new L.LatLng(37.481481, 126.880481);

//id='map'에 설정하고 지도를 뿌려준다
var map = new L.Map('map', {center: latlng, zoom: 4, layers: [cloudmade]});

//마커 클러스터 그룹생성
var markers = new L.MarkerClusterGroup();

	function populate() {
	
		//수원 마커 5개 설정
		var suwon1_m = new L.LatLng(37.302581, 126.967001);
		var suwon1 = new L.Marker(suwon1_m);
		markers.addLayer(suwon1);
		
		var suwon2_m = new L.LatLng(37.276714, 127.004267);
		var suwon2 = new L.Marker(suwon2_m);
		markers.addLayer(suwon2);
		
		var suwon3_m = new L.LatLng(37.287521, 127.031772);
		var suwon3 = new L.Marker(suwon3_m);
		markers.addLayer(suwon3);
		
		var suwon4_m = new L.LatLng(37.300490, 127.035947);
		var suwon4 = new L.Marker(suwon4_m);
		markers.addLayer(suwon4);
		
		var suwon5_m = new L.LatLng(37.259974, 127.031204);
		var suwon5 = new L.Marker(suwon5_m);
		markers.addLayer(suwon5);
		
		//서울 마커 5개 설정
		var seoul1_m = new L.LatLng(37.565751, 126.980168);
		var seoul1 = new L.Marker(seoul1_m);
		markers.addLayer(seoul1);
		
		var seoul2_m = new L.LatLng(37.557494, 127.008106);
		var seoul2 = new L.Marker(seoul2_m);
		markers.addLayer(seoul2);
		
		var seoul3_m = new L.LatLng(37.562088, 126.960319);
		var seoul3 = new L.Marker(seoul3_m);
		markers.addLayer(seoul3);
		
		var seoul4_m = new L.LatLng(37.537493, 126.978426);
		var seoul4 = new L.Marker(seoul4_m);
		markers.addLayer(seoul4);
		
		var seoul5_m = new L.LatLng(37.481533, 126.880482);
		var seoul5 = new L.Marker(seoul5_m);
		markers.addLayer(seoul5);
		
		//제주도 마커 3개 설정
		var jeju1_m = new L.LatLng(33.382482, 126.515269);
		var jeju1 = new L.Marker(jeju1_m);
		markers.addLayer(jeju1);
		
		var jeju2_m = new L.LatLng(33.370485, 126.716950);
		var jeju2 = new L.Marker(jeju2_m);
		markers.addLayer(jeju2);
		
		var jeju3_m = new L.LatLng(33.350865, 126.284222);
		var jeju3 = new L.Marker(jeju3_m);
		markers.addLayer(jeju3);
		
		//대구 마커 3개 설정
		var daegu1_m = new L.LatLng(35.831026, 128.572862);
		var daegu1 = new L.Marker(daegu1_m);
		markers.addLayer(daegu1);
		
		var daegu2_m = new L.LatLng(35.826859, 128.555012);
		var daegu2 = new L.Marker(daegu2_m);
		markers.addLayer(daegu2);
		
		var daegu3_m = new L.LatLng(35.878884, 128.580449);
		var daegu3 = new L.Marker(daegu3_m);
		markers.addLayer(daegu3);
		
		//강릉 마커 3개 설정
		var gangneung1_m = new L.LatLng(37.759754, 128.898968);
		var gangneung1 = new L.Marker(gangneung1_m);
		markers.addLayer(gangneung1);
		
		var gangneung2_m = new L.LatLng(37.746310, 128.922476);
		var gangneung2 = new L.Marker(gangneung2_m);
		markers.addLayer(gangneung2);
		
		var gangneung3_m = new L.LatLng(37.780924, 128.901210);
		var gangneung3 = new L.Marker(gangneung3_m);
		markers.addLayer(gangneung3);
		
		return false;
	}
	
	populate();
	
	//마커를 지도에 뿌리기
	map.addLayer(markers);
	
</script>
</html>