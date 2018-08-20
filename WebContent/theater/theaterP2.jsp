<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//한글을 3바이트로 받아줘서 안깨지게해주는것
	request.setCharacterEncoding("UTF-8");
	//  cp = ~/study 까지 경로
	String cp = request.getContextPath();
	String theater_id = request.getParameter("theater_id");
%>

<%
	Calendar cal = Calendar.getInstance();

	//오늘날짜
	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH) + 1;
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);

	//클라이언트에서 넘어온 데이터

	String strYear = request.getParameter("year"); //사용자에게 년,월 값을 받아옴
	String strMonth = request.getParameter("month");
	String strDay = request.getParameter("day");

	//표시할 달력의 년,월
	int year = nowYear; //오늘날짜로 초기화
	int month = nowMonth;
	int day = nowDay;

	if (strYear != null) { //사용자가 입력한 값이 null이 아니면
		year = Integer.parseInt(strYear); //사용자가 선택한 년도	
	}
	if (strMonth != null) {
		month = Integer.parseInt(strMonth); //사용자가 선택한 월
	}
	if (strDay != null) {
		day = Integer.parseInt(strDay);
	}

	int preYear = year;
	int preMonth = month;
	int preDay = day - 1;

	if (preDay < 1) {
		preYear = year;
		preMonth = month - 1;
		cal.set(preYear, preMonth, 1);
		preDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	}

	if (preMonth < 1) { //월이 0보다 작으면
		preYear = year - 1; //-1년 
		preMonth = 12; // 월 = 12
	}

	int nextYear = year;
	int nextMonth = month;
	int nextDay = day + 1;

	if (nextDay > cal.getActualMaximum(Calendar.DAY_OF_MONTH)) {
		nextDay = 1;
		nextMonth = month + 1;
		nextYear = year;
	}

	if (nextMonth > 12) { //월이 12보다 크면
		nextYear = year + 1; //+1년
		nextMonth = 1; //월 = 1
	}

	//표시할 달력 셋팅
	cal.set(year, month - 1, day); //년 월 일
	int startDay = 1; //월의 첫날은 1
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//월의 마지막날

	int week = cal.get(Calendar.DAY_OF_WEEK);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=cp%>/theater/css/box.css"
	type="text/css" />
<link rel="stylesheet" href="<%=cp%>/theater/css/theme.css"
	type="text/css" />
<link rel="stylesheet" href="<%=cp%>/theater/css/theme2.css"
	type="text/css" />
<link rel="stylesheet" href="<%=cp%>/theater/css/menubarP2.css"
	type="text/css" />
<link rel="stylesheet" href="<%=cp%>/theater/css/scheduleP2.css"
	type="text/css" />
<link rel="stylesheet" href="<%=cp%>/theater/css/theaterP2_menutab.css"
	type="text/css" />
<link rel="stylesheet" href="<%=cp%>/timetable/dd.css" type="text/css" />

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Tlct_X7cWLceZF11mFRe&submodules=geocoder"></script>


<script type="text/javascript">
	//달력팝업
	function showCalendar() {
		var date;
		var f = document.calendarForm;

		window.open("calendar.do","달력","location = no, menubar = no, directories=no,left=580, top=150, width=350, height=350, toolbar = no, enubar=no, status=no, scrollbars=no, resizable=no, status = no");
	}
</script>

