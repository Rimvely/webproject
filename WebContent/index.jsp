<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	//POST 방식에서 한글깨짐을 방지
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>

<%-- 
<jsp:include page="../header.jsp" flush="false"/>
<jsp:include page="../footer.jsp" flush="false"/> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
#header-wrap {
	position: fixed;
	top: -20px;
	left: 0px;
	width: 100%;
	background-color: white;
}

#header {
	background-color: white;
	width: 1000px;
	margin: auto;
	height: 50px;
}

#header img {
	float: left;
	width: 200px;
	height: 50px;
}

#header ul li {
	list-style: none;
	float: left;
	line-height: 50px;
	vertical-align: middle;
	text-align: center;
	border-style: groove;
	border-width: 1px;
	border-color: gray;
}

#header .menuLink {
	background-color: white;
	color: black;
	text-decoration: none;
	display: block;
	width: 100px;
	font-size: 12px;
	font-weight: bold;
}

#header .menuLink:hover {
	color: #198591;
}

#header-menu {
	margin: auto;
	margin-top: 60px;
	padding-left: 0px;
	height: 80px;
	width: 1000px;
	border-bottom-style: solid;
	border-bottom-width: 5px;
	border-bottom-color: #352669;
}

#header-menu-left {
	padding-left: 0px;
	margin-left: 0px;
	float: left;
}

#header-menu-right {
	float: right;
}

#header-menu-left img {
	width: 80px;
	height: 40px;
}

#header-menu-right img {
	width: 110px;
	height: 40px;
}

#header-menu ul li {
	list-style: none;
	float: left;
	line-height: 50px;
	vertical-align: middle;
	text-align: center;
}

#header-menu-left .menu-left {
	color: black;
	text-decoration: none;
	display: block;
	width: 150px;
	font-size: 12px;
	font-weight: bold;
	text-align: left;
}

#header-menu-right .menu-right {
	color: black;
	text-decoration: none;
	display: block;
	width: 150px;
	font-size: 12px;
	font-weight: bold;
	text-align: left;
}

#footer-wrap {
	margin: 0 auto;
	width: 1000px;
}

#footer {
	overflow: hidden;
	background-color: #333333;
}

#footer h4 {
	color: white;
}

#footer dl {
	float: left;
	margin-top: 0px;
}

#footer dt {
	float: left;
	color: white;
	font-size: 11pt;
	font-weight: bold;
}

#footer dd {
	float: left;
	color: gray;
	font-size: 9pt;
	margin: 5px;
}

#footer a:link {
	color: gray;
	text-decoration: none;
}

#footer a:visited {
	color: gray;
	text-decoration: none;
}

#footer1 {
	background-color: #221F1F;
	overflow: hidden;
}

#footer1-wrap .logo {
	padding-top: 15px;
}

#footer1-wrap {
	margin: 0 auto;
	width: 1000px;
	font-size: 9pt;
}

#footer1-wrap .text1 {
	float: left;
	width: 500px;
	margin-top: 10px;
}

#footer1-wrap .text2 {
	float: right;
	width: 400px;
	margin-bottom: 15px;
}

#footer1-wrap .text2 img {
	width: 200px;
	height: 60px;
}

#topbanner-wrap{
	display:table;
	margin-left: auto;
	margin-right: auto;
}

#topbanner-wrap img{
	width: 1400px;
}


#middle-box{
	background-color: gray;
	overflow: hidden;

}

#middle-box-wrap{
	display: table; 
	margin-left: auto; 
	margin-right: auto;
	height: 500px;
}

#middle-list ul li{
	list-style: none;
	float: left;
	line-height: 50px;
	vertical-align: middle;
	text-align: center;
}
#middle-list a{
	background-color: white;
	color: black;
	text-decoration: none;
	display: block;
	width: 100px;
	font-size: 12px;
	font-weight: bold;
}
</style>

<script type="text/javascript">
	var itv = 1000;

	var bannerArray = new Array();
	bannerArray[0] = "./image/banner1.jpg";
	bannerArray[0] = "./image/banner2.jpg";
	bannerArray[0] = "./image/banner3.jpg";
	bannerArray[0] = "./image/banner4.jpg";
	bannerArray[0] = "./image/banner5.jpg";
	bannerArray[0] = "./image/banner6.jpg";

	function bannerRotate() {

		setTimeout("blendbanner()", itv);

	}

	function blendbanner() {

	}
</script>

