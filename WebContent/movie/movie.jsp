<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=cp%>/movie/css/movie.css" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<title>Movie Info</title>
<style type="text/css">

select#rate option[value="0"] { background-image:url(${imagePath}/midrate0.png);   }

</style>
<script type="text/javascript">

	function goToP() {
		
		window.opener.location.href="<%=cp%>/Timetable/movieTime_ok.do?movie_id=${dto.movie_id}"
		
		
	}

</script>
</head>
<body marginheight="0" marginwidth="0" scroll=auto style="overflow-x:hidden;">
<div class="all">
	<table border="0" width="888px" height="376px" style="margin-bottom: 40px;">
		<tr>
			<td rowspan="5" width="230px" valign="top">
			<span>
			<img src="${imagePath }/${dto.file_name}" width="230px" height="336px"/></span>
			</td>
			<td rowspan="5" width="10px;"></td>
			<td height="3%" class="title">
			<span style="vertical-align: bottom;">
			<img src="${imagePath }/age${dto.age_limit}big.png"/></span>
			<span style="color: #353535; font-size: 22pt; vertical-align: top; font-weight: bold;">
			${dto.movie_name }</span>
			<p style="color: #747474; font-size: 9pt; font-family: 맑은고딕;">
			Mission:Impossible- Fallout ,</p></td>
		</tr>
		<tr>
			<td height="42px" style="padding-top: 5px;">
			<div style="float: left;">
			<c:if test="${dto.rating==0 }"><img src="${imagePath }/mvrate0.png"></c:if>
			<c:if test="${dto.rating<3&&0<dto.rating}"><img src="${imagePath }/mvrate1.png"></c:if>
			<c:if test="${2<dto.rating&&dto.rating<5}"><img src="${imagePath }/mvrate2.png"></c:if>
			<c:if test="${4<dto.rating&&dto.rating<7 }"><img src="${imagePath }/mvrate3.png"></c:if>
			<c:if test="${6<dto.rating&&dto.rating<9 }"><img src="${imagePath }/mvrate4.png"></c:if>
			<c:if test="${8<dto.rating&&dto.rating<11 }"><img src="${imagePath }/mvrate5.png"></c:if>
			<br>
			<font style="font-size: 9pt; color: #747474; vertical-align: top;">${dto.countRate }명 참여</font></div>
			<span style="float: left; margin-left: 10px;">
			<strong style="font-size: 20pt; font-weight: bold; color: #353535; vertical-align: top;">${dto.rating } 점</strong>
			</span>
			
			<span style="float: right;"><input type="button" name="booking" value="예매하기" class="btn1"
			onclick="<%=cp%>/booking/booking.jsp"/>
			</span>
			</td>		
		</tr>
		<tr>
			<td height=100px class="middle">
			<p><font style="font-weight: bold;">타입</font> : ${dto.type }</p>
			<p><font style="font-weight: bold;">개봉일</font> : ${dto.release_date }</p>
			<p><font style="font-weight: bold;">감독</font> : ${dto.director }</p>
			<p><font style="font-weight: bold;">출연진</font> : ${dto.actors }</p>
			<p><font style="font-weight: bold;">장르</font> : ${dto.genre } / ${dto.showtimes } 분</p>			
			</td>
		</tr>
		<tr>
			<td height="50px" rowspan="2" style="padding: 0px;">
			<span style="float: left;">
			<font size="2pt;" color="#4C4C4C">내 평점</font> 
			
			<select id="rate" style="width: 119px; height: 20px;">
			<option value="0"></option>
			</select>
			
			<font size="1pt;" color="#4C4C4C">너무 멋진 영화였어요!</font></span>
			<span style="float: right;">
			<input type="button" value="♥보고싶어" name="wishMovie" onclick="" class="btn2"/>
			<input type="button" value="상영시간표" name="booking" onclick="goToP();" class="btn3"/>
			
			</span>
			</td>
		</tr>
	</table>
	<div class="summary">
		<h3>줄거리</h3>
		<div style="font-size: 14px; color: #666666; font-weight: lighter;">
		${dto.summary }
		</div>
	</div>
	<div id="image">
		<h3>스틸컷 <font style="font-size: 14px;">22</font></h3>
		<div id="image_top">						
			<div class="lbtn"><a href="javascript:void(0);" title="이전 스틸컷 보기">
			<img src="${imagePath }/left_btnn.png"/></a></div>
			<c:forEach var="still" items="${still }">
			<span style="float: left;"><img src="${imagePath }/${still.file_name}" height="110px"/></span>
			</c:forEach>
		
		<div class="rbtn"><a href="javascript:void(0);" title="이전 스틸컷 보기">
			<img src="${imagePath }/right_btnn.png"/></a></div>		
	</div>
		<div id="image_content">
			<div class="lbtn"><a href="javascript:void(0);">
			<img src="${imagePath }/left_btnbig.png"/></a></div>
			<img src="${imagePath }/godStill1.jpg" height="500px">
			<div class="rbtn"><a href="javascript:void(0);">
			<img src="${imagePath }/right_btnbig.png"/></a></div>
		</div>
	</div>
	<div id="comment">
		<div id="comment_head">
		<h3>한줄평 <span style="color: #666666; font-size: 14px;">(${dto.commCount })</span></h3>
		</div>
		<div style="width: 888px; height: 128px;">
			<span style="padding-top: 58px; float: left;">
			<img width="56px" height="56px" src="${imagePath }/profile.png"></span>
			<table id="comment_input">
				<tr>
					<td class="star"></td>
					<td class="text">
					<textarea title="댓글쓰기" name="comment" maxlength="100"
					class="textarea"></textarea>
					</td>
					<td width="84px" height="84px">
					<input type="button" value="등록" class="btn"/>
					</td>
				</tr>
			</table>
		</div>
		<div id="comment_view">
			<div class="cell">
				<div style="width: 80px; float: left;">
					<img src="./image/profile.png" height="54px" width="54px"/>
				</div>
				<div class="text">
				<div class="id"><strong>knr12**</strong></div>
				<div class="date"><span>18.08.16</span></div>
				<div><img src="./image/smallstar.png"/></div>
				<p><span class="content">재밌는 영화
				</span></p>
				<div class="bottom">
				<a href="javascript:thumb();">
				<img src="./image/thumb.png" style="vertical-align: middle;" /> 추천 
				<font style="font-weight: bold;">5</font></a></div>		
				</div>
			</div>	
			
		</div>
	</div>
	
	
		
</div>





</body>
</html>