</head>
<body>
	<jsp:include page="../header.jsp" flush="false" />

	<div class="sub_navi ">
		<div class="sub_navi_wrap">
			<ul class="clearfix">
				<li><a class="timetable i0 "
					href="<%=cp%>/Timetable/movieGuide.do" title="예매안내 바로가기">예매안내</a></li>
				<li><a class="timetable i1 "
					href="<%=cp%>/Timetable/movieTime.do" title="영화별 상영시간표 바로가기">영화별
						상영시간표</a></li>
				<li><a class="timetable i2 "
					href="<%=cp%>/Theater/theaterP2.do" title="영화관별 상영시간표 바로가기">영화관별
						상영시간표</a></li>

			</ul>
		</div>
	</div>
	<!-- 처음 이미지 -->
	<div
		style="background-image: url(http://image2.megabox.co.kr/mop/cinema/2018/57/703AF3-6E8B-4149-ABA3-E270FD395135.jpg); background-repeat: no-repeat; height: 580px; border: 1px solid black">
	</div>
	<!-- 처음 이미지 끝 -->

	<div class="tmain_container" align="center">

		<table align="center">
			<tr>
				<td height="0" align="center"></td>
			</tr>
		</table>
		
		<table border="0" align="center" cellspacing="0" cellpadding="0">
			<tr>
				<td align="left" style="padding-bottom: 0px;">
					<h2 style="font-weight: bold; font-size: 50px; color: white; padding-left: 20px;">
					<c:if test="${theater_id eq '1' }">
					강남
					</c:if>
					<c:if test="${theater_id eq '2' }">
					강동	
					</c:if>
					<c:if test="${theater_id eq '3' }">
					김포	
					</c:if>
					<c:if test="${theater_id eq '4' }">
					영통	
					</c:if>
					</h2>
				</td>
			</tr>
			<tr align="center">
				<td>
					<div id="topMenu">
						<ul>
							<li class="topMenuLi"><a class="menuLink">서울</a>
								<ul class="submenu">
									<li><a class="submenuLink"
										href="<%=cp%>/Theater/theaterP2_ok.do?theater_id=1">강남</a></li>
									<li><a class="submenuLink">강남대로(씨티)</a></li>
									<li><a class="submenuLink"
										href="<%=cp%>/Theater/theaterP2_ok.do?theater_id=2">강동</a></li>
									<li><a class="submenuLink">동대문</a></li>
									<li><a class="submenuLink">마곡</a></li>
									<li><a class="submenuLink">목동</a></li>
									<li><a class="submenuLink">상봉</a></li>
									<li><a class="submenuLink">상암월드컵경기장</a></li>
									<li><a class="submenuLink">센트럴</a></li>
									<li><a class="submenuLink">송파파크하비오</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">경기</a>
								<ul class="submenu">
									<li><a class="submenuLink"
										href="<%=cp%>/Theater/theaterP2_ok.do?theater_id=3">김포</a></li>
									<li><a class="submenuLink">미사강변</a></li>
									<li><a class="submenuLink">별내</a></li>
									<li><a class="submenuLink">수원</a></li>
									<li><a class="submenuLink">시흥배곧</a></li>
									<li><a class="submenuLink">양주</a></li>
									<li><a class="submenuLink"
										href="<%=cp%>/Theater/theaterP2_ok.do?theater_id=4">영통</a></li>
									<li><a class="submenuLink">오산</a></li>
									<li><a class="submenuLink">일산</a></li>
									<li><a class="submenuLink">킨텍스</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">인천</a>
								<ul class="submenu">
									<li><a class="submenuLink">검단</a></li>
									<li><a class="submenuLink">인천논현</a></li>
									<li><a class="submenuLink">미사강변</a></li>
									<li><a class="submenuLink">청라지젤</a></li>
									<li><a class="submenuLink">송도</a></li>
									<li><a class="submenuLink">청라</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">대전/충정/세종</a>
								<ul class="submenu">
									<li><a class="submenuLink">공주</a></li>
									<li><a class="submenuLink">대전</a></li>
									<li><a class="submenuLink">세종</a></li>
									<li><a class="submenuLink">오창</a></li>
									<li><a class="submenuLink">제천</a></li>
									<li><a class="submenuLink">진천</a></li>
									<li><a class="submenuLink">천안</a></li>
									<li><a class="submenuLink">충주</a></li>
									<li><a class="submenuLink">흥성내포</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">부산/대수/경상</a>
								<ul class="submenu">
									<li><a class="submenuLink">거창</a></li>
									<li><a class="submenuLink">경산하양</a></li>
									<li><a class="submenuLink">구미</a></li>
									<li><a class="submenuLink">김천</a></li>
									<li><a class="submenuLink">대구(칠성로)</a></li>
									<li><a class="submenuLink">덕천</a></li>
									<li><a class="submenuLink">문경</a></li>
									<li><a class="submenuLink">부산대</a></li>
									<li><a class="submenuLink">사천</a></li>
									<li><a class="submenuLink">서면</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">광주/전라</a>
								<ul class="submenu">
									<li><a class="submenuLink">광주(충장로)</a></li>
									<li><a class="submenuLink">광주하남</a></li>
									<li><a class="submenuLink">목포</a></li>
									<li><a class="submenuLink">송천</a></li>
									<li><a class="submenuLink">여수</a></li>
									<li><a class="submenuLink">전대(광주)</a></li>
									<li><a class="submenuLink">첨단</a></li>
									<li><a class="submenuLink">광주상무</a></li>
									<li><a class="submenuLink">남원</a></li>
									<li><a class="submenuLink">목포하당(포르모)</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">경기</a>
								<ul class="submenu">
									<li><a class="submenuLink">남춘천</a></li>
									<li><a class="submenuLink">속초</a></li>
									<li><a class="submenuLink">원주</a></li>
									<li><a class="submenuLink">원주센트럴</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink">제주</a>
								<ul class="submenu">
									<li><a class="submenuLink">제주</a></li>
									<li><a class="submenuLink">제주아라</a></li>
								</ul></li>
						</ul>
					</div>
				</td>
			</tr>
		</table>

		<table border="0" align="center" cellspacing="0" cellpadding="0">
			<tr>
				<td align="left" style="padding-bottom: 10px; height: 62px"></td>
			</tr>
			<tr align="center">
				<td>
					<div id="topMenu2">
						<ul>
							<li class="topMenuLi2"><a class="menuLink2">상영시간표</a>
								<ul class="submenu2">
								</ul></li>
							<li>|</li>
							<li class="topMenuLi2"><a class="menuLink2">층별안내</a>
								<ul class="submenu2">
								</ul></li>
							<li>|</li>
							<li class="topMenuLi2"><a class="menuLink2">약도/교통/주차</a>
								<ul class="submenu2">
								</ul></li>
							<li>|</li>
							<li class="topMenuLi2"><a class="menuLink2">관람료</a>
								<ul class="submenu2">
								</ul></li>
							<li>|</li>
						</ul>
					</div>
				</td>
			</tr>
		</table>

		<form action="" name="calendarForm">
			<table border="0" align="center" cellspacing="0" cellpadding="0"
				width="1300px">
				<tr>
					<td colspan="5" align="center"
						style="padding-bottom: 10px; height: 62px">
						
			<a href="http://ad.imp.joins.com/NetInsight/event/
			clk/v4tpfnqPm-iPGc4CsBFOh9jkGcGJ_ErzI1vVY3YeuIeIA
			bZueUdSaUpDQ1NVZWVUby1kVkp1N2tBAstB1t2qjVLUNQO2Tnh
			YbS1DWmNTR21LcGN5MW45YU45dwbZI21lZ2Fib3hfcC9tYWluL
			21haW5AbWFpbl90b3BfOTcweDgwB83uSAjNAWoJhaN0aWS2T1pv
			RjVOSmZUcHEtcnZGM2tIQWtwZ6RfbW5toKRfdWlk2W9GZXFfcG1
			aa1R2NjJWN3liUnpCZ2FoRHFpUWQ4MUw2ODFsSTVuSDh5Y1FpRUFN
			NW1qU2JDQWJaa01XdHBUbXBaUjFSR2VXMVlSVFU1U1ZWRVNrcDNBc
			3RCMXRmOFhpZ0VfQVBMUWRiWF9GNG9CUHekX2NpZLZwdWl6VDBsM1J
			2MndHbldkeHJFQjJ3o19ydMtB1t2qjVLUNQqBoXLD" target="_blank" style="display:block;text-align:center;width:100%;background-color:#f4ddbd">
			<img src="http://mlink-cdn.netinsight.co.kr/2018/08/14/3e69187c067a0d003472d491c898d73f.jpg" width="970" height="80" border="0"></a>
					</td>
				</tr>

				<tr>
					<td colspan="5" style="padding-bottom: 3px">
						<h3>상영시간표</h3>
					</td>
				</tr>
				<tr>
					<td colspan="5" height="2"
						style="background-color: #BDBDBD; padding-bottom: 3px"></td>
				</tr>
				<tr>
					<td style="height: 62px; width: 100px;" align="center"><a
						onclick="showCalendar();">달력</a></td>
					<td style="width: 50px;" align="center">
						<!--  <a href="calender.jsp?year=< %= nowYear %>&month=< %= nowMonth%>"><img src="./image/today.jpg" align="left"></a> -->
						<a
						href="<%=cp %>/Theater/theaterP2_ok.do?theater_id=${theater_id}&year=<%=preYear %>&month=<%=preMonth%>&day=<%=preDay%>">
							<img src="../theater/image/화살표1.png" width="30" height="30"
							border="2" align="middle">
					</a>
					</td>
					<td style="width: 200px; padding: 0px;" align="center"><font
						style="font-size: 30px;"><b>&nbsp;<%=month%>월&nbsp;&nbsp;<%=day%>일
						</b>&nbsp;</font></td>
					<td style="width: 50px;" align="center"><a
						href="<%=cp %>/Theater/theaterP2_ok.do?theater_id=${theater_id}&year=<%=nextYear %>&month=<%=nextMonth%>&day=<%=nextDay %>">
							<img src="../theater/image/화살표2.png" width="30" height="30"
							border="2" align="middle">
					</a></td>
					<td></td>
				</tr>
			</table>
		</form>
		
		<c:if test="${theater_id==null }">
		<p align="center"><img src="../theater/image/영화관선택.png" width="1000" height="400" border="2" align="middle"></p>
		</c:if>

		<table border="0" class="scheduleP2">

			<c:forEach var="dto" items="${lists }">
				<c:if test="${!dto.screen_num.equals(screen_num) }">

					<tr>
						<th 
							style="width: 50px; font-size: 14px; text-align: right; padding-right: 15px; padding-left: 10px;"><div>${dto.city}</div>
							<small>${dto.district}</small></th>
						<th
							style="width: 110px; padding-left: 15px; padding-right: 10px; border-right: 1px solid #e5e5e5;"><div>${dto.movie_name}</div>
							<small><c:if test="${dto.age_limit eq 'all'}">전체관람가</c:if>
								   <c:if test="${dto.age_limit ne 'all'}">${dto.age_limit}세 관람가</c:if>
							</small></th>
						<th
							style="width: 100px; font-size: 14px; text-align: right; padding-right: 15px; padding-left: 10px;"><div>${dto.screen_num}관</div>
							<small>${dto.type}</small></th>
						<td>
				</c:if>
				<div class="movie_time">
					<p class="mtime_info">
						<span class="time">${dto.start_time }~${dto.end_time }</span> <span
							class="seat"> ${dto.seatedseat}/${dto.seatnumber}</span> <br>
						<br> <a href="">예매</a>
					</p>
				</div>

				<c:set var="screen_num" value="${dto.screen_num}" />
			</c:forEach>
		</table>


		<!-- 층 안내 시작 -->
		<div class="floorinfo" style="padding-top: 100px; padding-left: 10px;">
			<div style="position: relative; width: 1300px; margin: 0 auto;">
				<h3>층별안내</h3>
				<c:if test="${theater_id==1 }">
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>8층</strong>
						<p>매표소, 매점, 무인발권기, 남자/여자 화장실, 상영관 (MX관, COMFORT관, 3~9관)</p>
					</div>

					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>9층</strong>
						<p>1관, 2관, 남자 · 여자 화장실, 엘리베이터, 비상계단3</p>
					</div>

					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>10층</strong>
						<p>3관, 4관, 엘리베이터2, 남자 · 여자 화장실, 비상계단 3</p>
					</div>

					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>11층</strong>
						<p>5관, 6관, 7관, 엘리베이터2, 남자 · 여자 화장실, 비상계단 3</p>
					</div>
				</c:if>
				
				<c:if test="${theater_id==2 }">
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>1층</strong>
						<p>매표소, 매점, 무인 발권기, 로비, 엘리베이터, 남·여 화장실, 남·여 장애인 화장실, 캡슐 토이, 투썸 플레이스</p>
					</div>

					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>2층</strong>
						<p>1관·2관, 로비, 엘리베이터, 음료 자판기, 남·여 화장실</p>
					</div>

					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>3층</strong>
						<p>3관·4관, 로비, 엘리베이터, 음료 자판기, 남·여 화장실</p>
					</div>

					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>4층</strong>
						<p>5관~10관, 로비, 엘리베이터, 음료 자판기, 남·여 화장실</p>
					</div>
				</c:if>
				
				<c:if test="${theater_id==3 }">
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>7층</strong>
						<p>매표소, 매점, 카페, 게임존, 남/녀 화장실</p>
					</div>
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>8층</strong>
						<p>1관, 2관, 3관, 남/여 화장실</p>
					</div>
				</c:if>
				
				<c:if test="${theater_id==4 }">
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>5층</strong>
						<p>7관, 8관, 9관, 매표, 매점, 무인발권기, 화장실(남,여,장애인)</p>
					</div>
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>6층</strong>
						<p>메가키즈박스,게임톡톡, 화장실(남,여)</p>
					</div>
					<div class="floorP2" style="margin-bottom: 15px;">
						<strong>7층</strong>
						<p>MX관, 2관, 3관, 4관, 5관, 6관, 화장실(남,여,장애인)</p>
					</div>
				</c:if>

			</div>
		</div>
		<!-- 층 안내 끝 -->
		<!-- 약도/교통/주차 시작 -->
		<div class="floorinfo" style="padding-top: 10px; padding-left: 10px;">
			<div style="position: relative; width: 1300px; margin: 0 auto;">
				<h3>교통/약도/주차</h3>

				<div class="mapInfo" style="margin-bottom: 15px;">
					<p>
						도로명 주소 :
						<c:if test="${theater_id==1 }">서울특별시 서초구 서초대로77길 3 아라타워 8층</c:if>
						<c:if test="${theater_id==2 }">서울특별시 강동구 성내로 48</c:if>
						<c:if test="${theater_id==3 }">경기도 김포시 걸포로 6 걸포동, 미도프라자 7층,8층 / 전화번호 1544-0070</c:if>
						<c:if test="${theater_id==4 }">경기도 수원시 영통구 봉영로 1579 롯데쇼핑플라자 5층</c:if>
					</p>
				</div>
				<div class="mapInfo" style="margin-bottom: 15px;">
					<p>
						지번 주소 :
						<c:if test="${theater_id==1 }">서울특별시 서초구 서초동 1317-20 아라타워 8층</c:if>
						<c:if test="${theater_id==2 }">서울특별시 강동구 성내동 549-1</c:if>
						<c:if test="${theater_id==3 }">경기도 김포시 걸포동 1574-3 미도프라자 7층,8층</c:if>
						<c:if test="${theater_id==4 }">경기도 수원시 영통구 영통동 960-1 롯데쇼핑플라자 5층</c:if>
					</p>
				</div>
			</div>
		</div>
		<!-- 약도/교통/주차 끝 -->

	<!-- 네이버 지도 API  -->
    <div id="map" style="width:100%;height:400px;"></div>

    <script>
      var map = new naver.maps.Map('map');
      
	
		if(<%=theater_id%>==1){
			var myaddress = '서울특별시 서초구 서초대로77길 3';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
		}else if(<%=theater_id%>==2){ 
			var myaddress = '서울특별시 강동구 성내로 48';
		}else if(<%=theater_id%>==3){ 
			var myaddress = '경기도 김포시 걸포로 6';
		}else if(<%=theater_id%>==4){ 
			var myaddress = '경기도 수원시 영통구 봉영로 1579';
		}

		naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
          }
          var result = response.result;
          // 검색 결과 갯수: result.total
          // 첫번째 결과 결과 주소: result.items[0].address
          // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
          map.setCenter(myaddr); // 검색된 좌표로 지도 이동
          // 마커 표시
          var marker = new naver.maps.Marker({
            position: myaddr,
            map: map
          });
          // 마커 클릭 이벤트 처리
          naver.maps.Event.addListener(marker, "click", function(e) {
            if (infowindow.getMap()) {
                infowindow.close();
            } else {
                infowindow.open(map, marker);
            }
          });
          // 마크 클릭시 인포윈도우 오픈
          var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [메가박스 강남]</h4><a href="https://developers.naver.com" target="_blank"><img src="../theater/image/mega_pic.jpg"></a>'
          });
      });
      </script>

