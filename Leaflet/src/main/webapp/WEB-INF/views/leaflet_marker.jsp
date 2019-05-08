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

	//지도 설정 setView([위도, 경도], 줌크기_클수록 확대);
    var map = L.map('map').setView([37.481481, 126.880481], 16);

    //지도 뿌리기
    var layer = L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
        attribution:'&copy; <a href="http://openstreetmap.org">OpenStreetMap</a> Contributors'
    }).addTo(map);
    
    //마커 설정과 팝업
    var marker = L.marker([37.481481, 126.880481]).addTo(map);
    
    marker.bindPopup("<b>Hello sundosoft!</b>").openPopup();
    
</script>
</html>