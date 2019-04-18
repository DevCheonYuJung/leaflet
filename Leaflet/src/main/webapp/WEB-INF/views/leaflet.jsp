<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"></script>
<style>
html, body, #mapid {
	height: 100%;
	margin: 0;
}
</style>
</head>
<body>
	<div id='mapid'></div>
</body>
<script>

	//지도 설정 setView([위도, 경도], 줌크기_클수록 확대);
    var map = L.map('mapid').setView([37.481481, 126.880481], 16);

    //지도 뿌리기
    var layer = L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
        attribution:'&copy; <a href="http://openstreetmap.org">OpenStreetMap</a> Contributors'
    }).addTo(map);
    
    //마커 설정
    var marker = L.marker([37.481481, 126.880481]).addTo(map);
    
    marker.bindPopup("<b>Hello sundosoft!</b>").openPopup();
    
</script>
</html>