</head>
<body>

	<!-- HEADER 시작 -->
	<div id="header-wrap">
		<div id="header">
			<ul>
				<li><a href="<%=cp%>"><img alt="" src="./login/image/magabox.jpg"></a></li>
				<li><a class="menuLink" href="<%=cp%>/Movie/list.do">영화</a></li>
				<li><a class="menuLink" href="#">큐레이션</a></li>
				<li><a class="menuLink" href="<%=cp%>/Theater/theater.do">영화관</a></li>
				<li><a class="menuLink" href="#">특별관</a></li>
				<li><a class="menuLink" href="#">스토어</a></li>
				<li><a class="menuLink" href="#">이벤트</a></li>
				<li><a class="menuLink" href="<%=cp%>/Login/login.do">로그인</a></li>
			</ul>
		</div>
	</div>
	<div id="header-menu">
		<div id="header-menu-left">
			<ul>
				<li class="menu-left"><img alt="" src="<%=cp %>/login/image/menu.jpg"></li>
				<li class="menu-left">필름소사이어티</li>
				<li class="menu-left">클래식 소사이어티</li>
			</ul>
		</div>
		
		<%
		  String str;
		  String strUrl;
		  
		  strUrl = cp+"/Booking/booking.do";
		  str    = "window.open('" + strUrl + "', 'Think', ";
		  str    = str + "'left=100, ";
		  str    = str + "top=20, ";
		  str    = str + "width=1000, ";
		  str    = str + "height=600, ";
		  str    = str + "toolbar=no, ";
		  str    = str + "menubar=no, ";
		  str    = str + "status=no, ";
		  str    = str + "scrollbars=no, ";
		  str    = str + "resizable=no')";
		%>
		
		<div id="header-menu-right">
			<ul>
				<li class="menu-right">고객센터 | 멤버십 | VIP</li>
				<li class="menu-right"><a href="<%=cp %>/Timetable/movieTime.do"><img alt=""
					src="./login/image/timetable.jpg"></a></li>
				<li class="menu-right"><img alt=""
					src="./login/image/booking.jpg" onclick="<%=str %>"></li>
			</ul>
		</div>
	</div>
	<!-- HEADER 끝 -->


	<div id="topbanner">
		<div id="topbanner-wrap">
			<img alt="" src="./image/banner3.jpg">
		</div>
	</div>

	<div id="middle-box">
		<div id="middle-box-wrap">
				<div	id="middle-list">
					<ul>
						<li><a href="">박스오피스</a></li>
						<li><a href="">최신개봉작</a></li>
						<li><a href="">상영예정작</a></li>
						<li><a href="">큐레이션</a></li>
					</ul>
				</div>
		</div>
	</div>


	<!-- FOOTER 시작 -->
	<div id="footer">
		<div id="footer-wrap">
			<h4>메가박스 영화관 찾기</h4>
			<dl class="clearfix">
				<dt>서울</dt>
				<dd>
					<a href="">강남</a>
				</dd>
				<dd>
					<a href="">강남대로(씨티)</a>
				</dd>
				<dd>
					<a href="">강동</a>
				</dd>
				<dd>
					<a href="">동대문</a>
				</dd>
				<dd>
					<a href="">마곡</a>
				</dd>
				<dd>
					<a href="">목동</a>
				</dd>
				<dd>
					<a href="">상봉</a>
				</dd>

				<dd>
					<a href="">상암월드컵경기장</a>
				</dd>
				<dd>
					<a href="">센트럴</a>
				</dd>
				<dd>
					<a href="">송파파크하비오</a>
				</dd>
				<dd>
					<a href="">신촌</a>
				</dd>
				<dd>
					<a href="">은평</a>
				</dd>
				<dd>
					<a href="">이수</a>
				</dd>
				<dd>
					<a href="">창동</a>
				</dd>
				<dd>
					<a href="">코엑스</a>
				</dd>
				<dd>
					<a href="">화곡</a>
				</dd>
				<dd>
					<a href="">ARTNINE</a>
				</dd>
				<dd>
					<a href="">EOE4</a>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>경기</dt>
				<dd>
					<a href="">고양스타필드</a>
				</dd>
				<dd>
					<a href="">김포</a>
				</dd>
				<dd>
					<a href="">남양주</a>
				</dd>
				<dd>
					<a href="">동탄</a>
				</dd>

				<dd>
					<a href="">미사강변</a>
				</dd>

				<dd>
					<a href="">백석</a>
				</dd>

				<dd>
					<a href="">별내</a>
				</dd>
				<dd>
					<a href="">분당</a>
				</dd>
				<dd>
					<a href="">수원</a>
				</dd>
				<dd>
					<a href="">수원남문</a>
				</dd>
				<dd>
					<a href="">시흥배곧</a>
				</dd>
				<dd>
					<a href="">안산중앙</a>
				</dd>
				<dd>
					<a href="">양주</a>
				</dd>
				<dd>
					<a href="">영통</a>
				</dd>
				<dd>
					<a href="">오산</a>
				</dd>
				<dd>
					<a href="">의정부 민락</a>
				</dd>
				<dd>
					<a href="">일산</a>
				</dd>

				<dd>
					<a href="">일산벨라시타</a>
				</dd>
				<dd>
					<a href="">킨텍스</a>
				</dd>
				<dd>
					<a href="">파주금촌</a>
				</dd>
				<dd>
					<a href="">파주운정</a>
				</dd>
				<dd>
					<a href="">파주출판도시</a>
				</dd>
				<dd>
					<a href="">평택</a>
				</dd>
				<dd>
					<a href="">하남스타필드</a>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>인천</dt>
				<dd>
					<a href="">검단</a>
				</dd>
				<dd>
					<a href="">송도</a>
				</dd>
				<dd>
					<a href="">인천논현</a>
				</dd>
				<dd>
					<a href="">청라</a>
				</dd>


				<dd>
					<a href="">청라지젤</a>
				</dd>
			</dl>
			<dl class="clearfix dt_st1">
				<dt>대전 | 세종 | 충청</dt>
				<dd>
					<a href="">공주</a>
				</dd>
				<dd>
					<a href="">대전</a>
				</dd>
				<dd>
					<a href="">세종</a>
				</dd>

				<dd>
					<a href="">오창</a>
				</dd>

				<dd>
					<a href="">제천</a>
				</dd>

				<dd>
					<a href="">진천</a>
				</dd>
				<dd>
					<a href="">천안</a>
				</dd>
				<dd>
					<a href="">충주</a>
				</dd>

				<dd>
					<a href="">홍성내포</a>
				</dd>

			</dl>
			<dl class="clearfix dt_st2">
				<dt>부산 | 경상</dt>
				<dd>
					<a href="">거창</a>
				</dd>
				<dd>
					<a href="">경남대</a>
				</dd>

				<dd>
					<a href="">경산하양</a>
				</dd>
				<dd>
					<a href="">경주</a>
				</dd>
				<dd>
					<a href="">구미강동</a>
				</dd>
				<dd>
					<a href="">김천</a>
				</dd>

				<dd>
					<a href="">남포항</a>
				</dd>
				<dd>
					<a href="">대구(칠성로)</a>
				</dd>
				<dd>
					<a href="">대구신세계</a>
				</dd>
				<dd>
					<a href="">대구 이시아</a>
				</dd>
				<dd>
					<a href="">덕천</a>
				</dd>

				<dd>
					<a href="">마산</a>
				</dd>
				<dd>
					<a href="">문경</a>
				</dd>
				<dd>
					<a href="">부산극장</a>
				</dd>
				<dd>
					<a href="">부산대</a>
				</dd>
				<dd>
					<a href="">북대구(칠곡)</a>
				</dd>
				<dd>
					<a href="">사천</a>
				</dd>
				<dd>
					<a href="">삼천포</a>
				</dd>
				<dd>
					<a href="">서면</a>
				</dd>
				<dd>
					<a href="">안동</a>
				</dd>
				<dd>
					<a href="">양산</a>
				</dd>
				<dd>
					<a href="">울산</a>
				</dd>
				<dd>
					<a href="">정관</a>
				</dd>
				<dd>
					<a href="">창원</a>
				</dd>

				<dd>
					<a href="">해운대(장산)</a>
				</dd>
			</dl>
			<dl class="clearfix dt_st2">
				<dt>광주 | 전라</dt>
				<dd>
					<a href="">광주(충장로)</a>
				</dd>
				<dd>
					<a href="">광주상무</a>
				</dd>
				<dd>
					<a href="">광주하남</a>
				</dd>
				<dd>
					<a href="">남원</a>
				</dd>
				<dd>
					<a href="">목포</a>
				</dd>
				<dd>
					<a href="">목포하당(포르모)</a>
				</dd>
				<dd>
					<a href="">송천</a>
				</dd>
				<dd>
					<a href="">순천</a>
				</dd>
				<dd>
					<a href="">여수</a>
				</dd>

				<dd>
					<a href="">여수웅천</a>
				</dd>
				<dd>
					<a href="">전대(광주)</a>
				</dd>
				<dd>
					<a href="">전주(객사)</a>
				</dd>
				<dd>
					<a href="">첨단(광주)</a>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>강원</dt>
				<dd>
					<a href="">남춘천</a>
				</dd>
				<dd>
					<a href="">속초</a>
				</dd>
				<dd>
					<a href="">원주</a>
				</dd>
				<dd>
					<a href="">원주센트럴</a>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>제주</dt>
				<dd>
					<a href="">제주</a>
				</dd>
				<dd>
					<a href="">제주아라</a>
				</dd>
			</dl>
		</div>
	</div>

	<div id="footer1">
		<div id="footer1-wrap">
			<div class="logo">
				<a href="/webproject/" title="MEGABOX 메인으로 가기"><img
					src="http://image2.megabox.co.kr/mop/home/logo_footer_new.png"
					alt="MEGABOX"></a>
			</div>
			<div class="text1">
				회사소개 | 채용정보 | 제휴/광고/부대사업 문의 | 이용약관 | 개인정보 처리방침 | 고객센터<br /> 서울특별시
				강남구 도산대로 156, 2층 메가박스중앙(주) (논현동, 중앙엠앤비사옥)<br /> 대표자명 김진선 | 개인정보보호
				책임자 경영지원실 실장 박영진<br /> 사업자등록번호 211-86-59478 | 통신판매업신고번호 제 833호
			</div>
			<div class="text2">
				<img alt="" src="./login/image/footerimage.jpg"><br />
				Copyright 2014 by MegaboxJoongAng, Inc. All rights reserved
			</div>

		</div>
	</div>
	<!-- FOOTER 끝 -->

</body>
</html>