<!-- 네이버 지도 API  -->

		<!-- 약도/교통/주차 시작 -->
		<div class="trafficInfo"
			style="padding-top: 10px; padding-left: 10px;">
			<div style="width: 1300px; margin: 0 auto;">
				<h3>교통안내</h3>


				<c:if test="${theater_id==1 }">
					<div class="traInfo">
						<ul>
							<li>140번, 144번, 145번, 146번, 360번, 402번, 407번, 408번, 420번, 440번, 441번, 462번, 470번, 471번</li>
							<li>3412번, 4412번, 서초03번, 서초 09번</li>
							<li>9404번, 9408번, 9409번, 9503번, 9711번, 9500번, 9501번, 9510번, 9800번, 9801번, 9802번, 9901번 <br/>M4403번, M7412번</li>
						</ul>
					</div>
					<div class="traInfo">
						<ul>
							<li>지하철 2호선 , 신분당선 ‘강남역 -> 지하철 9번(구 5번) 출구 좌측 연결통로 이용</li>
						</ul>
					</div>
					
					
				</c:if>
				

				<c:if test="${theater_id==2 }">
					<div class="traInfo">
						<ul>
							<li>3319번, 3321번, 3220번, 3212번, 3214번, 3411번, 3318번, 3321번</li>
							<li>340번, 341번, 351번</li>
							<li>마을버스 강동 01</li>
							<li>16번, 30번, 30-1번, 30-3번, 70번, 112번, 112-1번, 112-5번</li>
						</ul>
					</div>
					<div class="traInfo">
						<ul>
							<li>8호선 강동구청역 2번 출구 도보 5분 (400m)</li>
						</ul>
					</div>
				</c:if>

				<c:if test="${theater_id==3 }">
					<div class="traInfo">
						<ul>
							<li>3000, 9008, 8600</li>
							<li>20, 33, 60-3, 81-1</li>
						</ul>
					</div>
				</c:if>

				<c:if test="${theater_id==4 }">
					<div class="traInfo">
						<ul>
							<li>13-1, 7, 82-2, 2, 2-1, 3, 51, 63, 63-1, 4-1, 11-1, 7-2, 720-1</li>
							<li>1112, 1007-1, 3001, 3001-1, 900, 5100, 7000, 7200</li>
						</ul>
					</div>
					<div class="traInfo">
						<ul>
							<li>지하철 분당선 ‘영통역’ 하차 → 지하철 8번 출구 이용</li>
						</ul>
					</div>
				</c:if>


				<div class="trafficInfo"
					style="padding-top: 10px; padding-left: 10px; text-align: left;">
					<ul>
						<li><strong style="padding-left: 5px; font-size: 15px">주차요금</strong>
							<ul>
								<li>영화 관람 시 3시간 2,000원, 이후 10분당 500원</li>
								<li>요금 정산 시 카드 결제만 가능하며 현금 결제는 어렵습니다.</li>
								<li>수용 가능한 차량 수가 한정적이므로 가급적 대중교통을 이용해 주시기 바랍니다.</li>
							</ul></li>
					</ul>

				</div>
			</div>
			<!-- 약도/교통/주차 끝 -->

