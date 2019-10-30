<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="mapapi">
	<div id="map" style="width: 100%; height: 100%;"></div>
	<div class="buttons">
		<input id="return" type="button" value="초기화" class="control-btn" />
	</div>
	<script id="code">
		/* 맵 리턴 , 행정구역 레이어 데이터*/
		var jeju = jeju = new naver.maps.LatLng(33.3590628, 126.534361), busan = new naver.maps.LatLng(
				35.1797865, 129.0750194), ulsan = new naver.maps.LatLng(
				35.5369025, 129.3125609), dokdo = new naver.maps.LatLngBounds(
				new naver.maps.LatLng(37.2380651, 131.8562652),
				new naver.maps.LatLng(37.2444436, 131.8786475)), seoul = new naver.maps.LatLng(
				37.5520948, 126.9940787), incheon = new naver.maps.LatLng(
				37.5625555, 126.4047098), kungkido = new naver.maps.LatLng(
				37.5060397, 127.2164899), jeonrabukdo = new naver.maps.LatLng(
				35.8179767, 127.1350731)
		jeonranamdo = new naver.maps.LatLng(34.7903487, 126.7844974),
				kangwondo = new naver.maps.LatLng(37.7424606, 128.3623926),
				gwangju = new naver.maps.LatLng(35.1596032, 126.8515275),
				daejon = new naver.maps.LatLng(36.3478141, 127.3871564),
				daegu = new naver.maps.LatLng(35.8515933, 128.6004738),
				saejong = new naver.maps.LatLng(36.5412938, 127.2609427),
				kungsandnamdo = new naver.maps.LatLng(35.279972, 128.2753023),
				kungsangbukdo = new naver.maps.LatLng(36.4112894, 128.9051587),
				cungchungbukdo = new naver.maps.LatLng(36.733066, 127.7928393),
				cungchungnamdo = new naver.maps.LatLng(36.581571, 126.8365049),
				mapreturn = new naver.maps.LatLng(37.3595704, 127.105399);
		/* 맵 초기화  */
		$("#return").on("click", function(e) {
			e.preventDefault();
			map.setZoom(1, true);
		});
		var HOME_PATH = 'https://navermaps.github.io/maps.js/docs', urlPrefix = HOME_PATH
				+ '/data/region', urlSuffix = '.json', regionGeoJson = [], loadCount = 0;
		for (var i = 1; i < 18; i++) {
			var keyword = i + '';
			if (keyword.length === 1) {
				keyword = '0' + keyword;
			}
			$.ajax({
				url : urlPrefix + keyword + urlSuffix,
				success : function(idx) {
					return function(geojson) {
						regionGeoJson[idx] = geojson;
						loadCount++;
						if (loadCount === 17) {
							startDataLayer();
						}
					}
				}(i - 1)
			});
		}
		/* 기본맵설정 */
		var map = new naver.maps.Map(document.getElementById('map'), {
			center : new naver.maps.LatLng(37.3595704, 127.105399), //지도의 초기 중심 좌표
			useStyleMap : true,
			zoom : 1, //지도의 초기 줌 레벨
			/* draggable : false, */
			pinchZoom : false,
			scrollWheel : true,
			keyboardShortcuts : false,
			disableDoubleTapZoom : true,
			disableDoubleClickZoom : true,
			disableTwoFingerTapZoom : true
		}), markers = [];

		//마커 관련- 경기도, 50개 DB에 저장
		/* 마커 설정 */
		$(result).each(
				function(i, v) {
					//var spot = result[v],
					var latlng = new naver.maps.LatLng(v.location_lat,
							v.location_lng), marker = new naver.maps.Marker({
						position : latlng,
						map : map
					});
					markers.push(marker);
					/* console.log(v.location_lat, v.location_lng) */
				});

		var htmlMarker1 = {
			content : '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/tour/resources/images/cluster-marker-1.png);background-size:contain;"></div>',
			size : N.Size(40, 40),
			anchor : N.Point(20, 20)
		}, htmlMarker2 = {
			content : '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/tour/resources/images/cluster-marker-2.png);background-size:contain;"></div>',
			size : N.Size(40, 40),
			anchor : N.Point(20, 20)
		}, htmlMarker3 = {
			content : '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/tour/resources/images/cluster-marker-3.png);background-size:contain;"></div>',
			size : N.Size(40, 40),
			anchor : N.Point(20, 20)
		}, htmlMarker4 = {
			content : '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/tour/resources/images/cluster-marker-4.png);background-size:contain;"></div>',
			size : N.Size(40, 40),
			anchor : N.Point(20, 20)
		}, htmlMarker5 = {
			content : '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/tour/resources/images/cluster-marker-5.png);background-size:contain;"></div>',
			size : N.Size(40, 40),
			anchor : N.Point(20, 20)
		};

		var markerClustering = new MarkerClustering({
			minClusterSize : 2,
			maxZoom : 8,
			map : map,
			markers : markers,
			disableClickZoom : false,
			gridSize : 120,
			icons : [ htmlMarker1, htmlMarker2, htmlMarker3, htmlMarker4,
					htmlMarker5 ],
			indexGenerator : [ 10, 100, 200, 500, 1000 ],
			stylingFunction : function(clusterMarker, count) {
				$(clusterMarker.getElement()).find('div:first-child').text(
						count);
			}
		});
		/* 맵 툴팁 설정 */
		var tooltip = $('<div style="position:absolute;z-index:1000;padding:5px 10px;background-color:#fff;border:solid 2px #000;font-size:14px;pointer-events:none;display:none;"></div>');
		tooltip.appendTo(map.getPanes().floatPane);
		function startDataLayer() {
			map.data.setStyle(function(feature) {
				var styleOptions = {
					fillColor : 'white',
					fillOpacity : 0.0001,
					strokeColor : '#BFF2EE',
					strokeWeight : 1,
					strokeOpacity : 0.4
				};
				/* if (feature.getProperty('focus')) {
					styleOptions.fillOpacity = 0.1;
					styleOptions.fillColor = 'red';
					styleOptions.strokeColor = '#0f0';
					styleOptions.strokeWeight = 2;
					styleOptions.strokeOpacity = 1;
				} */
				return styleOptions;
			});
			regionGeoJson.forEach(function(geojson) {
				map.data.addGeoJson(geojson);
			});
			map.data.addListener('click', function(e) {
				var feature = e.feature, regionName = feature
						.getProperty('area1');
				;
				if (feature.getProperty('focus') !== true) {
					/* feature.setProperty('focus', true); */

				} else {
					feature.setProperty('focus', false);
				}
				if (regionName == "서울특별시") {
					map.setCenter(seoul);
					map.setZoom(11, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "인천광역시") {
					map.setCenter(incheon);
					map.setZoom(10, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "경기도") {
					map.setCenter(kungkido);
					map.setZoom(9, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "제주특별자치도") {
					map.setCenter(jeju);
					map.setZoom(10, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "부산광역시") {
					map.setCenter(busan);
					map.setZoom(10, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "울산광역시") {
					map.setCenter(ulsan);
					map.setZoom(10, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "경상북도") {
					map.setCenter(kungsangbukdo);
					map.setZoom(8, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "경상남도") {
					map.setCenter(kungsandnamdo);
					map.setZoom(9, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "전라북도") {
					map.setCenter(jeonrabukdo);
					map.setZoom(9, true);
					console.log(regionName + " clicked~~");
										
					// cityPackage 주소에 ajax로 요청해서 받은 html 문서를 .domaplist 안에 출력해줌 
					$(".domaplist").load("cityPackage?regionName=" + regionName);
					
					

				}
				if (regionName == "전라남도") {
					map.setCenter(jeonranamdo);
					map.setZoom(9, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "광주광역시") {
					map.setCenter(gwangju);
					map.setZoom(11, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "충청북도") {
					map.setCenter(cungchungbukdo);
					map.setZoom(9, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "충청남도") {
					map.setCenter(cungchungnamdo);
					map.setZoom(9, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "대전광역시") {
					map.setCenter(daejon);
					map.setZoom(11, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "대구광역시") {
					map.setCenter(daegu);
					map.setZoom(11, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "세종특별자치시") {
					map.setCenter(saejong);
					map.setZoom(11, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
				if (regionName == "강원도") {
					map.setCenter(kangwondo);
					map.setZoom(8, true);
					$(".domaplist").load("cityPackage?regionName=" + regionName);

				}
			});
			map.data.addListener('mouseover', function(e) {
				var feature = e.feature, regionName = feature
						.getProperty('area1');
				tooltip.css({
					display : '',
					left : e.offset.x,
					top : e.offset.y
				}).text(regionName);
				map.data.overrideStyle(feature, {
					fillOpacity : 0.6,
					strokeWeight : 1,
					strokeOpacity : 1
				});
			});
			map.data.addListener('mouseout', function(e) {
				tooltip.hide().empty();
				map.data.revertStyle();
			});
		}
	</script>
</div>