<!-- 관람료  -->
<div class="section no5" id="menu4"
	style="background-color: #1F0000;">

	<div id="theaterpay">
		<div class="content_wrap narrow" style="width: 1300px">
			<h3 style="color: white; padding-left: 10px; font-size: 25px;"
				class="theater_pay">관람료</h3>

			<h4>1. 영화관람료</h4>

			<table class="table_dark" summary="영화관람료">
				<caption class="blind2">영화관람료: 상영관, 구분, 상영시간, 성인, 청소년,
					어린이, 우대 등의 항목으로 구성된 표입니다</caption>
				<thead>
					<tr>
						<th scope="col" style="width: 14.28%;">상영관</th>
						<th scope="col" style="width: 14.28%;">구분</th>
						<th scope="col" style="width: 14.28%;">상영시간</th>
						<th scope="col" style="width: 14.28%;">성인</th>
						<th scope="col" style="width: 14.28%;">청소년</th>
						<th scope="col" style="width: 14.28%;">어린이</th>
						<th scope="col" style="width: 14.28%;">우대</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="16">일반관</td>
						<td rowspan="4">월요일~목요일</td>
						<td>조조(10시 전)</td>
						<td>7,000</td>
						<td>6,000</td>
						<td>6,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>8,000</td>
						<td>8,000</td>
						<td>6,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>11,000</td>
						<td>8,000</td>
						<td>6,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>9,000</td>
						<td>7,000</td>
						<td>6,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td rowspan="4">금요일~일요일<br> 공휴일
						</td>
						<td>조조(10시 전)</td>
						<td>8,000</td>
						<td>6,000</td>
						<td>6,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>11,000</td>
						<td>9,000</td>
						<td>7,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td>일반(12시~23시 전)</td>
						<td>12,000</td>
						<td>9,000</td>
						<td>7,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>10,000</td>
						<td>8,000</td>
						<td>7,000</td>
						<td>5,000</td>
					</tr>
					<tr>
						<td rowspan="4">월요일~목요일<br> (3D)
						</td>
						<td>조조(10시 전)</td>
						<td>9,000</td>
						<td>8,000</td>
						<td>8,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>10,000</td>
						<td>9,000</td>
						<td>8,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>12,000</td>
						<td>9,000</td>
						<td>8,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>11,000</td>
						<td>8,000</td>
						<td>8,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td rowspan="4">금요일~일요일<br> 공휴일<br> (3D)
						</td>
						<td>조조(10시 전)</td>
						<td>10,000</td>
						<td>9,000</td>
						<td>9,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>13,000</td>
						<td>11,000</td>
						<td>9,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>14,000</td>
						<td>11,000</td>
						<td>9,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>12,000</td>
						<td>10,000</td>
						<td>9,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td rowspan="16">MX관</td>
						<td rowspan="4">월요일~목요일</td>
						<td>조조(10시 전)</td>
						<td>10,000</td>
						<td>9,000</td>
						<td>9,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>11,000</td>
						<td>11,000</td>
						<td>11,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>13,000</td>
						<td>11,000</td>
						<td>11,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>12,000</td>
						<td>10,000</td>
						<td>10,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td rowspan="4">금요일~일요일<br> 공휴일
						</td>
						<td>조조(10시 전)</td>
						<td>11,000</td>
						<td>9,000</td>
						<td>9,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>13,000</td>
						<td>12,000</td>
						<td>12,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>14,000</td>
						<td>12,000</td>
						<td>12,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>13,000</td>
						<td>10,000</td>
						<td>10,000</td>
						<td>8,000</td>
					</tr>
					<tr>
						<td rowspan="4">월요일~목요일<br> (3D)
						</td>
						<td>조조(10시 전)</td>
						<td>12,000</td>
						<td>11,000</td>
						<td>11,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>13,000</td>
						<td>12,000</td>
						<td>12,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>15,000</td>
						<td>12,000</td>
						<td>12,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>14,000</td>
						<td>11,000</td>
						<td>11,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td rowspan="4">금요일~일요일<br> 공휴일<br> (3D)
						</td>
						<td>조조(10시 전)</td>
						<td>12,000</td>
						<td>11,000</td>
						<td>11,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>15,000</td>
						<td>13,000</td>
						<td>13,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>16,000</td>
						<td>13,000</td>
						<td>13,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>15,000</td>
						<td>12,000</td>
						<td>12,000</td>
						<td>11,000</td>
					</tr>
					<tr>
						<td rowspan="8">COMFORT관</td>
						<td rowspan="4">월요일~목요일</td>
						<td>조조(10시 전)</td>
						<td>8,000</td>
						<td>7,000</td>
						<td>7,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>9,000</td>
						<td>9,000</td>
						<td>7,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td>일반(13시~23시 전)</td>
						<td>12,000</td>
						<td>9,000</td>
						<td>7,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>10,000</td>
						<td>8,000</td>
						<td>7,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td rowspan="4">금요일~일요일<br> 공휴일
						</td>
						<td>조조(10시 전)</td>
						<td>9,000</td>
						<td>7,000</td>
						<td>7,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td>브런치(10시~13시)</td>
						<td>12,000</td>
						<td>10,000</td>
						<td>8,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td>일반(12시~23시 전)</td>
						<td>13,000</td>
						<td>10,000</td>
						<td>8,000</td>
						<td>6,000</td>
					</tr>
					<tr>
						<td>심야(23시~)</td>
						<td>11,000</td>
						<td>9,000</td>
						<td>8,000</td>
						<td>6,000</td>
					</tr>
				</tbody>
			</table>

			<h4>2. 요금제 기준</h4>

			<table class="table_dark" summary="관람료, 요금제 기준">
				<caption class="blind2">요금제 기준: 구분, 적용기준, 증빙서류의 항목으로
					구성된 표입니다.</caption>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">적용기준</th>
						<th scope="col">증빙서류</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="1">어린이 요금</td>
						<td>만7세 ~ 만12세 (초등학생)</td>
						<td>의료보험증, 주민등록 등,초본</td>
					</tr>
					<tr>
						<td rowspan="1">청소년 요금</td>
						<td>만13세 ~ 만18세 (중학생~고등학생)</td>
						<td>학생증, 교복, 청소년증, 그 외 청소년 확인 가능 서류</td>
					</tr>
					<tr>
						<td rowspan="1">마티네 요금</td>
						<td>매주 화요일 14시 전 영화</td>
						<td>메가박스 멤버십 카드</td>
					</tr>
				</tbody>
			</table>

			<dl class="icon_list theater dark">
				<dt>* 48개월 미만의 경우 증빙원(예:의료보험증,주민등록 초/등본 등) 지참 시에만 무료관람 가능</dt>
				<dt>* 마티네 요금 : 메가박스 멤버십 회원대상, 매주 화요일 첫 회 ~ 14시 전 상영작까지
					6,000원에 관람이 가능한 요금제 (일부 특별관의 경우 추가요금이 발생)</dt>
			</dl>

			<h4>3. 우대적용기준</h4>

			<table class="table_dark" summary="관람료, 우대적용기준">
				<caption class="blind2">우대적용기준: 구분, 적용기준, 증빙서류의 항목으로
					구성된 표입니다.</caption>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">적용기준</th>
						<th scope="col">증빙서류</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="1">국가유공자</td>
						<td>본인 외 동반 1인까지</td>
						<td>국가유공자증</td>
					</tr>
					<tr>
						<td rowspan="1">장애인</td>
						<td>장애인1급~3급까지 동반 1인<br> 장애인4급~6급은 본인만
						</td>
						<td>(장애인)복지카드</td>
					</tr>
					<tr>
						<td rowspan="1">경로</td>
						<td>만 65세 이상 본인만</td>
						<td>신분증</td>
					</tr>
					<tr>
						<td rowspan="1">미취학아동</td>
						<td>만4세~만6세 까지 본인<br> (부모동반시 적용)
						</td>
						<td>의료보험증, 주민등록 등,초본</td>
					</tr>
					<tr>
						<td rowspan="1">군.경.소방종사자</td>
						<td>군인,경찰,소방관 본인</td>
						<td>(군인,경찰,소방)공무원증, 정복</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- //content_wrap -->
			</div>
		</div>
	</div>
</div>
	<jsp:include page="../footer.jsp" flush="false" />
</body>
</html>