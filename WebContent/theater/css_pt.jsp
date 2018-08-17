<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//한글을 3바이트로 받아줘서 안깨지게해주는것
	request.setCharacterEncoding("UTF-8");
	//  cp = ~/study 까지 경로
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
@charset "utf-8"; 

@font-face {
	font-family: 'NanumGothic';
	font-style: normal;
	font-weight: 400;
	src: local('Nanum Gothic Regular'), local('Nanum Gothic-Regular'),
		local('NanumBarunGothic Regular');
	src: url(http://image2.megabox.co.kr/mop/font/NanumGothic.eot);
	src: url(http://image2.megabox.co.kr/mop/font/NanumGothic.eot?#iefix)
		format('embedded-opentype'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic.woff)
		format('woff'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic.ttf)
		format('truetype')
}

@font-face {
	font-family: 'NanumGothic';
	font-style: normal;
	font-weight: 700;
	src: url(http://image2.megabox.co.kr/mop/font/NanumGothic-Bold.eot);
	src: url(http://image2.megabox.co.kr/mop/font/NanumGothic-Bold?#iefix)
		format('embedded-opentype'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-Bold.woff)
		format('woff'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-Bold.woff2)
		format('woff2'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-Bold.ttf)
		format('truetype')
}

@font-face {
	font-family: 'NanumGothic';
	font-style: normal;
	font-weight: 800;
	src: url(http://image2.megabox.co.kr/mop/font/NanumGothic-ExtraBold.eot);
	src:
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-ExtraBold?#iefix)
		format('embedded-opentype'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-ExtraBold.woff)
		format('woff'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-ExtraBold.woff2)
		format('woff2'),
		url(http://image2.megabox.co.kr/mop/font/NanumGothic-ExtraBold.ttf)
		format('truetype')
}

ul, ol, dl, li, p {
	padding: 0;
	margin: 0;
	list-style: none
}

.font_bold {
	font-weight: 700
}

html, body {
	height: 100%;
	font-family: 'NanumGothic', '나눔고딕', '맑은 고딕', 'Malgun Gothic', '돋움',
		dotum, 'Apple SD Gothic Neo', sans-serif
}

body {
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-color: #fff;
	margin: 49px 0 0 0;
	padding: 0
}

input[type=radio], input[type=checkbox] {
	opacity: 0;
	width: 16px;
	line-height: 16px;
	height: 16px;
	text-indent: 0
}

.iCheck-helper {
	left: 0;
	top: 0;
	width: 16px;
	height: 16px;
	position: absolute;
	z-index: 0;
	background-color: #fff
}

input {
	width: 200px;
	border: 1px solid #d9d9d9;
	line-height: 26px;
	height: 26px;
	background-color: #f8f8f8;
	font-size: 12px;
	color: #333;
	text-indent: 14px;
	vertical-align: middle
}

input:focus {
	background-color: #fff
}

input.w67 {
	width: 67px
}

input.w44 {
	width: 44px
}

input.w95 {
	width: 95px
}

input.w300 {
	width: 300px
}

input[readonly="readonly"], input[readonly], input[disabled="disabled"],
	input[disabled] {
	color: #666 !important;
	border: 1px solid #c2c2c2 !important;
	background: #f2f2f2 !important
}

::-webkit-input-placeholder {
	color: #444
}

:-moz-placeholder {
	color: #444
}

::-moz-placeholder {
	color: #444
}

:-ms-input-placeholder {
	color: #444
}

textarea {
	display: block;
	width: 100%;
	padding: 10px;
	border: 1px solid #d9d9d9;
	background-color: #f8f8f8;
	font-size: 12px;
	line-height: 21px;
	color: #333
}

textarea:focus {
	background-color: #fff
}

a {
	color: #198591;
	text-decoration: none
}

a:hover, a:focus {
	color: #198591;
	text-decoration: underline
}

h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6, strong, label {
	font-weight: 700;
	font-family: '나눔고딕', 'NanumGothic', '맑은 고딕', 'Malgun Gothic', '돋움',
		dotum, 'Apple SD Gothic Neo', sans-serif
}

#container {
	position: relative;
	margin-top: 38px;
	margin-bottom: 85px
}

#container.movie_container {
	margin-top: 7px
}

.width-fixed {
	width: 970px;
	max-width: 970px;
	min-width: 970px;
	margin-left: auto;
	margin-right: auto
}

.full-width {
	padding: 0 11px
}

.show {
	display: block
}

.hide {
	display: none
}

.c_purple {
	color: #503396 !important
}

.c_mint {
	color: #198591 !important
}

.c_mintlite {
	color: #59BEC9 !important
}

.c_red {
	color: #ff0000 !important
}

.t_title {
	color: #333 !important
}

.t_content {
	color: #666 !important
}

.t_sub {
	color: #666 !important
}

i {
	display: inline-block;
	*display: inline;
	zoom: 1
}

.nav-tabs {
	border: none
}

.nav-tabs>li {
	margin: 0
}

.nav-tabs>li>a {
	margin: 0;
	padding: 0;
	line-height: 1;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	-ms-border-radius: 0;
	-o-border-radius: 0;
	border-radius: 0;
	color: #666;
	font-weight: 700
}

.nav-tabs>li>a:hover {
	border-color: #e5e5e5;
	background-color: #F9F9F9
}

.nav-tabs>li.active {
	margin-left: -1px
}

.nav-tabs>li:first-child {
	margin-left: 0
}

.nav-tabs>li.active>a {
	color: #333;
	cursor: default;
	background-color: #fff
}

.nav-tabs.nav-tabs.nav-justified>li:first-child a {
	border: none
}

.nav-tabs.nav-tabs.nav-justified>li>a {
	border: none;
	border-left: 1px solid #e5e5e5;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	-ms-border-radius: 0;
	-o-border-radius: 0;
	border-radius: 0
}

.nav-tabs {
	overflow: visible;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/bg_sm_btns.png) 0 bottom
		repeat-x;
	margin-bottom: 30px;
	height: 35px
}

.nav-tabs li {
	overflow: visible;
	position: relative;
	display: block;
	float: left
}

.nav-tabs li a {
	margin-bottom: -2px;
	padding: 0 25px;
	display: block;
	border: 1px solid #e1e1e1;
	border-bottom-color: #e1e1e1;
	border-left: none;
	font-size: 13px;
	line-height: 35px;
	text-align: center;
	min-width: 114px;
	height: 35px;
	background-color: #f9f9f9;
	color: #666;
	font-weight: 700
}

.nav-tabs li:first-child a {
	border-left: 1px solid #e1e1e1
}

.nav-tabs li:first-child a:hover {
	border-left: 1px solid #e1e1e1
}

.nav-tabs li:first-child.active a {
	border-left: 1px solid #e1e1e1
}

.nav-tabs li.active a {
	margin-bottom: -1px;
	background-color: #fff;
	border-bottom: 1px solid #fff
}

.tab-content .util {
	overflow: hidden;
	margin-bottom: 10px
}

.tab-content .util p {
	color: #666;
	font-size: 12px;
	float: right
}

.tab-content .util p:first-child {
	float: left
}

.tab-content .util p a {
	color: #333;
	text-decoration: none
}

.tab-content .util p a.selected {
	text-decoration: underline
}

.one_tab>li>a, .one_tab>li>a:active {
	background-color: #fff;
	color: #333;
	border-bottom: 1px solid #fff;
	cursor: default
}

.tab_wrap {
	position: relative
}

.skipnavi {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 1001;
	overflow: hidden;
	margin: 0;
	height: 1px;
	margin-top: -1px;
	line-height: 50px;
	text-align: center;
	font-weight: bold;
	font-size: 14px;
	background: #503396;
	color: #fff !important;
	text-decoration: none !important;
	display: block
}

.skipnavi:focus, .skipnavi:active, .skipnavi:hover {
	height: 50px
}

header {
	position: fixed;
	height: 50px;
	top: 0;
	width: 100%;
	background-color: #fff;
	border-bottom: 1px solid #e5e5e5;
	z-index: 1000
}

header.fixed-width .header-wrap, header.fixed-width .header-btn-wrap {
	width: 100%;
	min-width: 970px
}

header .nav_logo {
	float: left;
	margin-top: -19px;
	cursor: pointer
}

header.with-image {
	margin-bottom: 0
}

header.with-image .btn_theater button.btn_time {
	background-position: -300px -100px
}

header.with-image .btn_theater button.btn_time:hover, header.with-image .btn_theater button.btn_time:active
	{
	background-position: -300px -100px
}

header .header-wrap {
	width: 970px;
	position: relative;
	margin: 0 auto
}

header .header-wrap .member_info {
	width: 152px;
	position: absolute;
	right: 0;
	top: 0;
	height: 49px;
	border-right: 1px solid #e5e5e5
}

header .header-wrap .member_info .photo {
	float: left;
	position: relative;
	margin: 6px 0 0 13px
}

header .header-wrap .member_info .photo img {
	width: 37px;
	height: 37px;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	-ms-border-radius: 20px;
	-o-border-radius: 20px;
	border-radius: 20px
}

header .header-wrap .member_info .name {
	width: 75px;
	float: left;
	margin-left: 14px
}

header .header-wrap .member_info .name p {
	color: #198591;
	margin: 0;
	padding: 0;
	line-height: 1;
	font-size: 12px
}

header .header-wrap .member_info .name p.name_btn {
	position: relative;
	padding-right: 11px
}

header .header-wrap .member_info .name p.name_btn span {
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer
}

header .header-wrap .member_info .name p:first-child {
	margin: 13px 0 0 0;
	color: #000;
	filter: alpha(opacity = 60);
	opacity: .6
}

header .header-wrap .member_info .name p:first-child strong {
	filter: alpha(opacity = 100);
	opacity: 1
}

header .header-wrap .member_info .name .name_membership {
	overflow: hidden;
	font-size: 12px;
	white-space: nowrap
}

header .header-wrap .member_info>span {
	display: block;
	float: right;
	width: 35px;
	height: 100%;
	cursor: pointer
}

header .header-wrap .member_info>span i {
	font-size: 12px;
	filter: alpha(opacity = 50);
	opacity: .5;
	margin: 21px 0 0 13px
}

header .header-wrap>.open_myinfo_open {
	display: block !important
}

header .header-wrap .login_info {
	position: absolute;
	display: none;
	top: 50px;
	right: 0;
	width: 301px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 5px 6px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 5px 6px rgba(0, 0, 0, 0.5);
	box-shadow: 0 5px 6px rgba(0, 0, 0, 0.5);
	background-color: #fff;
	z-index: 1000
}

header .header-wrap #myinfo_wrap div.top {
	padding: 16px 15px
}

header .header-wrap #myinfo_wrap div.top>p {
	width: 100%;
	text-align: right
}

header .header-wrap #myinfo_wrap div.top>p.icon_crown {
	background:
		url(http://image2.megabox.co.kr/mop/home/membership/crown_icon.png)
		205px 2px no-repeat;
	background-size: 6%;
	color: #333;
	font-size: 13px;
	height: 23px;
	margin-top: -5px
}

header .header-wrap #myinfo_wrap div.top>.title {
	margin: -16px -15px 0;
	padding: 10px 15px;
	font-size: 14px;
	line-height: 20px;
	overflow: hidden;
	vertical-align: bottom;
	border-bottom: 1px solid #e5e5e5
}

header .header-wrap #myinfo_wrap div.top>.title p {
	float: left;
	color: #333;
	vertical-align: top
}

header .header-wrap #myinfo_wrap div.top>.title p strong {
	font-size: 18px
}

header .header-wrap #myinfo_wrap div.top>.title em {
	vertical-align: top;
	display: block;
	float: right;
	font-style: normal;
	color: #198591;
	font-weight: 900
}

header .header-wrap #myinfo_wrap div.top>.info {
	position: relative;
	font-size: 12px;
	margin-top: 16px
}

header .header-wrap #myinfo_wrap div.top>.info li {
	position: relative;
	overflow: hidden;
	margin-top: 0
}

header .header-wrap #myinfo_wrap div.top>.info li>a {
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	color: #503396
}

header .header-wrap #myinfo_wrap div.top>.info li>span {
	float: left;
	display: block;
	color: #999
}

header .header-wrap #myinfo_wrap div.top>.info li>span.title {
	width: 79px;
	color: #333
}

header .header-wrap #myinfo_wrap div.top>.info li>span.point {
	float: right;
	color: #198591;
	font-weight: 700
}

header .header-wrap #myinfo_wrap div.top>.info li>span a {
	display: inline-block;
	margin: 0 6px;
	color: #999
}

header .header-wrap #myinfo_wrap div.top>.info li>span a:first-child {
	margin-left: 0
}

header .header-wrap #myinfo_wrap div.top>.info li.point_wrap {
	margin-top: 0
}

header .header-wrap #myinfo_wrap div.top>.info li.point_wrap>.icon_list
	{
	margin: 6px 0 6px
}

header .header-wrap #myinfo_wrap div.top>.info li.point_wrap>.icon_list li
	{
	float: left;
	margin-top: 0
}

header .header-wrap #myinfo_wrap div.top>.info li.point_wrap>.icon_list li.no_icon
	{
	float: right
}

header .header-wrap #myinfo_wrap div.middle {
	height: 116px;
	border-top: 1px solid #e5e5e5;
	border-bottom: 1px solid #e5e5e5
}

header .header-wrap #myinfo_wrap div.middle ul {
	padding: 0 18px;
	text-align: center
}

header .header-wrap #myinfo_wrap div.middle ul li {
	float: left
}

header .header-wrap #myinfo_wrap div.middle ul li a {
	display: block;
	position: relative;
	height: 72px;
	width: 76px;
	margin: 20px 6px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/login_middle_icon.png)
		no-repeat
}

header .header-wrap #myinfo_wrap div.middle ul li a:hover, header .header-wrap #myinfo_wrap div.middle ul li a:active
	{
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/login_middle_icon_on.png)
		no-repeat
}

header .header-wrap #myinfo_wrap div.middle ul li .item1 {
	background-position: 4px center
}

header .header-wrap #myinfo_wrap div.middle ul li .item2 {
	background-position: -101px center
}

header .header-wrap #myinfo_wrap div.middle ul li .item3 {
	background-position: -204px center
}

header .header-wrap #myinfo_wrap div.middle .badge {
	position: absolute;
	top: 0;
	right: 5px;
	padding: 0 7px;
	display: block;
	height: 14px;
	line-height: 14px;
	border-radius: 7px;
	font-weight: 700;
	font-size: 10px;
	background: #503396;
	color: #fff
}

header .header-wrap #myinfo_wrap div.bottom {
	height: 35px;
	overflow: hidden;
	padding: 12px 15px;
	background-color: #f2f2f2;
	clear: both
}

header .header-wrap #myinfo_wrap div.bottom span, header .header-wrap #myinfo_wrap div.bottom a
	{
	display: block;
	font-size: 11px;
	vertical-align: middle;
	line-height: 10px;
	color: #666;
	float: left
}

header .header-wrap #myinfo_wrap div.bottom span {
	margin-right: 5px
}

header .header-wrap #myinfo_wrap div.bottom a {
	float: right;
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 68px;
	height: 23px;
	line-height: 20px;
	border: 1px solid #c1c1c1;
	background-color: #fff;
	text-align: center;
	color: #666;
	font-size: 12px;
	vertical-align: top;
	margin-top: -6px
}

header .header-wrap #login_wrap {
	width: 380px;
	height: 287px
}

header .header-wrap #login_wrap #login_phone_view {
	display: none
}

header .header-wrap #login_wrap label {
	font-size: 12px;
	font-weight: normal;
	color: #666;
	margin-bottom: 0
}

header .header-wrap #login_wrap span.top {
	display: block;
	height: 77px;
	background: url(http://image2.megabox.co.kr/mop/home/user/bg_member.png)
		50% -871px no-repeat
}

header .header-wrap #login_wrap .ad_wrap {
	position: absolute;
	top: 65px;
	right: 0
}

header .header-wrap #login_wrap .ad_wrap a {
	display: block;
	width: 164px;
	height: 34px;
	background: #ccc
}

header .header-wrap #login_wrap .middle {
	padding: 0 33px 0 36px
}

header .header-wrap #login_wrap .middle p {
	color: #503396;
	font-size: 11px;
	margin: 13px 0
}

header .header-wrap #login_wrap .middle .icheckbox_minimal {
	vertical-align: top
}

header .header-wrap #login_wrap .middle .radio_wrap {
	padding-left: 9px;
	margin-bottom: 4px
}

header .header-wrap #login_wrap .middle .input_wrap {
	position: relative;
	padding-right: 76px
}

header .header-wrap #login_wrap .middle .input_wrap input {
	position: relative;
	display: block;
	width: 100%;
	z-index: 10
}

header .header-wrap #login_wrap .middle .input_wrap button.remember_id {
	position: absolute;
	top: 0;
	right: 75px;
	width: 37px;
	height: 26px;
	border: none;
	overflow: hidden;
	text-indent: -9999px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_member.png) 0 -800px
		no-repeat
}

header .header-wrap #login_wrap .middle .input_wrap button.remember_id.remember_id_lock
	{
	background-position: -50px -800px
}

header .header-wrap #login_wrap .middle .input_wrap input[type=submit] {
	position: absolute;
	width: 65px;
	height: 60px;
	top: 0;
	right: 0;
	background-position: 0 -450px
}

header .header-wrap #login_wrap .middle .input_wrap label {
	position: absolute;
	z-index: 9
}

header .header-wrap #login_wrap .middle .input_wrap label.login-id {
	left: 15px;
	top: 5px
}

header .header-wrap #login_wrap .middle .input_wrap label.login-pw {
	left: 15px;
	top: 39px
}

header .header-wrap #login_wrap .middle .ck_popup {
	position: relative
}

header .header-wrap #login_wrap .middle .ck_popup>span {
	position: relative
}

header .header-wrap #login_wrap .middle .ck_popup>span label {
	position: relative
}

header .header-wrap #login_wrap .middle .ck_popup .reep_login_pop {
	display: none;
	border: 1px solid #c1c1c1;
	position: absolute;
	right: -175px;
	top: -7px;
	padding: 10px 14px;
	background-color: #f2f2f2;
	border-radius: 3px;
	color: #333;
	font-weight: normal;
	line-height: 18px
}

header .header-wrap #login_wrap .middle .ck_popup .reep_login_pop i {
	position: absolute;
	left: -7px;
	top: 10px;
	width: 7px;
	height: 9px;
	background:
		url(http://image2.megabox.co.kr/mop/home/ico_reep_login_pop.gif) left
		top no-repeat
}

header .header-wrap #login_wrap .middle .ck_popup .reep_login_pop .go_help
	{
	display: block;
	margin-top: 10px;
	color: #733fa3;
	text-decoration: underline
}

header .header-wrap #login_wrap .middle .ck_popup .reep_login_pop .pop_close
	{
	position: absolute;
	right: 9px;
	bottom: 9px;
	width: 17px;
	height: 17px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png)
		left top no-repeat;
	opacity: .5;
	filter: alpha(opacity = 50)
}

header .header-wrap #login_wrap span.newTop {
	display: block;
	height: 50px
}

header .header-wrap #login_wrap h4 {
	font-size: 16px;
	font-weight: 500
}

header .header-wrap #login_wrap h4.loginTitle {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png) 0
		-8px no-repeat;
	height: 17px;
	padding-left: 75px
}

header .header-wrap #login_wrap .orLine {
	border-top: 1px solid #f2f2f2;
	margin: 50px 0 20px
}

header .header-wrap #login_wrap .orLine span {
	width: 28px;
	height: 28px;
	display: block;
	margin: -15px 142px 0;
	text-indent: 9999px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png) 0
		-80px no-repeat
}

header .header-wrap #login_wrap .socialGroup ul {
	margin: 0 -5px
}

header .header-wrap #login_wrap .socialGroup ul li {
	border: 1px solid #d8d8d8;
	border-radius: 5px;
	width: 150px;
	float: left;
	height: 32px;
	text-align: center;
	line-height: 32px;
	margin: 0 5px;
	box-shadow: 0 1px 0 #f0f0f0
}

header .header-wrap #login_wrap .socialGroup ul li a {
	color: #999;
	font-size: 12px;
	font-weight: bold
}

header .header-wrap #login_wrap .socialGroup ul li i.social_kakao {
	width: 41px;
	height: 12px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png)
		-70px -50px no-repeat
}

header .header-wrap #login_wrap .socialGroup ul li i.social_payco {
	width: 43px;
	height: 10px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png)
		-130px -50px no-repeat
}

header .header-wrap #login_wrap .join_btn {
	width: 100%;
	height: 70px;
	background-color: #f2f2f2;
	border-top: 1px solid #d7d7d7;
	margin-top: 30px
}

header .header-wrap #login_wrap .join_btn ul {
	padding: 5px 33px 0 36px
}

header .header-wrap #login_wrap .join_btn ul li {
	width: 50%;
	float: left;
	background: url(http://image2.megabox.co.kr/mop/home/dot.png) 5px 12px
		no-repeat;
	padding: 3px 0 3px 15px
}

header .header-wrap #login_wrap .join_btn ul li a {
	font-size: 13px;
	color: #4c4c4c;
	font-weight: bold
}

header .header-wrap .navigation {
	position: absolute;
	top: 0
}

header .header-wrap .navigation.login {
	padding-right: 0
}

header .header-wrap .navigation.login .login {
	display: block
}

header .header-wrap .navigation ul {
	overflow: hidden;
	padding-left: 170px
}

header .header-wrap .navigation ul li {
	float: left;
	border-right: 1px solid #e5e5e5
}

header .header-wrap .navigation ul li a {
	width: 107px;
	height: 49px;
	background-image: url('http://image2.megabox.co.kr/mop/home/gnb.png')
}

header .header-wrap .navigation ul li a.i0 {
	width: 60px;
	background: url('http://image2.megabox.co.kr/mop/home/home.png') 50% 50%
		no-repeat !important
}

header .header-wrap .navigation ul li a.i1 {
	background-position: -4px 0
}

header .header-wrap .navigation ul li a.i2 {
	background-position: -357px 0
}

header .header-wrap .navigation ul li a.i3 {
	background-position: -122px 0
}

header .header-wrap .navigation ul li a.i4 {
	background-position: -240px 0
}

header .header-wrap .navigation ul li a.i5 {
	background-position: -476px 0;
	position: relative
}

header .header-wrap .navigation ul li a.i5 .i_new {
	position: absolute;
	top: 4px;
	right: 6px;
	width: 16px;
	height: 16px;
	background: url('http://image2.megabox.co.kr/mop/home/store/badge.png')
		0 -140px no-repeat
}

header .header-wrap .navigation ul li a.i6 {
	background-position: -592px 0
}

header .header-wrap .navigation ul li a.i7 {
	width: 150px;
	background-position: -709px 0
}

header .header-wrap .navigation ul li a:hover, header .header-wrap .navigation ul li a:focus,
	header .header-wrap .navigation ul li a.on {
	background-image: url('http://image2.megabox.co.kr/mop/home/gnb_on.png')
}

header .header-wrap .navigation ul li:first-child {
	border-left: 1px solid #e5e5e5
}

header .header-wrap .navigation .logo {
	position: absolute;
	top: 10px
}

.btn_social {
	position: absolute;
	top: 28px;
	left: 102px
}

.btn_social a {
	height: 13px
}

.btn_social a:hover, .btn_social a:focus {
	color: #fff;
	text-decoration: none
}

.btn_social a.btn_app_info {
	position: relative;
	top: -2px;
	left: auto
}

.btn_social a.btn_app_info b {
	font-size: 13px
}

.btn_social a.film_society, .btn_social a.classic_society {
	font-weight: bold;
	font-size: 14px;
	color: #fff;
	line-height: 13px
}

.btn_social .split {
	margin: 0 12px;
	border-right: 1px solid #fff;
	height: 13px;
	vertical-align: middle
}

.btn_social.sub_c a {
	color: #555 !important
}

.btn_social.sub_c i {
	border-color: #888
}

.btn_theater {
	position: absolute;
	top: 21px;
	right: 0
}

.btn_theater button {
	float: left;
	height: 39px;
	width: 113px;
	background-position: 0 0
}

.btn_theater button.btn_time {
	background-position: 0 -100px;
	margin-right: 10px
}

.btn_theater button.btn_time:hover, .btn_theater button.btn_time:active
	{
	background-position: 0 -150px
}

.btn_theater button.btn_time.transparent {
	background-position: -300px -100px
}

.btn_theater button.btn_reservation {
	background-position: -150px -100px;
	padding-right: 19px
}

.btn_theater button.btn_reservation:hover, .btn_theater button.btn_reservation:active
	{
	background-position: -150px -150px
}

.btn_theater .membership_link {
	float: left;
	margin: 12px 24px
}

.btn_theater .membership_link>* {
	float: left;
	height: 13px
}

.btn_theater .membership_link .membership_txt {
	font-weight: bold;
	font-size: 14px;
	color: #fff;
	line-height: 13px
}

.btn_theater .membership_link .membership_txt:hover, .btn_theater .membership_link .membership_txt:active,
	.btn_theater .membership_link .membership_txt:focus {
	color: #fff;
	text-decoration: none
}

.btn_theater .membership_link .split {
	margin: 0 12px;
	border-left: 1px solid #fff
}

.btn_theater .membership_link.sub_c a {
	color: #555 !important
}

.btn_theater .membership_link.sub_c i {
	border-color: #888
}

.header-btn-wrap {
	width: 970px;
	height: 61px;
	position: relative;
	margin: 0 auto;
	margin-bottom: 25px;
	z-index: 20
}

.header-btn-wrap .btn_menu_all {
	margin-top: 24px;
	background-color: rgba(0, 0, 0, 0.6);
	border: 1px solid rgba(255, 255, 255, 0.6);
	color: rgba(255, 255, 255, 0.75);
	font-size: 12px;
	width: 82px;
	height: 30px;
	letter-spacing: -0.5px
}

.header-btn-wrap .btn_menu_all.sub_c {
	background-color: transparent;
	color: #555;
	border: 1px solid #555
}

.header-btn-wrap .btn_menu_all i {
	font-size: 13px;
	margin-right: 7px
}

.sub_navi {
	background-color: #f2f2f2;
	border-top: 1px solid #e1e1e1;
	border-bottom: 3px solid #503396
}

.sub_navi .sub_navi_wrap {
	position: relative;
	width: 970px;
	margin: 0 auto
}

.sub_navi ul li {
	position: relative;
	float: left;
	margin-right: 60px
}

.sub_navi ul li:last-child {
	margin-right: 0
}

.sub_navi ul li span.badge_movie_list {
	position: absolute;
	top: 4px;
	padding: 0 7px;
	display: block;
	height: 14px;
	line-height: 14px;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
	-ms-border-radius: 7px;
	-o-border-radius: 7px;
	border-radius: 7px;
	font-weight: 700;
	font-size: 10px;
	background-color: #503396;
	color: #fff
}

.sub_navi ul li a {
	display: block;
	overflow: hidden;
	text-indent: -9999px;
	width: 60px;
	height: 50px
}

.sub_navi ul li a.center {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_center.png)
		no-repeat
}

.sub_navi ul li a.center.sm01 {
	background-position: left center
}

.sub_navi ul li a.resting {
	width: 113px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/resting_title.png)
		no-repeat left center
}

.sub_navi ul li a.join {
	background:
		url(http://image3.megabox.co.kr/mop/home/btns/membership_join_title_150320.png)
		no-repeat left center
}

.sub_navi ul li a.movie {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_movie.png)
		0 0 no-repeat
}

.sub_navi ul li a.movie.sm01 {
	width: 70px;
	background-position: 0 0
}

.sub_navi ul li a.movie.sm01:hover, .sub_navi ul li a.movie.sm01:active,
	.sub_navi ul li a.movie.sm01.active {
	background-position: -400px 0
}

.sub_navi ul li a.movie.sm02 {
	width: 70px;
	background-position: 0 -50px
}

.sub_navi ul li a.movie.sm02:hover, .sub_navi ul li a.movie.sm02:active,
	.sub_navi ul li a.movie.sm02.active {
	background-position: -400px -50px
}

.sub_navi ul li a.movie.sm03 {
	width: 71px;
	background-position: 0 -100px
}

.sub_navi ul li a.movie.sm03:hover, .sub_navi ul li a.movie.sm03:active,
	.sub_navi ul li a.movie.sm03.active {
	background-position: -400px -100px
}

.sub_navi ul li a.movie.sm04 {
	width: 90px;
	background-position: 0 -150px
}

.sub_navi ul li a.movie.sm04:hover, .sub_navi ul li a.movie.sm04:active,
	.sub_navi ul li a.movie.sm04.active {
	background-position: -400px -150px
}

.sub_navi ul li a.movie.sm04+.badge_movie_list {
	left: 90px
}

.sub_navi ul li a.movie.sm05 {
	width: 90px;
	background-position: 0 -200px
}

.sub_navi ul li a.movie.sm05:hover, .sub_navi ul li a.movie.sm05:active,
	.sub_navi ul li a.movie.sm05.active {
	background-position: -400px -200px
}

.sub_navi ul li a.movie.sm06 {
	width: 95px;
	background-position: 0 -250px
}

.sub_navi ul li a.movie.sm06:hover, .sub_navi ul li a.movie.sm06:active,
	.sub_navi ul li a.movie.sm06.active {
	background-position: -400px -250px
}

.sub_navi ul li a.movie.sm06+.badge_movie_list {
	left: 95px
}

.sub_navi ul li a.movie.sm07 {
	width: 42px;
	background-position: 0 -300px
}

.sub_navi ul li a.movie.sm07:hover, .sub_navi ul li a.movie.sm07:active,
	.sub_navi ul li a.movie.sm07.active {
	background-position: -400px -300px
}

.sub_navi ul li a.movie.sm08 {
	width: 97px;
	background-position: 0 -350px
}

.sub_navi ul li a.movie.sm08:hover, .sub_navi ul li a.movie.sm08:active,
	.sub_navi ul li a.movie.sm08.active {
	background-position: -400px -350px
}

.sub_navi ul li a.movie.sm09 {
	width: 69px;
	background-position: 0 -400px
}

.sub_navi ul li a.movie.sm09:hover, .sub_navi ul li a.movie.sm09:active,
	.sub_navi ul li a.movie.sm09.active {
	background-position: -400px -400px
}

.sub_navi ul li a.movie.sm10 {
	width: 85px;
	background-position: 0 -450px
}

.sub_navi ul li a.movie.sm10:hover, .sub_navi ul li a.movie.sm10:active,
	.sub_navi ul li a.movie.sm10.active {
	background-position: -400px -450px
}

.sub_navi ul li a.movie.sm11 {
	width: 77px;
	background-position: 0 -500px
}

.sub_navi ul li a.movie.sm11:hover, .sub_navi ul li a.movie.sm11:active,
	.sub_navi ul li a.movie.sm11.active {
	background-position: -400px -500px
}

.sub_navi ul li a.movie.sm11+.badge_movie_list {
	left: 77px
}

.sub_navi ul li a.movie.sm12 {
	width: 113px;
	height: 30px;
	background:
		url('http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png')
		-306px -87px no-repeat
}

.sub_navi ul li a.event {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_event.png)
		0 0 no-repeat
}

.sub_navi ul li a.event.sm01 {
	width: 27px;
	background-position: 0 0
}

.sub_navi ul li a.event.sm01:hover, .sub_navi ul li a.event.sm01:active,
	.sub_navi ul li a.event.sm01.active {
	background-position: 0 -100px
}

.sub_navi ul li a.event.sm02 {
	width: 97px;
	background-position: -100px 0
}

.sub_navi ul li a.event.sm02:hover, .sub_navi ul li a.event.sm02:active,
	.sub_navi ul li a.event.sm02.active {
	background-position: -100px -100px
}

.sub_navi ul li a.event.sm03 {
	width: 70px;
	background-position: -200px 0
}

.sub_navi ul li a.event.sm03:hover, .sub_navi ul li a.event.sm03:active,
	.sub_navi ul li a.event.sm03.active {
	background-position: -200px -100px
}

.sub_navi ul li a.event.sm04 {
	width: 71px;
	background-position: -300px 0
}

.sub_navi ul li a.event.sm04:hover, .sub_navi ul li a.event.sm04:active,
	.sub_navi ul li a.event.sm04.active {
	background-position: -300px -100px
}

.sub_navi ul li a.event.sm05 {
	width: 84px;
	background-position: -400px 0
}

.sub_navi ul li a.event.sm05:hover, .sub_navi ul li a.event.sm05:active,
	.sub_navi ul li a.event.sm05.active {
	background-position: -400px -100px
}

.sub_navi ul li a.event.sm06 {
	width: 69px;
	background-position: -500px 0
}

.sub_navi ul li a.event.sm06:hover, .sub_navi ul li a.event.sm06:active,
	.sub_navi ul li a.event.sm06.active {
	background-position: -500px -100px
}

.sub_navi ul li a.event.sm07 {
	width: 84px;
	background-position: -600px 0
}

.sub_navi ul li a.event.sm07:hover, .sub_navi ul li a.event.sm07:active,
	.sub_navi ul li a.event.sm07.active {
	background-position: -600px -100px
}

.sub_navi ul li a.mypage {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_mypage.png)
		0 0 no-repeat
}

.sub_navi ul li a.mypage.sm01 {
	width: 85px;
	background-position: 0 0
}

.sub_navi ul li a.mypage.sm02 {
	width: 132px;
	background-position: 0 -50px
}

.sub_navi ul li a.sm0101 {
	background-position: 0 0
}

.sub_navi ul li a.sm0101:hover, .sub_navi ul li a.sm0101:active,
	.sub_navi ul li a.sm0101.active {
	background-position: -400px 0
}

.sub_navi ul li a.terms {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_terms.png)
		0 50% no-repeat;
	width: 56px
}

.sub_navi ul li a.new_megabox {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_newmegabox.png)
		0 17px no-repeat;
	width: 130px;
	margin-left: -117px
}

.sub_navi ul li a.new_megabox:hover, .sub_navi ul li a.new_megabox:active,
	.sub_navi ul li a.new_megabox.active {
	background-position: -400px 17px
}

.sub_navi ul li a.privateRent {
	width: 175px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_private.png)
		0 0 no-repeat;
	background-position: left center
}

.sub_navi.narrow li {
	margin-right: 50px
}

.sub_navi .want {
	position: absolute;
	top: 14px;
	right: 0;
	color: #333
}

.sub_navi .want span {
	display: inline-block;
	color: #333
}

.sub_navi .want .badge {
	display: inline-block;
	height: 20px;
	padding: 0 0 0 14px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_badge.png) 0 0
		no-repeat
}

.sub_navi .want .badge span {
	display: block;
	height: 100%;
	line-height: 21px;
	color: #fff;
	padding-right: 10px;
	margin-right: -2px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_badge.png) right
		0 no-repeat
}

.sub_depth2 {
	position: relative;
	width: 970px;
	margin: 0 auto;
	margin-top: 15px;
	height: 32px
}

.sub_depth2>ul>li {
	float: left;
	height: 14px;
	line-height: 13px;
	padding-left: 10px;
	margin-left: 10px;
	vertical-align: middle;
	border-left: 1px solid #ccc
}

.sub_depth2>ul>li:first-child {
	padding-left: 0;
	margin-left: 0;
	border: none
}

.sub_depth2>ul>li a {
	font-weight: 700;
	font-size: 13px;
	color: #666;
	text-decoration: none
}

.sub_depth2>ul>li a:hover, .sub_depth2>ul>li a.active {
	color: #503396
}

.memu_all {
	height: 485px;
	width: 970px;
	position: absolute;
	border: 1px solid #ccc;
	background-color: #f4f4f4;
	z-index: 1200;
	top: -565px;
	left: 50%;
	margin-left: -485px;
	-webkit-transition: all .3s ease-in-out;
	-moz-transition: all .3s ease-in-out;
	-o-transition: all .3s ease-in-out;
	-ms-transition: all .3s ease-in-out;
	transition: all .3s ease-in-out
}

.memu_all.menu_open {
	top: 0;
	height: 500px
}

.memu_all.menu_open>.menus {
	display: block
}

.memu_all .menus {
	display: none;
	overflow: hidden;
	height: 100%
}

.memu_all .menus .cols {
	width: 194px;
	float: left;
	border-right: 1px solid #ccc;
	height: 100%
}

.memu_all .menus .cols dl {
	margin-top: 30px;
	padding-top: 9px;
	padding-left: 30px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_header.png) 30px
		-198px no-repeat
}

.memu_all .menus .cols dl:first-child {
	margin-top: 40px
}

.memu_all .menus .cols dl dt {
	margin-bottom: 8px
}

.memu_all .menus .cols dl dt a {
	font-size: 14px;
	font-weight: 700;
	color: #333;
	text-decoration: none
}

.memu_all .menus .cols dl dt a:hover, .memu_all .menus .cols dl dt a:active
	{
	color: #198591
}

.memu_all .menus .cols dl dd {
	margin-bottom: 6px;
	line-height: 12px
}

.memu_all .menus .cols dl dd a {
	font-size: 12px;
	color: #666;
	text-decoration: none
}

.memu_all .menus .cols dl dd a:hover, .memu_all .menus .cols dl dd a:active
	{
	font-weight: 700
}

.memu_all .menus .cols.last {
	width: 192px;
	border: none;
	position: ralative
}

.memu_all .menus .cols .go_home {
	display: block;
	width: 193px;
	height: 107px;
	border-bottom: 1px solid #ccc;
	overflow: hidden;
	text-indent: -9999px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_header.png) 0 0
		no-repeat
}

.memu_all .menus .cols .go_home:hover, .memu_all .menus .cols .go_home:active
	{
	background-position: -193px 0
}

.memu_all .menus .cols .btn_participation {
	position: absolute;
	bottom: 0;
	width: 192px;
	height: 73px;
	border-top: 1px solid #ccc;
	color: #333;
	font-weight: 700;
	padding: 18px 0 0 20px;
	text-decoration: none;
	background:
		url(http://image2.megabox.co.kr/mop/home/bg_header_participation.png)
		136px 20px no-repeat
}

.memu_all .menus .cols .btn_participation span {
	display: block;
	font-size: 12px;
	color: #666;
	font-weight: normal
}

.memu_all .menus .cols .btn_participation:hover, .memu_all .menus .cols .btn_participation:active
	{
	background-position: 136px -36px
}

.memu_all .custom_close {
	top: 0
}

.memu_all.menu_open.SiteMapBn_ok {
	height: 580px
}

.memu_all.menu_open.SiteMapBn_ok .menus .cols .btn_participation {
	bottom: 80px
}

.header_bg_black {
	display: none;
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	background-color: #000;
	z-index: 1100;
	filter: alpha(opacity = 70);
	opacity: .7
}

.body_ovh {
	overflow: hidden
}

body.TopBn_ok {
	margin-top: 129px
}

body.TopBn_ok header {
	height: 130px
}

body.TopBn_ok header .header_TopBn {
	display: block
}

.header_TopBn {
	display: none;
	z-index: 10001;
	position: relative
}

.header_TopBn a {
	display: block;
	text-align: center
}

.header_TopBn .btn_close {
	width: 27px;
	height: 27px;
	position: absolute;
	top: 0;
	right: 50%;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_TopBn_close.png);
	margin-right: -485px;
	border: 0
}

.footer_theater {
	background-color: #333;
	margin-top: -49px
}

.footer_theater>div.wrap {
	width: 970px;
	margin: 0 auto;
	padding: 40px 0 40px 0;
	overflow: hidden
}

.footer_theater>div.wrap h4, .footer_theater>div.wrap dt,
	.footer_theater>div.wrap a {
	color: #fff;
	font-size: 14px;
	margin: 0;
	padding: 0
}

.footer_theater>div.wrap .mb18 {
	margin-bottom: 18px !important
}

.footer_theater>div.wrap a {
	font-size: 12px;
	filter: alpha(opacity = 70);
	opacity: .7
}

.footer_theater>div.wrap>dl {
	position: relative;
	padding: 0 0 15px 150px
}

.footer_theater>div.wrap>dl.dt_st1 {
	padding-left: 150px
}

.footer_theater>div.wrap>dl.dt_st2 {
	padding-left: 150px
}

.footer_theater>div.wrap>dl dt {
	position: absolute;
	top: 0;
	left: 0;
	font-weight: normal
}

.footer_theater>div.wrap>dl dd {
	float: left;
	padding-left: 10px;
	line-height: 18px
}

#footer {
	display: block;
	background-color: #221f1f
}

#footer .wrap {
	position: relative;
	width: 970px;
	margin: 0 auto;
	padding: 30px 0 40px;
	color: #999;
	font-size: 12px;
	line-height: 18px
}

#footer .wrap .text3 {
	position: absolute;
	right: 0;
	bottom: 40px
}

#footer ul {
	margin-bottom: 15px
}

#footer li {
	display: inline-block;
	position: relative;
	margin-right: 12px
}

#footer li a {
	font-size: 12px;
	color: #999
}

#footer li:before {
	content: "";
	display: block;
	position: absolute;
	top: 4px;
	left: -7px;
	height: 10px;
	border-left: 1px solid #999
}

#footer li.footer_company:before {
	border: 0
}

#footer .logo {
	margin-bottom: 17px
}

#footer .logo a {
	display: inline-block
}

#footer .ft_etc {
	position: absolute;
	top: 30px;
	right: 0;
	width: 268px;
	height: 104px;
	background:
		url('http://image2.megabox.co.kr/mop/home/footer_etc3_161221.png')
		no-repeat
}

#footer .ft_etc a {
	display: block;
	position: absolute;
	top: 74px;
	width: 30px;
	height: 30px
}

#footer .ft_etc .apple {
	left: 238px
}

#footer .ft_etc .android {
	left: 196px
}

#footer .ft_etc .instagram {
	left: 154px
}

#footer .ft_etc .facebook {
	left: 113px
}

#footer .ft_etc .twitter {
	left: 71px
}

#footer .ft_etc .remote {
	top: -3px;
	right: 0;
	height: 22px;
	width: 120px;
	background: url(http://image2.megabox.co.kr/mop/home/footer_remote.png)
}

.footer-check {
	overflow: hidden;
	padding: 8px 11px 0 11px
}

.footer-check img {
	display: block;
	float: left
}

.footer-check p.check {
	color: #999;
	font-size: 12px;
	float: right
}

.footer-check p.check input {
	width: auto;
	height: auto;
	margin: -2px 10px 0 0
}

.backface {
	-moz-backface-visibility: hidden;
	-webkit-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden
}

.rotatey0 {
	-moz-transform: perspective(800px) rotateY(0deg);
	-webkit-transform: perspective(800px) rotateY(0deg);
	-ms-transform: perspective(800px) rotateY(0deg);
	-o-transform: perspective(800px) rotateY(0deg);
	transform: perspective(800px) rotateY(0deg)
}

.rotatey180 {
	-moz-transform: perspective(800px) rotateY(180deg);
	-webkit-transform: perspective(800px) rotateY(180deg);
	-ms-transform: perspective(800px) rotateY(180deg);
	-o-transform: perspective(800px) rotateY(180deg);
	transform: perspective(800px) rotateY(180deg)
}

.rotatey-180 {
	-moz-transform: perspective(800px) rotateY(-180deg);
	-webkit-transform: perspective(800px) rotateY(-180deg);
	-ms-transform: perspective(800px) rotateY(-180deg);
	-o-transform: perspective(800px) rotateY(-180deg);
	transform: perspective(800px) rotateY(-180deg)
}

.ratatey179 {
	-moz-transform: perspective(800px) rotateY(179.9deg);
	-webkit-transform: perspective(800px) rotateY(179.9deg);
	-ms-transform: perspective(800px) rotateY(179.9deg);
	-o-transform: perspective(800px) rotateY(179.9deg);
	transform: perspective(800px) rotateY(179.9deg)
}

#flip_wrapper {
	margin: -7px auto;
	white-space: nowrap;
	word-wrap: break-word;
	width: 984px
}

#flip_wrapper .btn-lg {
	font-size: 14px;
	padding: 0;
	line-height: 46px;
	height: 46px;
	width: 97px
}

#flip_wrapper ul:after {
	content: "";
	display: block;
	clear: both
}

#flip_wrapper ul#mySeenMovieListAd li.item {
	width: 230px;
	height: 503px;
	border: none;
	margin: 0
}

#flip_wrapper li.item {
	display: block;
	width: 232px;
	height: 505px;
	border: 1px solid #d9d9d9;
	margin: 7px;
	float: left
}

#flip_wrapper li.item.movie_list_ad {
	float: right
}

#flip_wrapper li.item.movie_list_ad img {
	display: block
}

#flip_wrapper li.item.no_item {
	border-color: #f2f2f2
}

#flip_wrapper li.item .blank {
	display: block;
	overflow: hidden;
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0
}

#flip_wrapper li.item .thumb {
	width: 100%;
	height: 336px;
	position: relative
}

#flip_wrapper li.item .thumb .upper {
	width: 100%;
	position: absolute
}

#flip_wrapper li.item .thumb .upper img {
	width: 100%;
	height: 336px;
	display: block;
	z-index: -1
}

#flip_wrapper li.item .thumb .upper a {
	display: block
}

#flip_wrapper li.item .thumb .upper .end_event {
	display: block;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 230px;
	height: 60px;
	background: url(http://image2.megabox.co.kr/mop/home/event/bg_end.png) 0
		-320px no-repeat
}

#flip_wrapper li.item .thumb .upper .end_event span {
	display: none
}

#flip_wrapper li.item .thumb .upper .end_event.winner {
	background-position: 0 -225px;
	padding: 0
}

#flip_wrapper li.item .thumb .upper .end_event.winner>button {
	display: block;
	border: none;
	padding: 0;
	margin: 0;
	height: 100%;
	width: 100%;
	text-indent: -9999px;
	background: none
}

#flip_wrapper li.item .thumb .lower {
	width: 100%;
	height: 100%;
	position: absolute
}

#flip_wrapper li.item .thumb .lower .back_wrap {
	position: absolute;
	z-index: 1;
	width: 100%;
	padding: 9px
}

#flip_wrapper li.item .thumb .lower .back_wrap .star-wrap {
	position: absolute;
	top: 110px;
	left: 27px
}

#flip_wrapper li.item .thumb .lower .back_wrap p.text {
	position: absolute;
	top: 157px;
	left: 0;
	width: 232px;
	text-align: center;
	color: #fff;
	margin-bottom: 34px
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck {
	position: absolute;
	top: 260px;
	width: 115px;
	height: 76px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_you_ck2.png)
		no-repeat;
	letter-spacing: -999px;
	font-size: 0;
	border: 0;
	transition: inherit
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_01 {
	left: 0;
	background-position: 0 0
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_01.active,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_01.active:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_01:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_01:active
	{
	background-position: 0 bottom
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02 {
	left: 115px;
	width: 115px;
	background-position: -115px 0
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.active,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.active:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02:active
	{
	background-position: -115px bottom
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.full {
	left: 0;
	width: 230px;
	background: url('http://image2.megabox.co.kr/mop/home/bg_you_ck3.png') 0
		0 no-repeat
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.full.active,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.full.active:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.full:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_02.full:active
	{
	background-position: 0 bottom
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_03 {
	right: 0;
	background-position: right 0
}

#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_03.active,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_03.active:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_03:hover,
	#flip_wrapper li.item .thumb .lower .back_wrap .img_you_ck.btn_03:active
	{
	background-position: right bottom
}

#flip_wrapper li.item .thumb .lower .bg {
	display: block;
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	background-color: #000;
	zoom: 1;
	filter: alpha(opacity = 75);
	opacity: .75
}

#flip_wrapper li.item .thumb .lower .star-wrap {
	margin: 0 auto
}

#flip_wrapper li.item .thumb .lower img.back_poster {
	width: 230px;
	height: 336px
}

#flip_wrapper li.item .thumb.scroll {
	overflow: hidden
}

#flip_wrapper li.item .thumb.scroll .lower {
	top: 336px
}

#flip_wrapper li.item .thumb.scroll .lower .back_wrap {
	position: absolute;
	z-index: 1;
	width: 100%;
	padding: 9px
}

#flip_wrapper li.item .thumb.scroll .lower .back_wrap .star-wrap {
	margin: 100px auto 18px auto
}

#flip_wrapper li.item .thumb.scroll .lower .back_wrap p.text {
	text-align: center;
	color: #fff;
	margin-bottom: 34px
}

#flip_wrapper li.item .thumb.scroll .lower .back_wrap button {
	display: block;
	width: 123px;
	height: 45px;
	line-height: 45px;
	text-align: center;
	color: #fff;
	border: 1px solid #fff;
	background: none;
	margin: 0 auto 13px auto
}

#flip_wrapper li.item .thumb>div {
	position: absolute;
	left: 0;
	top: 0;
	-webkit-transition: .5s ease-in-out;
	-moz-transition: .5s ease-in-out;
	-ms-transition: .5s ease-in-out;
	-o-transition: .5s ease-in-out;
	transition: .5s ease-in-out
}

#flip_wrapper li.item .thumb div.lower {
	visibility: hidden;
	z-index: 1
}

#flip_wrapper li.item .thumb div.upper {
	visibility: visible;
	z-index: 2
}

#flip_wrapper li.item .thumb.flipIt div.lower {
	visibility: visible;
	z-index: 2
}

#flip_wrapper li.item .thumb.flipIt div.upper {
	visibility: visible;
	z-index: 1
}

#flip_wrapper li.item .front-info>.rating {
	overflow: hidden;
	border-bottom: 1px solid #d9d9d9;
	padding: 14px 13px
}

#flip_wrapper li.item .front-info>.rating span {
	display: block;
	float: left;
	font-weight: 700;
	color: #666
}

#flip_wrapper li.item .front-info>.rating span.star {
	float: right;
	position: relative;
	width: 119px;
	height: 20px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_star.png) 0 0
		no-repeat
}

#flip_wrapper li.item .front-info>.rating span.star .fill {
	position: absolute;
	width: 119px;
	height: 20px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_star.png) 0
		-20px no-repeat
}

#flip_wrapper li.item .front-info>.d_day {
	height: 50px;
	padding: 9px 25px;
	border-bottom: 1px solid #d9d9d9;
	font-weight: 700;
	font-size: 14px;
	line-height: 30px;
	color: #333
}

#flip_wrapper li.item .front-info>.d_day p {
	float: right;
	width: 87px;
	height: 30px;
	text-align: center;
	font-size: 18px;
	background: url(http://image2.megabox.co.kr/mop/home/movie/d_day.png);
	color: #fff
}

#flip_wrapper li.item .front-info>.d_day.no_day {
	text-align: center
}

#flip_wrapper li.item .front-info>.d_day.no_day p {
	float: none;
	margin: 0 auto;
	width: 130px;
	background-position: left -50px
}

#flip_wrapper li.item .front-info .movie_info {
	padding: 0 13px 14px 13px
}

#flip_wrapper li.item .front-info .movie_info h3, #flip_wrapper li.item .front-info .movie_info p
	{
	word-wrap: normal;
	width: 204px;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden
}

#flip_wrapper li.item .front-info .movie_info h3 {
	margin-top: 20px;
	margin-bottom: 14px;
	font-size: 20px;
	font-weight: bold;
	color: #363636
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate {
	display: inline-block;
	overflow: hidden;
	text-indent: -9999px;
	margin: -3px 10px 0 0;
	width: 20px;
	height: 21px;
	vertical-align: middle;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png)
		0 -200px no-repeat
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate.age_all {
	background-position: 0 -200px
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate.age_19 {
	background-position: -30px -200px
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate.age_12 {
	background-position: -60px -200px
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate.age_15 {
	background-position: -90px -200px
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate.age_unknown
	{
	background-position: -120px -200px
}

#flip_wrapper li.item .front-info .movie_info h3 .film_rate.age_blank {
	background: none !important
}

#flip_wrapper li.item .front-info .movie_info p {
	line-height: 24px;
	font-size: 14px;
	color: #b2b2b2
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap {
	margin-top: 16px;
	overflow: hidden
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap a {
	width: 97px;
	height: 46px;
	background-position: -150px 0;
	-webkit-transition: none;
	transition: none
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap a:hover,
	#flip_wrapper li.item .front-info .movie_info .btn_wrap a:active {
	background-position: -150px -50px
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap a:first-child {
	background-position: 0 0
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap a:first-child:hover,
	#flip_wrapper li.item .front-info .movie_info .btn_wrap a:first-child:active
	{
	background-position: 0 -50px
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap a.booking_big {
	width: 202px;
	height: 46px;
	background-position: 0 -300px
}

#flip_wrapper li.item .front-info .movie_info .btn_wrap a.booking_big:hover,
	#flip_wrapper li.item .front-info .movie_info .btn_wrap a.booking_big:active,
	#flip_wrapper li.item .front-info .movie_info .btn_wrap a.booking_big.active
	{
	background-position: 0 -350px
}

.img_btn {
	display: block;
	overflow: hidden;
	text-indent: -9999px;
	border: none;
	background-repeat: no-repeat;
	background: transparent;
	vertical-align: middle
}

.img_btn.header {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_header.png)
}

.img_btn.movie {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png)
}

.img_btn.booking {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking.png)
}

.img_btn.user {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_member.png)
}

.img_btn.resting {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_member.png)
}

.img_btn.customer {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_customer.png)
}

.img_btn.theater {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_theater.png)
}

.img_btn.membership {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/membership/bg.png)
}

.img_btn.mypage {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage.png)
}

h2 {
	margin: 0
}

h2>.sub_title {
	display: block;
	overflow: hidden;
	font-size: 20px;
	width: 100%
}

h2>.sub_title.st0101 {
	background-position: 0 0
}

h2>.sub_title.mypage.st01 {
	background-position: 0 0
}

h2>.sub_title.mypage.st02 {
	background-position: 0 -50px
}

h2>.sub_title.mypage.st03 {
	background-position: 0 -100px
}

h2>.sub_title.mypage.st04 {
	background-position: 0 -150px
}

h2>.sub_title.mypage.st05 {
	background-position: 0 -200px
}

h2>.sub_title.mypage.st051 {
	background-position: 0 -250px
}

h2>.sub_title.mypage.st06 {
	background-position: 0 -300px
}

h2>.sub_title.mypage.st07 {
	background-position: 0 -350px
}

h2>.sub_title.mypage.st08 {
	background-position: 0 -400px
}

h2>.sub_title.mypage.st09 {
	background-position: 0 -450px
}

h2>.sub_title.mypage.st10 {
	background-position: 0 -500px
}

h2>.sub_title.mypage.st11 {
	background-position: 0 -550px
}

h2>.sub_title.mypage.st12 {
	background-position: 0 -944px
}

h2>.sub_title.mypage.st13 {
	background-position: 0 -993px
}

h2>.sub_title.mypage.st_cancle {
	background-position: 0 -800px
}

h2>.sub_title.mypage.st14 {
	background-position: 0 -1041px
}

h2>.sub_title.customer.st01 {
	background-position: 0 0
}

h2>.sub_title.customer.st02 {
	background-position: 0 -50px
}

h2>.sub_title.customer.st03 {
	background-position: 0 -100px
}

h2>.sub_title.customer.st04 {
	background-position: 0 -150px
}

h2>.sub_title.customer.st05 {
	background-position: 0 -200px
}

h2>.sub_title.customer.st06 {
	background-position: 0 -250px
}

h2>.sub_title.customer.st07 {
	background-position: 0 -300px
}

h3 {
	margin: 0
}

h3.popup_title {
	display: inline-block;
	text-align: center
}

h3.popup_title>.h3_title.popup01 {
	display: inline-block;
	width: 176px;
	margin: 4px 0 0 0;
	background-position: 0 -700px
}

h3.popup_title>.h3_title.popup02 {
	display: inline-block;
	width: 105px;
	margin: 4px 0 0 0;
	background-position: 0 -750px
}

h3>.h3_title {
	display: block;
	overflow: hidden;
	text-indent: -9999px;
	height: 18px;
	width: 100%
}

h3>.h3_title.mypage {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/sub_title.png) 0 0
		no-repeat
}

h3>.h3_title.mypage.st0101 {
	background-position: 0 -550px
}

h3>.h3_title.mypage.st0102 {
	background-position: 0 -600px
}

h3>.h3_title.mypage.st0103 {
	background-position: 0 -650px
}

h4 {
	margin: 0 0 10px 0
}

h4>.h4_title {
	display: block;
	overflow: hidden;
	text-indent: -9999px;
	height: 14px;
	width: 100%
}

h4>.h4_title.mypage {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/sub_title_popup.png) 0
		0 no-repeat
}

h4>.h4_title.mypage.popup0101 {
	background-position: 0 0
}

h4>.h4_title.mypage.popup0102 {
	background-position: 0 -50px
}

h4>.h4_title.mypage.popup0201 {
	background-position: 0 -98px
}

h4>.h4_title.mypage.popup0202 {
	background-position: 0 -150px
}

.photo_profile img {
	width: 56px;
	height: 56px;
	display: block;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	-ms-border-radius: 30px;
	-o-border-radius: 30px;
	border-radius: 30px;
	border: 1px solid #ccc
}

.write_wrap {
	overflow: hidden;
	margin-bottom: 30px
}

.write_wrap .photo_profile {
	float: left;
	padding-top: 58px
}

.write_wrap .write {
	width: 807px;
	float: right
}

.write_wrap .write .name {
	overflow: hidden;
	margin: 7px 0 10px 0
}

.write_wrap .write .name span {
	float: right;
	color: #666;
	font-size: 14px
}

.write_wrap .write .name span:first-child {
	float: left;
	font-size: 18px;
	color: #333
}

.write_wrap .write .input {
	overflow: hidden;
	height: 86px;
	border: 1px solid #e1e1e1
}

.write_wrap .write .input>div {
	float: left
}

.write_wrap .write .input .rate {
	width: 158px
}

.write_wrap .write .input .rate .star-wrap-critic {
	margin: 22px auto 9px auto
}

.write_wrap .write .input .rate p {
	text-align: center;
	font-size: 12px;
	color: #666
}

.write_wrap .write .input .rate span {
	text-align: center;
	display: block;
	width: 53px;
	height: 53px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png)
		-618px -311px;
	background-repeat: no-repeat;
	font-size: 0;
	letter-spacing: -999px;
	color: transparent;
	margin: 16px auto
}

.write_wrap .write .input .textarea {
	width: 563px
}

.write_wrap .write .input .textarea textarea {
	height: 84px;
	font-size: 14px;
	border: none;
	border-left: 1px solid #e1e1e1;
	border-right: 1px solid #e1e1e1;
	background-color: #fff
}

.write_wrap .write .input .btn_wrap {
	width: 84px;
	height: 100%
}

.write_wrap .write .input .btn_wrap button[type=submit] {
	width: 100%;
	height: 100%;
	vertical-align: middle;
	background-position: -600px -100px
}

.write_wrap .write .input .btn_wrap button[type=submit]:hover,
	.write_wrap .write .input .btn_wrap button[type=submit]:active {
	background-position: -600px -200px
}

.write_wrap.no_rate .write .input .textarea {
	width: 721px
}

.write_wrap.no_rate .write .input .textarea textarea {
	border-left: none
}

.write_wrap.only_event .write .input .textarea {
	width: 680px
}

.write_wrap.only_event .write .input .textarea textarea {
	border-left: none
}

.write_wrap.edit_wrap {
	margin-bottom: 0
}

.write_wrap.edit_wrap .input {
	border: 0
}

.write_wrap.edit_wrap .write .input .textarea textarea {
	height: 62px;
	margin-top: 5px;
	border: 1px solid #e1e1e1;
	background: #f2f2f2
}

.write_wrap.edit_wrap .btn_wrap {
	padding-top: 25px;
	text-align: center
}

.write_wrap.edit_wrap .write {
	width: 765px
}

.write_wrap.edit_wrap .write .rate {
	height: 86px;
	border: 1px solid #e1e1e1;
	border-right: 0;
	background: #fff
}

.write_wrap.edit_wrap .write .textarea {
	width: 520px;
	height: 86px;
	border: 1px solid #e1e1e1;
	background: #fff
}

.write_wrap.edit_wrap .write .textarea textarea {
	height: 84px !important;
	margin: 0 !important;
	border: 0 none !important;
	background: #fff !important
}

.list button.recommend {
	background: none;
	border: none;
	color: #333;
	font-size: 14px
}

.list button.recommend i {
	color: #198591
}

.list button.recommend span {
	color: #666
}

.list .item {
	clear: both;
	overflow: hidden
}

.list .item>li {
	overflow: hidden;
	padding: 0 20px 20px;
	border-bottom: 1px solid #f0f0f0;
	position: relative
}

.list .item>li:first-child {
	border-top: 1px solid #f0f0f0
}

.list .item>li>div {
	float: left
}

.list .item .photo_profile {
	width: 80px;
	padding-top: 23px
}

.list .item .text {
	width: 660px;
	padding-top: 23px
}

.list .item .text .name {
	margin-bottom: 7px;
	overflow: hidden
}

.list .item .text .name strong {
	font-size: 18px;
	line-height: 18px;
	color: #333;
	display: inline-block;
	margin-right: 6px;
	float: left
}

.list .item .text .name span {
	font-size: 12px;
	color: #666;
	display: inline-block;
	margin-right: 6px;
	float: left
}

.list .item .text .name span.realView {
	font-size: 12px;
	display: inline-block;
	margin-left: 8 px;
	float: left;
	color: #e51837
}

.list .item .text .name .report {
	font-size: 12px;
	color: #e51837;
	cursor: pointer
}

.list .item .text .name .report .i_report {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png)
		!important;
	background-position: -180px -50px;
	background-repeat: no-repeat;
	overflow: hidden;
	display: inline-block;
	width: 15px;
	height: 15px;
	vertical-align: middle;
	margin-right: 3px
}

.list .item .text .name .btn_edit_wrap {
	position: absolute;
	padding: 5px 0;
	width: 150px;
	background: #fff;
	top: 45px;
	left: 310px;
	border: 1px solid #999;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Shadow(Strength=1, Direction=0, Color=#000000)";
	-moz-box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
	box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
	filter: progid:DXImageTransform.Microsoft.Shadow(Strength=1, Direction=135,
		Color=#000000);
	z-index: 1;
	min-height: 60px
}

.list .item .text .name .btn_edit_wrap a {
	display: block;
	font-size: 13px;
	color: #333;
	padding: 3px 15px 3px
}

.list .item .text .name .btn_edit_wrap a:hover {
	color: #008580
}

.list .item .text .name .btn_edit_wrap a:hover, .list .item .text .name .btn_edit_wrap a:active
	{
	text-decoration: none
}

.list .item .text .name .btn_edit_wrap:after, .list .item .text .name .btn_edit_wrap:before
	{
	right: 100%;
	top: 22px;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none
}

.list .item .text .name .btn_edit_wrap:after {
	border-color: rgba(136, 183, 213, 0);
	border-right-color: #ffffff;
	border-width: 7px;
	margin-top: 0
}

.list .item .text .name .btn_edit_wrap:before {
	border-color: rgba(194, 225, 245, 0);
	border-right-color: #999999;
	border-width: 9px;
	margin-top: -2px
}

.list .item .text .name .small_star2 {
	display: block;
	position: relative;
	width: 73px;
	height: 12px;
	background: url(http://image2.megabox.co.kr/mop/home/star_s.png) 0 -12px
		no-repeat;
	margin-top: 2px
}

.list .item .text .name .small_star2 .fill {
	position: absolute;
	width: 73px;
	height: 12px;
	background: url(http://image2.megabox.co.kr/mop/home/star_s.png) 0 0
		no-repeat
}

.list .item .text>p {
	color: #333;
	font-size: 14px;
	line-height: 20px
}

.list .item .text>p span {
	word-break: break-all
}

.list .item .text .edtiable_content {
	height: 60px;
	border: 1px solid #e1e1e1;
	background: #f2f2f1
}

.list .item .text>div>.small_star {
	margin-top: 12px
}

.list .item .btn_modify, .list .item .btn_delete, .list .item .my_review,
	.list .item .btn_cancle, .list .item .btn_edit {
	display: inline-block;
	overflow: hidden;
	width: 18px;
	height: 18px;
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/btns/bg_sm_btns.png) 0 0
		no-repeat;
	border: none;
	text-indent: -9999px;
	vertical-align: middle
}

.list .item .btn_delete {
	background-position: 0 0
}

.list .item .btn_delete:hover {
	background-position: 0 -30px
}

.list .item .btn_modify {
	background-position: -30px 0
}

.list .item .btn_modify:hover {
	background-position: -30px -30px
}

.list .item .my_review {
	width: 59px;
	height: 22px;
	background-position: -60px 0;
	margin-right: 3px
}

.list .item .btn_cancle {
	background-position: -60px -30px
}

.list .item .btn_edit {
	background-position: -90px -30px
}

.list .item div.recommend {
	float: right;
	width: 86px;
	height: 60px;
	margin-top: 23px;
	border: 1px solid #e1e1e1;
	cursor: pointer;
	background-color: #fff
}

.list .item div.recommend p {
	display: block;
	text-align: center;
	font-size: 12px;
	color: #666
}

.list .item div.recommend p strong {
	font-size: 20px;
	font-weight: bold;
	line-height: 20px;
	color: #503396
}

.list .item div.recommend p:first-child {
	margin-top: 10px;
	margin-bottom: 2px
}

.list .item_2block {
	clear: both;
	overflow: hidden;
	width: 100%;
	display: table;
	border-top: 1px solid #f0f0f0;
	border-bottom: 1px solid #f0f0f0
}

.list .item_2block .row {
	display: table-row;
	height: 100%
}

.list .item_2block .row:last-child .cell {
	border-bottom: none
}

.list .item_2block .row .my_list {
	border-right: 1px solid #ccc !important
}

.list .item_2block .row .cell {
	display: table-cell;
	vertical-align: top;
	width: 50%;
	height: 100%;
	border-bottom: 1px solid #f0f0f0;
	overflow: hidden;
	padding: 20px 20px;
	position: relative
}

.list .item_2block .row .cell:first-child {
	border-right: 1px solid #f0f0f0
}

.list .item_2block .row .cell>div {
	float: left
}

.list .item_2block .row .cell .photo_profile {
	width: 80px
}

.list .item_2block .row .cell .text {
	width: 78%;
	position: relative
}

.list .item_2block .row .cell .text .name {
	margin-bottom: 1px;
	overflow: hidden
}

.list .item_2block .row .cell .text .name strong {
	font-size: 18px;
	line-height: 18px;
	color: #503396;
	display: inline-block
}

.list .item_2block .row .cell .text .write_wrap .write2 {
	width: 100%;
	margin-top: 4px
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .rate {
	width: 100%;
	height: 30px;
	background-color: #fff;
	border: 1px solid #e1e1e1;
	border-bottom: none;
	padding: 2px 0 0 10px
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .rate .star-wrap-critic
	{
	float: left
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .rate p {
	float: left;
	font-size: 12px;
	line-height: 24px;
	margin-left: 20px;
	color: #666
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .rate span
	{
	text-align: center;
	display: block;
	width: 95px;
	height: 25px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png)
		-594px -396px;
	background-repeat: no-repeat;
	font-size: 0;
	letter-spacing: -999px;
	color: transparent
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .textarea
	{
	border: 1px solid #e1e1e1;
	margin-bottom: 20px
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .textarea textarea
	{
	width: 100%;
	height: 90px;
	font-size: 14px;
	border: none;
	background-color: #fff
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .btn_wrap2
	{
	text-align: right
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .btn_wrap2 button[type=submit]
	{
	width: 100%;
	height: 100%;
	vertical-align: middle;
	background-position: -600px -100px
}

.list .item_2block .row .cell .text .write_wrap .write2 .input .btn_wrap2 button[type=submit]:hover,
	.list .item_2block .row .cell .text .write_wrap .write2 .input .btn_wrap2 button[type=submit]:active
	{
	background-position: -600px -200px
}

.list .item_2block .row .cell .text>p {
	color: #333;
	font-size: 14px;
	line-height: 20px;
	margin: 4px 0 35px
}

.list .item_2block .row .cell .text>p span {
	word-break: break-all
}

.list .item_2block .row .cell .text .dateStarReal span {
	font-size: 12px;
	color: #666;
	display: inline-block;
	margin-right: 6px;
	float: left
}

.list .item_2block .row .cell .text .dateStarReal span.realView {
	font-size: 12px;
	display: inline-block;
	margin-left: 4px;
	padding-left: 8px;
	float: left;
	color: #503396;
	position: relative
}

.list .item_2block .row .cell .text .dateStarReal span.realView:before {
	content: "";
	position: absolute;
	left: 0;
	width: 1px;
	background: #999;
	height: 12px;
	margin-top: 3px
}

.list .item_2block .row .cell .text .dateStarReal .small_star2 {
	display: block;
	position: relative;
	width: 73px;
	height: 12px;
	background: url(http://image2.megabox.co.kr/mop/home/star_s.png) 0 -12px
		no-repeat;
	margin-top: 2px
}

.list .item_2block .row .cell .text .dateStarReal .small_star2 .fill {
	position: absolute;
	width: 73px;
	height: 12px;
	background: url(http://image2.megabox.co.kr/mop/home/star_s.png) 0 0
		no-repeat
}

.list .item_2block .row .cell .text .dateStarReal:after {
	content: '';
	display: block;
	height: 0;
	clear: both
}

.list .item_2block .row .cell .btn_wrap {
	position: absolute;
	bottom: 20px;
	left: 100px;
	width: 314.33px;
	text-align: right
}

.list .item_2block .row .cell .btn_wrap div.recommend {
	float: left;
	cursor: pointer;
	font-size: 12px;
	margin-right: 8px
}

.list .item_2block .row .cell .btn_wrap div.recommend .i_recommend {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png)
		!important;
	background-position: -242px -50px;
	background-repeat: no-repeat;
	overflow: hidden;
	display: inline-block;
	width: 16px;
	height: 15px;
	vertical-align: middle;
	margin: -1px 4px 0 0
}

.list .item_2block .row .cell .btn_wrap div.recommend strong {
	padding-left: 5px;
	font-weight: bold;
	color: #666
}

.list .item_2block .row .cell .btn_wrap .report {
	float: left;
	font-size: 12px;
	color: #999;
	cursor: pointer
}

.list .item_2block .row .cell .btn_wrap .report .i_report {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png)
		!important;
	background-position: -210px -50px;
	background-repeat: no-repeat;
	overflow: hidden;
	display: inline-block;
	width: 15px;
	height: 15px;
	vertical-align: middle;
	margin: -1px 5px 0 8px
}

.list .item_2block .row .cell .btn_wrap .report:before {
	content: "";
	position: absolute;
	width: 1px;
	background: #999;
	height: 12px;
	margin-top: 3px
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap {
	position: absolute;
	padding: 5px 0;
	width: 150px;
	background: #fff;
	top: -20px;
	left: 157px;
	border: 1px solid #999;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Shadow(Strength=1, Direction=0, Color=#000000)";
	-moz-box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
	box-shadow: 0 2px 1px rgba(0, 0, 0, 0.2);
	filter: progid:DXImageTransform.Microsoft.Shadow(Strength=1, Direction=135,
		Color=#000000);
	z-index: 1;
	text-align: left
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap a {
	display: block;
	font-size: 13px;
	color: #333;
	padding: 1px 15px 2px
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap a:hover {
	color: #008580
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap a:hover, .list .item_2block .row .cell .btn_wrap .btn_edit_wrap a:active
	{
	text-decoration: none
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap:after, .list .item_2block .row .cell .btn_wrap .btn_edit_wrap:before
	{
	right: 100%;
	top: 20px;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap:after {
	border-color: rgba(136, 183, 213, 0);
	border-right-color: #ffffff;
	border-width: 7px;
	margin-top: 0
}

.list .item_2block .row .cell .btn_wrap .btn_edit_wrap:before {
	border-color: rgba(194, 225, 245, 0);
	border-right-color: #999999;
	border-width: 9px;
	margin-top: -2px
}

.list .item_2block .row .cell .blind_list_wrap {
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	text-align: center;
	background: url(http://image2.megabox.co.kr/mop/home/blind_list_bg.png)
		100% 100%
}

.list .item_2block .row .cell .blind_list_wrap .blind_list {
	position: relative;
	top: 40%;
	display: block;
	margin: -25px 25px 0;
	background-color: #fff
}

.list .item_2block .row .cell .blind_list_wrap .blind_list .icon_blind {
	display: inline-block;
	width: 32px;
	height: 32px;
	background: url(http://image2.megabox.co.kr/mop/home/blind_list_img.png)
		no-repeat
}

.list .item_2block .row .cell .blind_list_wrap .blind_list .txt {
	display: block
}

.list .item_2block .edtiable_content {
	height: 60px;
	border: 1px solid #e1e1e1;
	background: #f2f2f1
}

.list .item_2block>div>.small_star {
	margin-top: 12px
}

.list .item_2block .btn_modify, .list .item_2block .btn_delete, .list .item_2block .my_review,
	.list .item_2block .btn_cancle, .list .item_2block .btn_edit {
	display: inline-block;
	overflow: hidden;
	width: 18px;
	height: 18px;
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/btns/bg_sm_btns.png) 0 0
		no-repeat;
	border: none;
	text-indent: -9999px;
	vertical-align: middle;
	margin-top: -5px
}

.list .item_2block .btn_delete {
	background-position: 0 0
}

.list .item_2block .btn_delete:hover {
	background-position: 0 -30px
}

.list .item_2block .btn_modify {
	background-position: -30px 0
}

.list .item_2block .btn_modify:hover {
	background-position: -30px -30px
}

.list .item_2block .my_review {
	width: 59px;
	height: 22px;
	background-position: -60px 0;
	margin-right: 3px
}

.list .item_2block .btn_cancle {
	background-position: -60px -30px
}

.list .item_2block .btn_edit {
	background-position: -90px -30px
}

.list.no_recommend .item .text {
	width: 808px
}

.popup_box {
	margin-bottom: 60px
}

.popup_box h3 {
	margin: 0 0 15px 0;
	font-size: 18px;
	color: #333
}

.popup_box h3 span {
	color: #666;
	font-size: 14px
}

.sort {
	overflow: hidden;
	padding-right: 6px
}

.sort li {
	float: left;
	padding-left: 10px;
	margin-left: 10px;
	border-left: 1px solid #ddd;
	line-height: 12px
}

.sort li a {
	color: #666;
	text-decoration: none;
	font-size: 12px
}

.sort li a:hover, .sort li a.selected {
	color: #198591
}

.sort li:first-child {
	padding: 0;
	margin: 0;
	border: none
}

.stillcut_wrap .thumbnail_list {
	height: 110px;
	margin-bottom: 30px
}

.stillcut_wrap .thumbnail_list button {
	display: block;
	float: left;
	width: 49px;
	height: 100%;
	border: none;
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/btns/bg_stillcut_btn.png)
		right 44px no-repeat
}

.stillcut_wrap .thumbnail_list>button:first-child {
	background-position: left 44px
}

.stillcut_wrap .thumbnail_list .viewport {
	position: relative;
	width: 790px;
	height: 100%;
	overflow: hidden;
	float: left
}

.stillcut_wrap .thumbnail_list .viewport ul {
	overflow: hidden;
	position: absolute
}

.stillcut_wrap .thumbnail_list .viewport ul li {
	height: 110px;
	float: left;
	position: relative;
	cursor: pointer
}

.stillcut_wrap .thumbnail_list .viewport ul li img {
	display: block;
	height: 100%
}

.stillcut_wrap .thumbnail_list .viewport ul li>span {
	display: none
}

.stillcut_wrap .thumbnail_list .viewport ul li:hover>span,
	.stillcut_wrap .thumbnail_list .viewport ul li.active>span,
	.stillcut_wrap .thumbnail_list .viewport ul li.mov>span, .stillcut_wrap .thumbnail_list .viewport ul li:hover>em,
	.stillcut_wrap .thumbnail_list .viewport ul li.active>em,
	.stillcut_wrap .thumbnail_list .viewport ul li.mov>em {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	filter: alpha(opacity = 70);
	opacity: .7
}

.stillcut_wrap .thumbnail_list .viewport ul li:hover>span,
	.stillcut_wrap .thumbnail_list .viewport ul li.active>span {
	border: 5px solid #198591
}

.stillcut_wrap .thumbnail_list .viewport ul li.mov>em {
	background:
		url(http://image2.megabox.co.kr/mop/home/movie/bg_stillcut.png) 50%
		50% no-repeat
}

.stillcut_wrap .stillcut {
	position: relative;
	width: 888px;
	height: 502px;
	line-height: 502px;
	vertical-align: middle;
	text-align: center;
	border: 1px solid #e1e1e1;
	background: #000;
	overflow: hidden
}

.stillcut_wrap .stillcut img {
	display: inline-block;
	max-width: 100%;
	max-height: 100%;
	margin-top: -7px;
	*margin-top: -5px
}

.stillcut_wrap .stillcut .btn_wrap button {
	position: absolute;
	top: 50%;
	right: 10px;
	display: block;
	float: left;
	width: 45px;
	height: 75PX;
	margin-top: -35px;
	border: none;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/bg_stillcut_btn.png)
		-57px -428px no-repeat
}

.stillcut_wrap .stillcut .btn_wrap>button:first-child {
	left: 10px;
	right: auto;
	background-position: 2px -428px
}

.view_more {
	display: block;
	color: #666;
	height: 45px;
	margin: 20px auto 0 !important;
	line-height: 45px;
	text-align: center;
	font-size: 18px;
	background-color: #f9f9f9;
	border: none;
	max-width: 970px
}

.view_more.full_width {
	width: 100%
}

.custom_close {
	position: absolute;
	right: -1px;
	top: -38px;
	width: 38px !important;
	height: 38px !important;
	margin: 0 !important;
	border: 1px solid #cdcdcd !important;
	background: #ffffff
		url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png) 9px 9px
		no-repeat !important;
	opacity: 1;
	filter: alpha(opacity = 100)
}

.custom_close2 {
	position: absolute;
	right: 0;
	top: 0;
	width: 38px !important;
	height: 38px !important;
	margin: 0 !important;
	border: 0;
	background: #f4f4f4
		url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png) 9px 9px
		no-repeat !important;
	opacity: 1;
	filter: alpha(opacity = 100)
}

.ps-container .ps-scrollbar-x-rail {
	position: absolute;
	bottom: 3px;
	height: 5px;
	background-color: #fff
}

.ps-container .ps-scrollbar-y-rail {
	position: absolute;
	right: 0;
	width: 5px;
	background-color: #fff;
	display: block
}

.ps-container .ps-scrollbar-x {
	position: absolute;
	bottom: 0;
	height: 5px;
	background-color: #aaa;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px
}

.ps-container .ps-scrollbar-y {
	position: absolute;
	right: 0;
	width: 5px;
	background-color: #aaa;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px
}

.ps-container.ie .ps-scrollbar-x, .ps-container.ie .ps-scrollbar-y {
	visibility: hidden
}

.modal-scrollable {
	position: absolute
}

.modal .wrapper .contents {
	-webkit-box-shadow: 0 6px 10px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 6px 10px rgba(0, 0, 0, 0.5);
	box-shadow: 0 6px 10px rgba(0, 0, 0, 0.5)
}

.modal .img_btn.popup_save {
	width: 68px;
	height: 30px;
	background-position: 0 -350px
}

.modal .img_btn.popup_save:hover, .modal .img_btn.popup_save:active {
	background-position: 0 -400px
}

.modal .img_btn.popup_close {
	width: 68px;
	height: 30px;
	background-position: -150px -350px
}

.modal .img_btn.popup_close:hover, .modal .img_btn.popup_close:active {
	background-position: -150px -400px
}

.icon_list {
	font-size: 12px
}

.icon_list dt {
	color: #333;
	line-height: 22px
}

.icon_list li, .icon_list dd {
	line-height: 21px;
	background: url(http://image2.megabox.co.kr/mop/home/icon_list.png) 0
		7px no-repeat;
	color: #666;
	padding-left: 12px;
	letter-spacing: -0.5px
}

.icon_list li span, .icon_list dd span {
	color: #198591
}

.icon_list li.no_icon, .icon_list dd.no_icon {
	padding-left: 0;
	background: none
}

.icon_list li.no_bg_tab_tx, .icon_list dd.no_bg_tab_tx {
	padding-left: 20px;
	background: none
}

.icon_list.theater {
	margin-left: 25px
}

.icon_list.theater dt, .icon_list.theater dd {
	font-size: 13px;
	color: #333
}

.icon_list.dark dt {
	color: #ccc
}

.icon_list.dark dd {
	color: #666
}

.icon_list.mypage li {
	font-size: 13px;
	color: #333;
	margin-bottom: 4px
}

.icon_list.mypage li:last-child {
	margin-bottom: 0
}

.icon_list.mypage dt {
	position: relative;
	font-size: 14px;
	margin-bottom: 11px
}

.icon_list.mypage dd {
	font-size: 13px;
	margin-bottom: 6px
}

.icon_list.asterisk_list li {
	background-image: url(http://image2.megabox.co.kr/mop/home/asterisk.png)
}

.text_list_st1 li {
	position: relative
}

.text_list_st1 li span {
	position: absolute;
	left: 0
}

.text_list_st2 {
	position: relative
}

.text_list_st2 span {
	position: absolute;
	left: 0
}

.sticky_header {
	position: absolute;
	top: 630px;
	z-index: 100;
	height: 52px;
	width: 100%;
	margin: 0 !important;
	background-color: #fff
}

.sticky_header.fxd {
	position: fixed;
	top: 50px !important
}

.sticky_header ul {
	overflow: hidden;
	height: 100%;
	width: 970px;
	margin: 0 auto
}

.sticky_header ul li {
	float: left;
	position: relative;
	margin-right: 50px
}

.sticky_header ul li.top {
	margin-right: 0
}

.sticky_header ul li.top {
	margin-right: 20px;
	float: right
}

.sticky_header ul li.top>a, .sticky_header ul li.top>a.active {
	color: #333
}

.sticky_header ul li.top:before {
	display: none
}

.sticky_header ul li a {
	display: block;
	height: 52px;
	overflow: hidden;
	text-indent: -9999px;
	cursor: pointer
}

.sticky_header ul li a.active {
	color: #198591
}

.sticky_header ul li:before {
	content: "";
	position: absolute;
	top: 18px;
	left: -25px;
	height: 16px;
	border-left: 2px solid #DDD
}

.sticky_header .top a {
	background: none !important;
	text-indent: 0;
	width: auto !important
}

.sticky_header .top a i {
	font-size: 24px;
	margin-top: 15px
}

.sticky_header.theater a {
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_theater.png) 0 0
		no-repeat
}

.sticky_header.theater a.menu1 {
	width: 80px;
	background-position: 0 -700px
}

.sticky_header.theater a.menu1:hover, .sticky_header.theater a.menu1:active,
	.sticky_header.theater a.menu1.active {
	background-position: 0 -800px
}

.sticky_header.theater a.menu2 {
	width: 62px;
	background-position: -100px -700px
}

.sticky_header.theater a.menu2:hover, .sticky_header.theater a.menu2:active,
	.sticky_header.theater a.menu2.active {
	background-position: -100px -800px
}

.sticky_header.theater a.menu3 {
	width: 111px;
	background-position: -200px -700px
}

.sticky_header.theater a.menu3:hover, .sticky_header.theater a.menu3:active,
	.sticky_header.theater a.menu3.active {
	background-position: -200px -800px
}

.sticky_header.theater a.menu4 {
	width: 48px;
	background-position: -350px -700px
}

.sticky_header.theater a.menu4:hover, .sticky_header.theater a.menu4:active,
	.sticky_header.theater a.menu4.active {
	background-position: -350px -800px
}

.sticky_header.theater a.menu5 {
	width: 87px;
	background-position: -450px -700px
}

.sticky_header.theater a.menu5:hover, .sticky_header.theater a.menu5:active,
	.sticky_header.theater a.menu5.active {
	background-position: -450px -800px
}

.sticky_header.membership {
	top: auto
}

.sticky_header.membership a {
	width: 82px;
	background:
		url(http://image2.megabox.co.kr/mop/home/membership/sticky.png) 0 50%
		no-repeat
}

.sticky_header.membership a.menu2 {
	background-position: -113px 50%
}

.sticky_header.membership a.menu3 {
	background-position: -226px 50%
}

.sticky_header.membership a.menu4 {
	background-position: -339px 50%
}

.sticky_header.membership a.menu5 {
	width: 98px;
	background-position: -633px 50%
}

.sticky_header.membership a.menu6 {
	width: 80px;
	background-position: -760px 50%
}

.sticky_header.membership a.menu0 {
	background-position: 100% 50%
}

.sticky_header.membership a:hover, .sticky_header.membership a:active,
	.sticky_header.membership a.active {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/membership/sticky_on.png)
}

.sticky_header.store {
	top: auto
}

.sticky_header.store a {
	width: 32px;
	background: url(http://image2.megabox.co.kr/mop/home/store/sticky.png) 0
		50% no-repeat
}

.sticky_header.store a.menu1 {
	width: 63px
}

.sticky_header.store a.menu2 {
	background-position: -122px 50%
}

.sticky_header.store a.menu3 {
	background-position: -214px 50%
}

.sticky_header.store a.menu4 {
	background-position: -305px 50%
}

.sticky_header.store a:hover, .sticky_header.store a:active,
	.sticky_header.store a.active {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/store/sticky_on.png)
}

.sticky_header.company {
	top: auto
}

.sticky_header.company ul li a {
	font-weight: bold;
	font-size: 18px;
	line-height: 52px;
	color: #333;
	text-indent: inherit
}

.sticky_header.company ul li a:hover, .sticky_header.company ul li a.active
	{
	text-decoration: none;
	color: #198591
}

.sticky_header.card .top a {
	background: none;
	text-indent: 0;
	width: auto
}

.sticky_header.card .top a i {
	font-size: 24px;
	margin-top: 15px
}

.sticky_header.card a {
	background: url(http://image2.megabox.co.kr/mop/home/card/btn_menu.png)
		0 0 no-repeat
}

.sticky_header.card a.menu1 {
	width: 109px;
	background-position: 0 0
}

.sticky_header.card a.menu1:hover, .sticky_header.card a.menu1:active,
	.sticky_header.card a.menu1.active {
	background-position: 0 -100px
}

.sticky_header.card a.menu2 {
	width: 94px;
	background-position: -167px 0
}

.sticky_header.card a.menu2:hover, .sticky_header.card a.menu2:active,
	.sticky_header.card a.menu2.active {
	background-position: -167px -100px
}

.sticky_header.card a.menu3 {
	width: 110px;
	background-position: -290px 0
}

.sticky_header.card a.menu3:hover, .sticky_header.card a.menu3:active,
	.sticky_header.card a.menu3.active {
	background-position: -290px -100px
}

.sticky_header.card a.menu4 {
	width: 102px;
	background-position: -461px 0
}

.sticky_header.card a.menu4:hover, .sticky_header.card a.menu4:active,
	.sticky_header.card a.menu4.active {
	background-position: -461px -100px
}

.sticky_header.recruit {
	top: auto;
	border-bottom: 1px solid #ccc
}

.sticky_header.recruit a {
	font-weight: bold;
	font-size: 18px;
	line-height: 52px;
	text-indent: 0 !important;
	color: #333;
	text-decoration: none
}

.sticky_header.recruit a:hover, .sticky_header.recruit a:active,
	.sticky_header.recruit a.active {
	color: #198591;
	text-decoration: none
}

.custom_alert_wrap {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto
}

.custom_alert_wrap.overFlowVisible {
	overflow: visible
}

.custom_alert {
	background-color: #fff;
	position: absolute;
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 450px;
	z-index: 10030;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5)
}

.custom_alert.alert_img {
	width: auto
}

.custom_alert .ca_header {
	position: relative;
	padding-top: 12px;
	height: 42px;
	text-align: center;
	border-bottom: 1px solid #e5e5e5
}

.custom_alert .ca_header h6 {
	margin: 0;
	font-size: 18px
}

.custom_alert .ca_header .btn_ca_close {
	width: 17px;
	height: 17px;
	position: absolute;
	top: 12px;
	right: 16px;
	background-position: -510px -460px
}

.custom_alert .ca_body {
	padding: 30px 20px 15px;
	text-align: center;
	font-size: 13px;
	line-height: 26px
}

.custom_alert .ca_body.seenMovieRegister {
	padding-bottom: 30px
}

.custom_alert .ca_body.seenMovieRegister .seenMovieInfo .column {
	margin-bottom: 8px
}

.custom_alert .ca_body.seenMovieRegister .seenMovieInfo .column input {
	height: 30px;
	width: 200px;
	text-indent: 8px
}

.custom_alert .ca_body.seenMovieRegister .seenMovieInfo .column+button {
	width: 100%;
	height: 30px;
	border: 1px solid #503396;
	color: #503396;
	background-color: #fff;
	text-align: center
}

.custom_alert .ca_body2 {
	padding: 30px 20px 15px;
	text-align: center;
	font-size: 13px;
	line-height: 26px
}

.custom_alert .ca_body2 p.txt {
	margin: 15px 0 40px 0;
	font-size: 15px;
	font-weight: 500;
	color: #53565a;
	letter-spacing: -0.2px
}

.custom_alert .ca_footer {
	padding: 20px;
	text-align: center;
	color: #e1e1e1
}

.custom_alert .ca_footer button {
	margin: 0 5px;
	display: inline-block;
	width: 68px;
	height: 30px
}

.custom_alert .ca_footer button.ok {
	background-position: -80px 0
}

.custom_alert .ca_footer button.ok:hover, .custom_alert .ca_footer button.ok:active
	{
	background-position: -80px -40px
}

.custom_alert .ca_footer button.myinfo {
	width: 118px;
	background-position: 0 -550px
}

.custom_alert .ca_footer button.oneonone {
	width: 111px;
	background-position: -800px -550px
}

.custom_alert .ca_footer button.point_info {
	width: 238px;
	background-position: -510px -550px
}

.custom_alert .ca_footer button.vip_info {
	width: 160px;
	background-position: -510px -600px
}

.custom_alert .ca_footer button.btn_close {
	background-position: left top
}

.custom_alert .ca_footer button.btn_close:hover, .custom_alert .ca_footer button.btn_close:active
	{
	background-position: left -40px
}

.custom_alert .ca_footer button.btn_au_id {
	background-position: -400px -80px;
	width: 174px
}

.custom_alert .ca_footer button.btn_ids {
	background-position: -800px -600px;
	width: 105px
}

.custom_alert .ca_footer button.btn_regst_go {
	background-position: -584px -80px;
	width: 118px
}

.custom_alert .ca_footer button.btn_regst_lt {
	background-position: -712px -80px;
	width: 107px
}

.custom_alert .ca_footer button.btn_mod_go {
	background-position: -829px -80px;
	width: 118px
}

.custom_alert .ca_footer button.september {
	background-position: -151px -649px;
	width: 165px
}

.custom_alert .ca_footer a {
	margin: 0 10px;
	font-weight: 700;
	font-size: 13px;
	color: #000
}

.custom_alert .ca_footer.mR {
	color: #333;
	padding-top: 0
}

.custom_alert .ca_footer.mR p {
	font-size: 15px;
	margin-bottom: 15px
}

.custom_alert .ca_footer.mR .mInfo .title {
	font-size: 18px;
	font-weight: bold;
	border-bottom: 1px solid #333
}

.custom_alert .ca_footer.mR .mInfo button {
	padding: 8px 60px;
	width: auto;
	height: auto;
	font-size: 16px
}

.custom_alert .social_popupLogin {
	width: 542px;
	padding: 30px;
	padding-bottom: 0;
	text-align: center
}

.custom_alert .social_popupLogin h4 {
	font-size: 16px;
	font-weight: 500;
	text-align: left
}

.custom_alert .social_popupLogin .butArea {
	margin-bottom: 33px;
	padding-left: 150px
}

.custom_alert .social_popupLogin .butArea .selectType {
	float: left;
	background: #fff;
	width: 106px;
	height: 35px;
	line-height: 35px
}

.custom_alert .social_popupLogin .butArea .selectType.mem {
	margin-right: -1px
}

.custom_alert .social_popupLogin .butArea .selectType.mem a {
	border-right: none
}

.custom_alert .social_popupLogin .butArea .selectType a {
	display: block;
	color: #503a92;
	font-size: 13px;
	border: 1px solid #503a92
}

.custom_alert .social_popupLogin .butArea .selectType a:hover,
	.custom_alert .social_popupLogin .butArea .selectType a:active,
	.custom_alert .social_popupLogin .butArea .selectType a:focus,
	.custom_alert .social_popupLogin .butArea .selectType a:visited {
	text-decoration: none
}

.custom_alert .social_popupLogin .butArea .selectType a.on {
	background: #503a92;
	color: #fff
}

.custom_alert .social_popupLogin .so_login_wrap {
	padding: 8px 0;
	width: 240px;
	letter-spacing: -1px;
	line-height: 1.5;
	text-align: left
}

.custom_alert .social_popupLogin .so_login_wrap h4.loginTitle {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png) 0
		-8px no-repeat;
	height: 17px;
	padding-left: 75px
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password {
	position: relative;
	margin-top: 15px;
	padding: 0;
	background: none
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password .so_login_id,
	.custom_alert .social_popupLogin .so_login_wrap .so_new_password .so_login_pw
	{
	position: relative;
	margin-bottom: 8px
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password input {
	position: relative;
	width: 165px;
	background-color: #f8f8f8;
	z-index: 10
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password label {
	position: absolute;
	font-weight: normal;
	font-size: 12px;
	z-index: 9
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password label.book-id
	{
	left: 15px;
	top: 7px
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password label.book-pw
	{
	left: 15px;
	top: 7px
}

.custom_alert .social_popupLogin .so_login_wrap .so_new_password .btn_alert_login
	{
	position: absolute;
	right: 0;
	top: 0
}

.custom_alert .social_popupLogin .so_login_wrap .so_login_m {
	margin-top: 35px
}

.custom_alert .social_popupLogin .so_login_wrap .so_login_m li {
	float: left;
	width: 33.33%
}

.custom_alert .social_popupLogin .so_login_wrap .so_login_m li a {
	font-weight: bold;
	color: #000
}

.custom_alert .social_popupLogin .so_login_wrap .so_login_m li.m2 {
	position: relative
}

.custom_alert .social_popupLogin .so_login_wrap .so_login_m li.m2:before
	{
	position: absolute;
	left: 0;
	top: 4px;
	display: block;
	width: 1px;
	height: 13px;
	content: "";
	background-color: #ccc
}

.custom_alert .social_popupLogin .so_login_wrap .so_login_m li.m2:after
	{
	left: auto;
	right: 0
}

.custom_alert .social_popupLogin .orLine {
	float: left;
	border-left: 1px solid #f2f2f2;
	height: 162px;
	margin: 0 34px 0 44px
}

.custom_alert .social_popupLogin .orLine span {
	width: 28px;
	height: 28px;
	display: block;
	margin: 63px 0 0 -15px;
	text-indent: 9999px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png) 0
		-80px no-repeat
}

.custom_alert .social_popupLogin .socialLogin_wrap {
	padding: 8px 0;
	text-align: left
}

.custom_alert .social_popupLogin .socialLogin_wrap ul li {
	border: 1px solid #d8d8d8;
	border-radius: 5px;
	width: 150px;
	height: 32px;
	text-align: center;
	line-height: 32px;
	margin: 5px 0;
	box-shadow: 0 1px 0 #f0f0f0
}

.custom_alert .social_popupLogin .socialLogin_wrap ul li a {
	color: #999;
	font-size: 12px;
	font-weight: bold
}

.custom_alert .social_popupLogin .socialLogin_wrap ul li i.social_kakao
	{
	width: 41px;
	height: 12px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png)
		-70px -50px no-repeat
}

.custom_alert .social_popupLogin .socialLogin_wrap ul li i.social_payco
	{
	width: 43px;
	height: 10px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png)
		-130px -50px no-repeat
}

.custom_alert .social_popupLogin .inputArea {
	width: 220px;
	border-right: 1px solid #f1f1f1;
	padding: 8px 20px 8px 0
}

.custom_alert .social_popupLogin .inputArea input {
	width: 200px;
	height: 32px;
	background: #fff;
	border: none;
	border-bottom: 1px solid #e1e1e1
}

.custom_alert .social_popupLogin .agreementArea {
	width: 250px
}

.custom_alert .social_popupLogin .agreementArea .scrollY {
	width: 250px;
	height: 145px;
	overflow-y: scroll;
	background-color: #f7f7f7
}

.custom_alert .social_popupLogin .agreementArea .scrollY .disT {
	display: table;
	padding: 5px
}

.custom_alert .social_popupLogin .agreementArea .scrollY .disT .disTr {
	display: table-row;
	text-align: left
}

.custom_alert .social_popupLogin .agreementArea .scrollY .disT .disTr .disTc
	{
	display: table-cell;
	text-align: left;
	font-size: 12px;
	color: #808080;
	letter-spacing: -0.1px;
	padding-bottom: 15px
}

.custom_alert .social_popupLogin .agreementArea .scrollY .disT .disTr .disTc.ti
	{
	font-weight: bold;
	color: #333;
	width: 55px
}

.custom_alert .social_popupLogin .bottomArea {
	width: 542px;
	height: 90px;
	border-top: 1px solid #d4d4d4;
	margin: 30px -30px 0 -30px;
	overflow: hidden
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree {
	background: #f2f2f2;
	padding: 15px 25px;
	text-align: left
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree h5 {
	display: inline-block;
	font-size: 13px;
	margin: 0;
	padding: 0;
	padding-right: 30px
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree .customer_radio_wrap
	{
	margin: 0;
	display: inline-block
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree .customer_radio_wrap span.iradio_minimal
	{
	vertical-align: middle;
	display: inline-block;
	width: 18px;
	height: 18px;
	position: relative
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree .customer_radio_wrap span.iradio_minimal input
	{
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 16px;
	height: 16px;
	padding: 0;
	margin: 0;
	background: #fff;
	z-index: 0;
	border: 0;
	opacity: 1
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree .customer_radio_wrap span.iradio_minimal ins
	{
	position: absolute;
	width: 16px;
	height: 16px;
	top: 0;
	left: 0;
	background-color: transparent;
	z-index: 0
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree .info {
	font-size: 11px;
	margin-top: 5px;
	line-height: 1.3
}

.custom_alert .social_popupLogin .bottomArea.doyouAgree .img_btn.popup {
	width: 120px;
	height: 46px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/socialLogin_bg.png)
		-80px -100px no-repeat;
	margin: 6px 0
}

.custom_alert .ca_ad_wrap {
	margin: -10px 0 20px;
	padding-right: 20px;
	border-right: 1px solid #f1f1f1
}

.custom_alert .ca_ad_wrap .ad_box {
	display: block;
	width: 200px;
	height: 170px;
	background-color: #dedede
}

.custom_alert .ca_login_wrap {
	margin-top: -10px;
	padding: 8px 0 0 20px;
	width: 260px;
	letter-spacing: -1px;
	line-height: 1.5;
	text-align: left
}

.custom_alert .ca_login_wrap .ca_new_password {
	position: relative;
	margin-top: 15px;
	padding: 0;
	background: none
}

.custom_alert .ca_login_wrap .ca_new_password .ca_login_id,
	.custom_alert .ca_login_wrap .ca_new_password .ca_login_pw {
	position: relative;
	margin-bottom: 8px
}

.custom_alert .ca_login_wrap .ca_new_password input {
	position: relative;
	width: 165px;
	background-color: #f8f8f8;
	z-index: 10
}

.custom_alert .ca_login_wrap .ca_new_password label {
	position: absolute;
	font-weight: normal;
	font-size: 12px;
	z-index: 9
}

.custom_alert .ca_login_wrap .ca_new_password label.book-id {
	left: 15px;
	top: 7px
}

.custom_alert .ca_login_wrap .ca_new_password label.book-pw {
	left: 15px;
	top: 7px
}

.custom_alert .ca_login_wrap .ca_new_password .btn_alert_login {
	position: absolute;
	right: 0;
	top: 0
}

.custom_alert .ca_login_wrap .ca_login_m {
	margin-top: 20px
}

.custom_alert .ca_login_wrap .ca_login_m li {
	float: left;
	width: 33.33%
}

.custom_alert .ca_login_wrap .ca_login_m li a {
	font-weight: bold;
	color: #000
}

.custom_alert .ca_login_wrap .ca_login_m li.m2 {
	position: relative
}

.custom_alert .ca_login_wrap .ca_login_m li.m2:before, .custom_alert .ca_login_wrap .ca_login_m li.m2:after
	{
	position: absolute;
	left: 0;
	top: 4px;
	display: block;
	width: 1px;
	height: 13px;
	content: "";
	background-color: #ccc
}

.custom_alert .ca_login_wrap .ca_login_m li.m2:after {
	left: auto;
	right: 0
}

.custom_alert .ca_login_wrap .ca_login_m li.line_none:after {
	background: none !important
}

.custom_alert .ca_new_password {
	background-color: #f2f2f2;
	padding: 20px 50px
}

.custom_alert .ca_new_password li {
	overflow: hidden;
	position: relative
}

.custom_alert .ca_new_password li strong, .custom_alert .ca_new_password li span
	{
	display: block;
	float: left
}

.custom_alert .ca_new_password li strong {
	width: 110px;
	padding-top: 6px;
	font-size: 13px
}

.custom_alert .ca_new_password li span {
	width: 240px
}

.custom_alert .ca_new_password li span span {
	margin-top: 3px;
	margin-bottom: 18px;
	font-size: 11px;
	line-height: 22px;
	color: #198591
}

.custom_alert .ca_new_password li input {
	position: relative;
	background-color: #fff;
	z-index: 10
}

.custom_alert .ca_new_password li label {
	position: absolute;
	font-weight: normal;
	font-size: 12px;
	z-index: 9
}

.custom_alert .ca_new_password li label.book-id {
	left: 15px;
	top: 7px
}

.custom_alert .ca_new_password li label.book-pw {
	left: 169px;
	top: 7px
}

.custom_alert .ca_notice {
	padding: 15px;
	border: 1px solid #e1e1e1;
	overflow: auto;
	max-height: 160px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
	font-size: 12px;
	line-height: 18px;
	text-align: left;
	color: #666;
	border-radius: 3px
}

.custom_alert.cancellationfee {
	width: 100% !important
}

.custom_alert.cancellationfee .ca_body {
	padding-bottom: 0
}

.custom_alert.cancellationfee .tab-content {
	position: relative;
	text-align: left
}

.custom_alert.cancellationfee .tab-content strong {
	position: absolute;
	left: 0;
	top: 20px
}

.custom_alert.cancellationfee .tab-content .nav2 {
	overflow: hidden;
	padding-left: 100px
}

.custom_alert.cancellationfee .tab-content .nav2>li {
	float: left
}

.custom_alert.cancellationfee .tab-content .ca_table {
	width: 100%;
	border-top: 2px solid #8f67b0;
	border-bottom: 2px solid #ccc
}

.custom_alert.cancellationfee .tab-content .ca_table th {
	width: 130px;
	height: 40px;
	padding-left: 15px;
	line-height: 24px;
	text-align: left;
	border-bottom: 1px solid #ccc;
	background-color: #f8f8f8
}

.custom_alert.cancellationfee .tab-content .ca_table td {
	padding-left: 15px;
	text-align: left;
	border-bottom: 1px solid #ccc
}

.custom_alert.cancellationfee .tab-content .ca_table input {
	width: 70px;
	height: 26px;
	line-height: 26px;
	background-color: #fff
}

.custom_alert.cancellationfee .tab-content .select_phone {
	border-top: 2px solid #ccc
}

.custom_alert .bg_custom_alert {
	display: block;
	width: 100%;
	height: 100%;
	z-index: 2000;
	background-color: #fff;
	filter: alpha(opacity = 70);
	opacity: .7
}

.custom_alert.re_auth_wrap .tab_wrap {
	overflow: hidden;
	margin-top: 20px
}

.custom_alert.re_auth_wrap .tab_wrap .nav {
	text-align: center
}

.custom_alert.re_auth_wrap .tab_wrap .nav li {
	display: inline-block
}

.custom_alert.re_auth_wrap .tab_wrap .nav li a {
	padding: 0 15px;
	font-size: 12px;
	color: #333
}

.custom_alert.re_auth_wrap .tab_wrap .nav li a:focus, .custom_alert.re_auth_wrap .tab_wrap .nav li a:hover
	{
	background: none
}

.custom_alert.re_auth_wrap .tab_wrap .nav li.active, .custom_alert.re_auth_wrap .tab_wrap .nav li:hover
	{
	background: none
}

.custom_alert.re_auth_wrap .tab_wrap .nav li.active a, .custom_alert.re_auth_wrap .tab_wrap .nav li:hover a
	{
	font-weight: bold
}

.custom_alert.re_auth_wrap .tab_wrap .nav li:last-child {
	border-left: 1px solid #ccc
}

.custom_alert.re_auth_wrap .tab-content {
	margin: 20px
}

.custom_alert.re_auth_wrap .tab-content .tab-pane {
	height: 150px
}

.custom_alert.re_auth_wrap .tab-content .tab-pane li {
	overflow: hidden;
	padding: 3px 0
}

.custom_alert.re_auth_wrap .tab-content .tab-pane dd {
	overflow: hidden;
	padding: 3px 0;
	display: inline-block
}

.custom_alert.re_auth_wrap label {
	display: block;
	float: left;
	margin-bottom: 0;
	width: 133px;
	height: 26px;
	font-size: 12px;
	line-height: 26px;
	color: #333;
	font-weight: 700;
	vertical-align: moddle
}

.custom_alert.re_auth_wrap .inputs input {
	display: block;
	float: left;
	font-size: 12px;
	vertical-align: middle;
	background-color: #fff
}

.custom_alert.re_auth_wrap .inputs span {
	display: block;
	float: left;
	margin: 0 6px;
	height: 26px;
	font-size: 12px;
	line-height: 26px;
	vertical-align: middle;
	background-color: #fff
}

.data_table {
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	border-top: 2px solid #503396;
	border-bottom: 2px solid #e1e1e1
}

.data_table th, .data_table td {
	height: 40px;
	text-align: center;
	vertical-align: middle;
	border-bottom: 1px solid #dcdcdc;
	font-size: 12px;
	color: #333
}

.data_table thead th {
	background-color: #f2f2f2
}

.data_table thead th.border_left {
	border-left: 1px solid #dcdcdc
}

.data_table th {
	font-weight: 700;
	font-size: 13px;
	color: #666
}

.data_table .th_border {
	border: 1px solid #dcdcdc
}

.data_table .td_border_left, .data_table .th_border_left {
	border-left: 1px solid #dcdcdc
}

.data_table.border td {
	border-left: 1px solid #dcdcdc
}

.data_table.caption_view caption {
	margin: 0 0 10px 25px;
	text-align: left;
	font-size: 13px
}

.data_table.vertical th {
	width: 150px;
	text-align: left;
	padding-left: 48px;
	font-size: 12px
}

.data_table.vertical td {
	padding-left: 20px;
	text-align: left
}

.data_table.mega_table caption {
	text-align: left;
	color: #333;
	font-size: 13px;
	border-bottom: 1px solid #dcdcdc
}

.data_table.mega_table tbody th {
	background-color: #f2f2f2
}

button.btn_calendar {
	width: 26px;
	height: 26px;
	background: none;
	padding: 0;
	color: #666;
	border: 1px solid #d9d9d9;
	vertical-align: middle
}

video {
	max-width: 100%
}

.clear {
	clear: both
}

.text-left {
	text-align: left !important
}

.font_400 {
	font-weight: 400
}

.navigation a {
	-webkit-transition: background .4s;
	transition: background .4s
}

.icon {
	display: inline-block;
	overflow: hidden;
	margin: 0;
	padding: 0;
	border: 0;
	background-color: transparent;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	font-size: 0;
	line-height: 0;
	text-decoration: none;
	vertical-align: middle;
	text-indent: -1000em
}

.blind {
	display: block;
	overflow: hidden;
	position: absolute;
	top: -1000em;
	left: -1000em
}

.screen_out {
	display: block;
	overflow: hidden;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px
}

.blank {
	background: url(http://image2.megabox.co.kr/mop/home/blank.png)
}

.bx {
	margin: 0 0 25px;
	padding: 20px;
	border: 6px solid #f2f2f2;
	box-shadow: 0 0 1px #CCC
}

.black .bx {
	border-color: #464646;
	box-shadow: none
}

.caption2 caption {
	padding: 0 25px;
	background: #8f67b0;
	font-weight: 700;
	line-height: 40px;
	text-align: left;
	color: #FFF
}

.container_sub {
	position: static !important;
	margin-top: -85px !important
}

.special_top_text {
	position: absolute;
	top: 160px
}

.special_top_text h2 {
	margin-bottom: 3px;
	font-size: 36px;
	color: #fff
}

.special_top_text p {
	position: static;
	color: #fff;
	line-height: 24px
}

.special_top_text p.txt_big {
	padding-bottom: 25px;
	margin-bottom: 21px;
	font-size: 28px;
	line-height: 34px;
	background:
		url(http://image2.megabox.co.kr/mop/home/special/bg_topline.gif) 0
		bottom no-repeat
}

.special_top_text.slide_text {
	top: 230px;
	letter-spacing: -1px;
	text-shadow: 1px 1px 1px #000;
	behavior: url(/js/css3pie/pie.htc)
}

.special_top_text.slide_text h2 {
	padding-bottom: 20px;
	background: url(http://image2.megabox.co.kr/mop/home/main/h2_bg.png) 0
		100% no-repeat;
	font-weight: 400;
	color: #fff
}

.special_top_text.slide_text h2 small {
	display: block;
	margin: 8px 0;
	font-weight: 300;
	font-size: 18px;
	color: #fff
}

.special_top_text.slide_text p {
	font-size: 24px;
	color: #fff
}

.content_middle_banner a {
	display: block;
	overflow: hidden;
	position: relative;
	height: 325px;
	margin: 50px 0;
	background: #000
}

.content_middle_banner img {
	position: absolute;
	top: 0;
	left: 50%;
	margin-left: -800px
}

.item_cinema {
	height: 448px !important
}

.item_cinema h3 {
	height: auto !important;
	margin-bottom: 10px !important;
	padding-left: 0 !important;
	font-size: 17px !important;
	line-height: 22px !important
}

.btn_board_list {
	width: 60px;
	height: 22px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_board_list.png)
}

.board_prev, .board_next {
	float: right;
	width: 12px;
	height: 7px;
	margin: 4px 20px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/board_prevnext.png)
}

.board_next {
	background-position: 0 100%
}

.mark_special_wrp {
	position: absolute;
	top: 10px;
	right: 10px
}

.mark_special_wrp i {
	display: block;
	width: 70px;
	height: 21px;
	margin-bottom: 3px;
	background:
		url(http://image2.megabox.co.kr/mop/home/movie/mark_special.png)
}

.mark_special_wrp .openm {
	background-position: 0 34%
}

.mark_special_wrp .drivem {
	background-position: 0 45px
}

.mark_special_wrp .boutiquem {
	background-position: 0 21px
}

.icon.bg_h_purple {
	width: 15px;
	height: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_h_purple.png) 0
		1px no-repeat
}

.btn_cert {
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_cert.png)
}

.btn_mystore {
	width: 193px !important;
	height: 30px;
	background:
		url(http://image2.megabox.co.kr/mop/home/store/btn_mystore.png)
}

.img_btn.booking.pay {
	background-position: -160px 0
}

.btn_alert_login {
	width: 64px;
	height: 60px;
	font-weight: bold;
	letter-spacing: -1px;
	color: #fff;
	border: 0;
	background-color: #503396
}

.img_btn.popup_close {
	background-position: -150px -350px
}

.img_btn.popup_save {
	background-position: 0 -350px
}

.img_btn.mega_holic {
	width: 217px !important;
	height: 30px !important;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/mega_holic_btn.png)
}

.img_btn.btn_delete2 {
	display: inline-block;
	*display: inline;
	zoom: 1;
	margin: 0 3px;
	width: 41px !important;
	height: 22px !important;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/btn_delete.png)
}

.icon.member_icon {
	position: absolute;
	left: 50%;
	bottom: 0;
	width: 30px;
	height: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/common/normal.png)
}

.icon.member_icon.vip {
	background: url(http://image2.megabox.co.kr/mop/home/common/vip.png)
}

.icon.member_icon.vvip {
	background: url(http://image2.megabox.co.kr/mop/home/common/vvip.png)
}

.icon.member_icon.vip_premium {
	background:
		url(http://image2.megabox.co.kr/mop/home/common/vip_premium.png)
}

.w60 {
	width: 60px !important
}

.w80 {
	width: 80px !important
}

.w140 {
	width: 140px
}

.w500 {
	width: 500px !important;
	white-space: normal
}

.w440 {
	width: 440px !important;
	white-space: normal
}

.w653 {
	width: 653px !important
}

.w968 {
	width: 968px !important;
	line-height: 0
}

.asterisk {
	display: inline-block;
	width: 10px
}

.table_alert th {
	padding: 0 40px 2px 0;
	font-size: 13px;
	line-height: 2;
	white-space: nowrap
}

.table_alert input {
	width: 100%;
	background-color: #FFF;
	border: 1px solid #CCC
}

.tabel_fz12 th, tabel_fz12 td {
	font-size: 12px
}

.bull {
	font-style: normal;
	font-size: 40px;
	line-height: 20px;
	vertical-align: middle;
	color: #999
}

.nav_v2 {
	height: 59px
}

.nav_v2 li a {
	height: 60px;
	padding-top: 10px;
	line-height: 20px
}

.nav_v2>li.active>a {
	color: #503396
}

.pn_prvnxt a {
	margin: 6px;
	font-weight: 700;
	color: #333;
	vertical-align: middle
}

.container_error>div {
	position: relative;
	width: 681px;
	height: 297px;
	margin: 0 auto 200px;
	background: url(http://image2.megabox.co.kr/mop/home/error.png)
}

.container_error a {
	display: block;
	overflow: hidden;
	position: absolute;
	bottom: 40px;
	left: 50%;
	width: 200px;
	height: 40px;
	margin-left: -100px;
	text-indent: -99em
}

.container_error2>div {
	position: relative;
	width: 580px;
	margin: 0 auto 100px;
	padding: 80px 0 0 200px;
	background: url(http://image2.megabox.co.kr/mop/home/error2.png)
		no-repeat;
	line-height: 1.7
}

.container_error2 h2 {
	margin-bottom: 24px;
	font-size: 23px;
	line-height: 1.3;
	letter-spacing: -1px
}

.container_error2 h3 {
	font-size: 14px
}

.container_error2 a {
	color: #333
}

.container_error2 p {
	margin-bottom: 24px
}

.container_error2 li strong {
	display: inline-block;
	width: 76px
}

#footer_list {
	display: block;
	overflow: hidden;
	width: 100%;
	height: 425px;
	border: 0
}

.theater_lst {
	background: #EEE
}

.theater_lst .content_wrap {
	overflow: hidden;
	height: 440px;
	border-left: 1px solid #CCC
}

.theater_lst .detail_wrap .skip_box {
	position: absolute;
	left: 366px;
	top: 0
}

.theater_lst .detail_wrap .skip_box a {
	position: absolute;
	left: 50px
}

.theater_lst .detail_wrap .ck_bm a, .theater_lst .detail_wrap .ck_dm a {
	top: 335px
}

.theater_lst .detail_wrap .ck_m a {
	top: 282px
}

.theater_lst .detail_wrap .ck_om a {
	top: 300px
}

.theater_lst .detail_wrap .ck_tm a, .theater_lst .detail_wrap .ck_pr a,
	.theater_lst .detail_wrap .ck_fc a, .theater_lst .detail_wrap .ck_kd a
	{
	top: 310px
}

.theater_lst .detail_wrap .ck_m2 a {
	top: 330px
}

.theater_lst .menu {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10
}

.theater_lst .menu a {
	display: block;
	text-decoration: none;
	white-space: nowrap;
	color: #FFF;
	cursor: pointer
}

.theater_lst .menu a>div {
	display: inline-block;
	width: 0;
	height: 0;
	background-color: transparent;
	border-radius: 50%;
	position: relative
}

.theater_lst .menu a>div.someThingNew {
	background:
		url(http://image2.megabox.co.kr/mop/home/map/theater_condition.png)
		no-repeat;
	background-position: -160px -26px;
	width: 13px;
	height: 13px;
	margin-left: 3px;
	margin-bottom: 2px;
	vertical-align: middle
}

.theater_lst .menu>li>a {
	position: relative;
	overflow: hidden;
	padding-left: 20px;
	width: 179px;
	height: 49px;
	font-weight: bold;
	line-height: 49px;
	color: #000;
	border-bottom: 1px solid #ccc;
	background-color: #fff
}

.theater_lst .menu>li>a:hover, .theater_lst .menu>li>a:focus,
	.theater_lst .menu>li>a.active {
	color: #59BEC9
}

.theater_lst .menu>li>a:hover div.haveNew, .theater_lst .menu>li>a:focus div.haveNew,
	.theater_lst .menu>li>a.active div.haveNew {
	background-color: #59BEC9
}

.theater_lst .menu>li>a:hover:after, .theater_lst .menu>li>a:focus:after,
	.theater_lst .menu>li>a.active:after {
	position: absolute;
	right: 15px;
	top: 0;
	display: block;
	content: ">";
	font-size: 10px
}

.theater_lst .menu>li>a div {
	width: 3px;
	height: 3px;
	border-radius: 50%;
	background-color: transparent;
	display: inline-block;
	margin-left: 3px;
	vertical-align: text-top
}

.theater_lst .menu>li>a div.haveNew {
	background-color: #d43b4a
}

.theater_lst .menu>li:last-child a {
	border-bottom: none
}

.theater_lst .menu .depth2 {
	display: none;
	position: absolute;
	top: 0;
	left: 100%;
	width: 280px;
	height: 440px;
	padding: 10px 0;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_main_theater_menu.png)
}

.theater_lst .menu .depth2>li {
	float: left;
	width: 50%;
	line-height: 32px;
	text-align: center
}

.theater_lst .menu .depth2 a:hover, .theater_lst .menu .depth2 a:focus,
	.theater_lst .menu .depth2 a.active {
	font-weight: 700;
	color: #198591;
	text-decoration: underline
}

.theater_lst .menu .depth2 a:hover>div.someThingNew, .theater_lst .menu .depth2 a:focus>div.someThingNew,
	.theater_lst .menu .depth2 a.active>div.someThingNew {
	background-position: -160px -1px
}

.theater_lst .menu .depth2.active {
	display: block
}

.theater_lst .menu>li.favor_theater a {
	color: #fff;
	background-color: #198591
}

.theater_lst .menu>li.favor_theater .depth2 {
	width: 140px
}

.theater_lst .menu>li.favor_theater .depth2>li {
	float: none;
	width: auto
}

.theater_lst .menu>li.favor_theater .depth2>li a {
	background: none
}

.map {
	position: absolute;
	top: 0;
	right: 0;
	width: 100%;
	height: 100%
}

.map>ul>li, .map>ul>li>a {
	display: none
}

.map>ul>li:first-child {
	display: block;
	position: absolute;
	width: 100%;
	height: 100%;
	background: #eee
		url(http://image2.megabox.co.kr/mop/home/map/world2.jpg) right top
		no-repeat
}

.map .depth2 {
	position: absolute;
	top: 0;
	right: 0;
	width: 508px;
	height: 450px;
	margin: 0 auto;
	background: url(http://image2.megabox.co.kr/mop/home/map/seoul.png)
}

.map .depth2.area_30, .map .depth2.gyeonggi {
	background: url(http://image2.megabox.co.kr/mop/home/map/gyeonggi2.png)
}

.map .depth2.area_35, .map .depth2.inchun {
	background: url(http://image2.megabox.co.kr/mop/home/map/inchun.png)
}

.map .depth2.area_45, .map .depth2.daejeon {
	background: url(http://image2.megabox.co.kr/mop/home/map/daejeon.png)
}

.map .depth2.area_70, .map .depth2.gangwon {
	background: url(http://image2.megabox.co.kr/mop/home/map/gangwon.png)
}

.map .depth2.area_65, .map .depth2.gwangju {
	background: url(http://image2.megabox.co.kr/mop/home/map/gwangju.png)
}

.map .depth2.area_55, .map .depth2.busan {
	background: url(http://image2.megabox.co.kr/mop/home/map/busan.png)
}

.map .depth2.area_80, .map .depth2.jeju {
	background: url(http://image2.megabox.co.kr/mop/home/map/jeju.png)
}

.map .depth2 a {
	display: block;
	height: 40px;
	overflow: hidden;
	position: absolute;
	width: 156px;
	padding-top: 40px;
	background: url(http://image2.megabox.co.kr/mop/home/map/marker.png) 50%
		0 no-repeat;
	white-space: nowrap;
	text-align: center;
	text-decoration: none;
	color: transparent;
	font-size: 0;
	line-height: 0
}

.map .depth2 a:before {
	content: " ";
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 77px;
	height: 14px;
	margin-right: 2px;
	vertical-align: top;
	background: url(http://image2.megabox.co.kr/mop/home/map/megabox.png) 0
		50% no-repeat
}

.map .depth2 a.active {
	height: 70px;
	z-index: 10;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/map/marker_on.png);
	color: #503396;
	font-weight: 700;
	font-size: 13px;
	line-height: 14px
}

.map.map_h>ul>li:first-child, .map.map_h .defult_img {
	background: #eee
		url(http://image2.megabox.co.kr/mop/home/map/world3.jpg) right top
		no-repeat
}

#mainBannerParallax {
	overflow: hidden;
	width: 100%;
	display: block;
	position: relative
}

.parallax_img {
	min-width: 1600px;
	height: 500px;
	background:
		url(http://image2.megabox.co.kr/mop/home/test/background2.png) 0 450px
		no-repeat;
	background-size: cover
}

.parallax_img.parallax_ie8 {
	max-width: 1600px;
	margin: 0 auto
}

.parallax_txt {
	position: absolute;
	left: 50%;
	top: 50%
}

.main_container {
	position: static !important;
	margin-top: -85px !important
}

.main_container .main_bottom_bn {
	text-align: center
}

.main_container a, .main_container button {
	transition: all .4s
}

.main_container .img_btn {
	transition: none
}

.main_container .content_wrap {
	position: relative;
	z-index: 10;
	width: 970px;
	margin: 0 auto
}

.main_container>.section {
	position: relative;
	padding: 70px 0 80px
}

.main_container .h3 {
	height: 37px;
	color: #333;
	font-size: 20px;
	letter-spacing: -0.5px
}

.main_container .no1 .bx-controls-direction {
	position: absolute;
	top: -276px;
	left: 0;
	right: 0
}

.main_container .no2 .bx-controls-direction {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 290px
}

.main_container .no2 .bx-controls-direction .bx-prev {
	position: absolute;
	left: 15px
}

.main_container .no2 .bx-controls-direction .bx-next {
	position: absolute;
	right: 15px
}

.main_container .no4 .h3 {
	background-position: 0 -100px
}

.main_container .no5 .h3 {
	background-position: 0 -200px
}

.main_container .no5 .h3.no5_2 {
	background-position: 0 -300px
}

.main_container .main_slide {
	height: 600px;
	z-index: 1
}

.main_container .main_slide>li {
	overflow: hidden;
	height: 600px
}

.main_container .main_slide .slide_bg {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 10;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	background-size: cover
}

.main_container .main_slide .play .slide_bg {
	z-index: 0
}

.main_container .main_slide .bg_full {
	position: absolute;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%
}

.main_container .main_slide .bg_full>* {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
	max-width: none;
	border: 0
}

.main_container .main_slide .bg_full video {
	max-height: 600px;
	background-color: #000;
	height: 100%
}

.main_container .section>ul .slide_bg, .main_container .section>ul .bg_full
	{
	display: none
}

.main_container .section>ul li:first-child .slide_bg, .main_container .section>ul li:first-child .bg_full
	{
	display: block
}

.main_container .bx-controls {
	position: absolute;
	bottom: 5px;
	left: 0;
	right: 0;
	height: 30px;
	text-align: center;
	z-index: 12
}

.main_container .bx-controls>div {
	display: inline-block;
	*display: inline;
	zoom: 1
}

.main_container .bx-pager-item, .main_container .bx-controls-auto-item {
	display: inline-block
}

.main_container .bx-pager a, .main_container .bx-controls-auto a {
	display: block;
	overflow: hidden;
	width: 14px;
	height: 14px;
	margin: 0 4px;
	background: url(http://image2.megabox.co.kr/mop/home/main/pn.png);
	text-indent: -99em
}

.main_container .bx-pager a:hover, .main_container .bx-pager a.active {
	background: url(http://image2.megabox.co.kr/mop/home/main/pn_on.png)
}

.main_container .video_playing .bx-pager {
	opacity: 0
}

.main_container .bx-controls-direction a {
	position: absolute;
	top: 50%;
	margin: -33px 40px 0;
	width: 66px;
	height: 66px;
	background: url(http://image2.megabox.co.kr/mop/home/main/arrow.png)
		no-repeat;
	text-indent: -9999px;
	opacity: 0
}

.main_container .bx-controls-direction a.bx-next {
	right: 0;
	background-position: 100% 0
}

.main_container button.video {
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 10;
	width: 96px;
	height: 96px;
	margin: -48px;
	background: url(http://image2.megabox.co.kr/mop/home/main/play.png) 50%
		50% no-repeat;
	opacity: 0
}

.main_container button.video_pause {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/main/pause.png)
}

.main_container .section.no1:hover a, .main_container .section.no1:hover button.video
	{
	opacity: 1
}

.main_container button.video.off {
	opacity: 0 !important
}

.main_container button.mute {
	top: auto;
	bottom: 100px;
	width: 75px;
	height: 55px;
	margin: -38px;
	background: url(http://image2.megabox.co.kr/mop/home/main/mute.png)
}

.main_container .main_more_all {
	width: 66px;
	height: 13px;
	margin-right: 8px;
	background: url(http://image2.megabox.co.kr/mop/home/main/more_all.png)
}

.main_container .main_bx>div {
	position: relative
}

.main_container .main_bx a, .main_container .main_bx img {
	display: block
}

.main_container .main_bx .x1 {
	width: 315px
}

.main_container .main_bx .x2 {
	width: 630px
}

.main_container .main_bx .y1 {
	height: 315px
}

.main_container .main_bx .y2 {
	height: 630px
}

.main_container .main_bx .x1.pull-right {
	width: 330px
}

.main_container .main_bx .x2.y1 {
	border: 1px solid #ccc;
	border-bottom: none
}

.main_container .main_bx .random_itm_left {
	border-left: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	overflow: hidden
}

.main_container .main_bx .random_itm_right {
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	overflow: hidden
}

.main_container .main_bx .bx-pager a, .main_container .main_bx .bx-controls-auto a
	{
	width: 19px;
	height: 19px;
	margin: 0 2px;
	background: url(http://image2.megabox.co.kr/mop/home/main/pn3.png)
}

.main_container .main_bx .bx-pager a:hover, .main_container .main_bx .bx-pager a.active
	{
	background: url(http://image2.megabox.co.kr/mop/home/main/pn3_on.png)
}

.main_container .main_bx .bx-controls-auto .bx-start {
	background:
		url(http://image2.megabox.co.kr/mop/home/main/slide_auto_play.png)
}

.main_container .main_bx .bx-controls-auto .bx-stop {
	background:
		url(http://image2.megabox.co.kr/mop/home/main/slide_auto.png)
}

.main_container .main_bx .bx-controls-auto .active {
	display: none
}

.main_container .main_bx .bx-controls-direction a {
	width: 55px;
	height: 55px;
	margin: -28px 0;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/main/arrow3.png)
}

.main_container .main_bx .bx-controls-direction a:hover, .main_container .main_bx .bx-controls-direction a:focus
	{
	background-image:
		url(http://image2.megabox.co.kr/mop/home/main/arrow3_on.png)
}

.main_container .no1 {
	padding: 0
}

.main_container .no2 {
	background: #f2f2f2
}

.main_container .no2 .tab_tg {
	margin-bottom: 30px;
	text-align: center
}

.main_container .no2 .tab_tg>li {
	display: inline-block
}

.main_container .no2 .tab_tg>li>a {
	display: block;
	width: 160px;
	height: 50px;
	margin: 0 -1px;
	border: 1px solid #CCC;
	background: #FFF
		url(http://image2.megabox.co.kr/mop/home/main/tab_tg.png) 50px 50%
		no-repeat
}

.main_container .no2 .tab_tg>li>a.i2 {
	background-position: -110px 50%
}

.main_container .no2 .tab_tg>li>a.i3 {
	background-position: -270px 50%
}

.main_container .no2 .tab_tg>li>a.i4 {
	background-position: -430px 50%
}

.main_container .no2 .tab_tg>li.active a, .main_container .no2 .tab_tg>li a:hover,
	.main_container .no2 .tab_tg>li a:focus {
	background-color: #666;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/main/tab_tg_on.png)
}

.main_container .no2 .tab-pane {
	position: relative
}

.main_container .no2 .bx-controls-direction a {
	height: 50px;
	margin: -33px -60px 0;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/main/arrow2.png);
	opacity: 1
}

.main_container .no2 .bx-controls-direction a.bx-prev {
	display: none
}

.main_container .no2 #flip_wrapper li.item {
	height: 458px;
	background: #FFF
}

.main_container .no2 .bx-viewport {
	height: 465px !important
}

.main_container .no2 .bx-viewport .rank_slide>li {
	width: 984px !important
}

.main_container .no4 .partner_even {
	width: 630px;
	border: 1px solid #ccc;
	overflow: hidden
}

.main_container .no4 .x1 {
	width: 314px
}

.main_wgt {
	float: left;
	position: relative;
	width: 290px;
	margin-left: 50px
}

.main_wgt.col2 {
	width: 460px
}

.main_wgt:first-child {
	margin: 0
}

.main_wgt .h3>a {
	display: block;
	line-height: 50px
}

.main_wgt .nav-tabs li a {
	min-width: 0;
	height: 35px
}

.main_wgt .icon.icon_plus {
	position: absolute;
	top: 0;
	right: 0;
	width: 20px;
	height: 20px;
	background: url(http://image2.megabox.co.kr/mop/home/main/plus.png)
}

.main_wgt ul.type1 {
	border-bottom: 1px solid #e1e1e1
}

.main_wgt ul.type1 li {
	padding: 11px 0;
	font-size: 13px;
	line-height: 1;
	border-bottom: 1px solid #e1e1e1;
	color: #666
}

.main_wgt ul.type1 li p {
	margin-bottom: 10px
}

.main_wgt ul.type1 li strong, .main_wgt ul.type1 li a {
	color: #333
}

.main_wgt ul.type1 li.last {
	border-bottom: 0
}

.main_wgt ul.type2 {
	border-top: 1px solid #e1e1e1
}

.main_wgt ul.type2 li {
	padding: 19px 0;
	border-bottom: 1px solid #e1e1e1;
	line-height: 1
}

.main_wgt ul.type2 li img {
	display: block;
	width: 100px;
	height: 58px;
	float: left;
	margin-right: 20px
}

.main_wgt ul.type2 li p {
	font-size: 12px
}

.main_wgt ul.type2 li p strong, .main_wgt ul.type2 li p span {
	display: block;
	color: #666
}

.main_wgt ul.type2 li p strong {
	margin-bottom: 10px;
	font-size: 14px
}

.main_wgt ul.type2 li p span {
	line-height: 1.3
}

.main_wgt ul.type3 {
	padding: 18px 0 19px;
	border-top: 1px solid #e1e1e1;
	border-bottom: 2px solid #e1e1e1
}

.main_wgt ul.type3 li {
	float: left;
	width: 50%;
	padding: 10px 5px 10px 0;
	font-size: 13px;
	line-height: 1.3
}

.main_wgt ul.type3 li a {
	display: block;
	overflow: hidden;
	min-height: 106px;
	color: #333
}

.main_wgt ul.type3 li a:hover {
	text-decoration: none
}

.main_wgt ul.type3 li img {
	float: left;
	width: 106px;
	height: 106px;
	margin-right: 10px;
	border: 1px solid #EEE
}

.main_wgt ul.type3 li strong {
	display: block;
	margin-bottom: 3px;
	height: 69px;
	overflow: hidden
}

.terms_bx ul {
	width: 50%;
	margin-bottom: 100px;
	padding: 18px;
	border-top: 2px solid #503396;
	border-bottom: 2px solid #CCC;
	line-height: 2
}

.terms_bx a {
	text-decoration: none !important;
	color: #333
}

.terms_bx .on {
	font-weight: 700;
	color: #503396
}

.terms_help {
	color: #666
}

.terms_text {
	overflow: auto;
	position: relative;
	height: 550px !important;
	margin-bottom: 40px;
	padding: 20px;
	border: 1px solid #CCC
}

.terms_text>div {
	position: absolute;
	top: 0;
	width: 100%;
	padding-right: 25px
}

.terms_text dt {
	font-weight: 700 !important
}

.terms_popup .wrapper {
	width: 968px;
	margin: 0 auto;
	padding: 90px 0 55px 0
}

.terms_popup .wrapper .contents {
	padding: 65px 40px;
	width: 100%;
	background-color: #fff;
	position: relative
}

.modal-scrollbar-measure {
	position: absolute;
	top: -9999px;
	width: 50px;
	height: 50px;
	overflow: scroll
}

#modal_point .wrapper {
	margin: 0 auto;
	padding: 90px 0 55px
}

#modal_point .wrapper .popup_box {
	margin: 0
}

#modal_point .wrapper .wrapper .contents {
	background: #FFF
}

#modal_point .wrapper .custom_alert_wrap {
	display: block;
	position: relative
}

#modal_point .wrapper .custom_alert {
	position: static;
	width: auto;
	box-shadow: none
}

#modal_point2 .wrapper {
	margin: 0 auto;
	padding: 90px 0 55px
}

#modal_point2 .wrapper .popup_box {
	margin: 0
}

#modal_point2 .wrapper .wrapper .contents {
	background: #FFF
}

#modal_point2 .wrapper .custom_alert_wrap {
	display: block;
	position: relative
}

#modal_point2 .wrapper .custom_alert {
	position: static;
	width: auto;
	box-shadow: none
}

.pop_update {
	display: none;
	visibility: hidden;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 2000
}

.pop_update .pop_con {
	position: relative;
	display: block;
	overflow: hidden;
	width: 653px;
	margin: 0 auto;
	background-color: #fff;
	z-index: 2002;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	-ms-border-radius: 8px;
	-o-border-radius: 8px;
	border-radius: 8px
}

.pop_update .pop_con .pop_close {
	position: absolute;
	right: 16px;
	top: 12px;
	width: 17px;
	height: 17px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/zipcode_close.png) 0 0
		no-repeat
}

.pop_update .pop_con dl {
	overflow: hidden;
	clear: both
}

.pop_update .pop_con dl dt {
	padding: 53px 50px 30px
}

.pop_update .pop_con dl dd {
	float: left;
	background-color: #e7e7e7;
	width: 50%;
	height: 278px;
	border: 1px solid #d9d9d9;
	border-left: 0;
	border-right: 0;
	text-align: center;
	padding: 20px 0 17px
}

.pop_update .pop_con dl dd p>* {
	display: block
}

.pop_update .pop_con dl dd p a {
	margin-bottom: 15px
}

.pop_update .pop_con dl dd p a.last {
	margin-bottom: 0
}

.pop_update .pop_con dl dd p span {
	color: #333;
	font-size: 18px;
	line-height: 20px;
	padding-bottom: 25px
}

.pop_update .pop_con dl dd.fl p {
	border-right: 1px solid #ccc
}

.pop_update .pop_con dl dd.fr p {
	border-left: 1px solid #fff
}

.pop_update .pop_con .btn_box {
	text-align: right;
	padding: 13px 30px;
	color: #333;
	font-size: 12px
}

.pop_update .pop_con .btn_box button {
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 68px;
	height: 30px;
	background:
		url(http://image2.megabox.co.kr/mop/home/brupdata/close_btn.png)
}

.pop_update .pop_bg {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: block;
	background-color: #1b1b1b;
	filter: alpha(opacity = 80);
	opacity: .8;
	z-index: 2001
}

.password_pop {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 2000
}

.password_pop .pop_close {
	position: absolute;
	right: 16px;
	top: 12px;
	width: 17px;
	height: 17px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/zipcode_close.png) 0 0
		no-repeat
}

.password_pop .pop_con {
	position: relative;
	display: block;
	overflow: hidden;
	width: 653px;
	margin: 0 auto;
	background-color: #fff;
	z-index: 2002;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	-ms-border-radius: 8px;
	-o-border-radius: 8px;
	border-radius: 8px
}

.password_pop .pop_con dt {
	padding: 35px 0 25px 50px;
	display: block
}

.password_pop .pop_con dd {
	border: 1px solid #d7d7d7;
	border-left: 0;
	border-right: 0;
	background-color: #f5f5f5;
	padding: 30px 50px;
	color: #666;
	line-height: 20px;
	font-size: 12px
}

.password_pop .pop_con dd .btn_box {
	text-align: right;
	margin-top: 30px
}

.password_pop .pop_con dd .btn_box button {
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 190px;
	height: 56px;
	margin-left: 5px
}

.password_pop .pop_con dd .btn_box button.no_chg {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_no_chg.png)
		no-repeat
}

.password_pop .pop_con dd .btn_box button.ok_chg {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_ok_chg.png)
		no-repeat
}

.password_pop .pop_con .ex_tx {
	position: relative;
	padding: 10px 50px;
	min-height: 100px;
	text-align: right;
	font-size: 12px
}

.password_pop .pop_con .ex_tx img {
	position: absolute;
	top: -110px;
	left: 46px
}

.password_pop .pop_bg {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: block;
	background-color: #1b1b1b;
	filter: alpha(opacity = 80);
	opacity: .8;
	z-index: 2001
}

.receipts_pop {
	position: relative;
	display: block
}

.receipts_pop .pop_con {
	position: relative;
	display: block;
	overflow: hidden;
	width: 400px;
	margin: 0 auto;
	background-color: #fff;
	z-index: 2002
}

.receipts_pop .pop_con>ul {
	border: 1px solid #503396
}

.receipts_pop .pop_con>ul>li {
	border: 9px solid #503396;
	padding: 20px;
	overflow: hidden
}

.receipts_pop .pop_con>ul>li h2 {
	background:
		url(https://image2.megabox.co.kr/mop/home/ti_receipts_pop.gif) center
		center;
	background-repeat: no-repeat;
	font-size: 0;
	height: 20px;
	margin-bottom: 15px
}

.receipts_pop .pop_con>ul>li table {
	border-top: 1px solid #999
}

.receipts_pop .pop_con>ul>li table th, .receipts_pop .pop_con>ul>li table td
	{
	line-height: 24px;
	color: #333;
	font-size: 12px;
	border: 1px solid #999;
	border-top: 0;
	font-weight: normal;
	text-indent: 9px
}

.receipts_pop .pop_con>ul>li table thead th, .receipts_pop .pop_con>ul>li table thead td storng
	{
	font-weight: bold !important
}

.receipts_pop .pop_con>ul>li table .last_bt th, .receipts_pop .pop_con>ul>li table .last_bt td
	{
	border-bottom: 0
}

.receipts_pop .pop_con>ul>li table.tbst_01 {
	width: 100%;
	clear: both
}

.receipts_pop .pop_con>ul>li table.tbst_01 thead th {
	background-color: #cdcfcb
}

.receipts_pop .pop_con>ul>li table.tbst_01 tbody .ti th, .receipts_pop .pop_con>ul>li table.tbst_01 tbody .ti td
	{
	border-bottom: 1px dotted #999
}

.receipts_pop .pop_con>ul>li table.tbst_02 {
	float: left;
	width: 135px
}

.receipts_pop .pop_con>ul>li table.tbst_02 th, .receipts_pop .pop_con>ul>li table.tbst_02 td
	{
	border-right: 0
}

.receipts_pop .pop_con>ul>li table.tbst_02 thead th {
	background-color: #c8c9ca
}

.receipts_pop .pop_con>ul>li table.tbst_02 tbody .ti th, .receipts_pop .pop_con>ul>li table.tbst_02 tbody .ti td
	{
	border-bottom: 1px dotted #999
}

.receipts_pop .pop_con>ul>li table.tbst_02 tbody .last td {
	height: 40px
}

.receipts_pop .pop_con>ul>li table.tbst_03 {
	float: left;
	width: 205px
}

.receipts_pop .pop_con>ul>li table.tbst_03 th, .receipts_pop .pop_con>ul>li table.tbst_03 td
	{
	text-indent: 0;
	line-height: 12px
}

.receipts_pop .pop_con>ul>li table.tbst_03 th {
	background-color: #ebebeb
}

.receipts_pop .pop_con>ul>li table.tbst_03 td {
	text-align: center
}

.receipts_pop .pop_con>ul>li table.tbst_03 thead th {
	background-color: #ebebeb;
	height: 27px
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody th {
	padding-left: 9px;
	height: 54px;
	border-bottom: 1px dotted #999
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody th * {
	display: block
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody th small {
	font-size: 10px
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody th div {
	position: relative
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody th div span {
	position: absolute;
	left: 63px;
	top: -39px;
	width: 136px;
	height: 55px;
	line-height: 55px;
	letter-spacing: 8px;
	text-align: right;
	display: block;
	font-family: 돋음
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody .add_ti th {
	height: 27px;
	background-color: #fff;
	border-bottom: 1px dotted #999
}

.receipts_pop .pop_con>ul>li table.tbst_03 tbody .add_tx td {
	height: 40px;
	text-align: left;
	padding-left: 9px
}

.receipts_pop .btn_box {
	text-align: center
}

.receipts_pop .btn_box a {
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 68px;
	height: 30px;
	font-size: 0;
	text-indent: -999px;
	color: transparent;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_receipts_pop.gif)
		no-repeat;
	margin: 10px 3px;
	vertical-align: top
}

.receipts_pop .btn_box a.btn_close {
	background-position: left top
}

.receipts_pop .btn_box a.btn_print {
	background-position: -80px top
}

#messageBox_reAuthPopup .custom_alert .tab_wrap {
	padding-bottom: 0
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .nav {
	overflow: hidden;
	width: 390px;
	margin: 0 auto;
	border: 1px solid #ccc;
	border-bottom: 0;
	background-color: #fff
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .nav li {
	float: left;
	width: 50%
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .nav li a {
	display: block;
	width: 100%;
	height: 37px;
	font-weight: bold;
	line-height: 37px;
	text-align: center;
	color: #666;
	background-color: #f9f9f9;
	border-bottom: 1px solid #ccc
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .nav li.active a {
	color: #333;
	background-color: #fff;
	border-bottom: 0
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .ck_radio {
	text-align: center
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .ck_radio label {
	display: inline-block;
	float: none
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .reauth_input_wrap {
	width: 330px;
	margin: 0 auto
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .reauth_input_wrap label
	{
	width: 90px
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .reauth_input_wrap .tel_box
	{
	overflow: hidden;
	width: 200px
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .reauth_input_wrap .tel_box input
	{
	width: 32%;
	margin-right: 2%
}

#messageBox_reAuthPopup .custom_alert .tab_wrap .reauth_input_wrap .tel_box input:last-child
	{
	margin-right: 0
}

#messageBox_reAuthPopup .custom_alert .tab_d {
	margin-top: 39px
}

#messageBox_reAuthPopup .custom_alert .tab_d dl {
	position: relative;
	padding-top: 30px
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dt {
	position: absolute;
	top: 0;
	width: 160px;
	color: #666;
	font-size: 13px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	border: 1px solid #f2f2f2;
	left: 160px
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dt:first-child {
	left: 0
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dt.tab_on {
	background-color: #f2f2f2
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dt a {
	color: #666;
	text-decoration: inherit
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dd {
	background-color: #f2f2f2;
	padding: 50px 0 40px;
	text-align: center
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dd p {
	display: block;
	height: 60px;
	color: #333
}

#messageBox_reAuthPopup .custom_alert .tab_d dl dd .ck_radio label {
	color: #666;
	font-size: 13px;
	margin-right: 35px
}

#September_bk_Popup .custom_alert {
	border: 1px solid #8a53b9;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	-ms-border-radius: 0;
	-o-border-radius: 0;
	border-radius: 0;
	top: 50%;
	left: 50%;
	margin: -130px 0 0 -227px
}

#September_bk_Popup .custom_alert .ca_header {
	border-top: 5px solid #d0cfd5
}

#September_bk_Popup .custom_alert .ca_header h6 {
	border-top: 5px solid #8e4ec0;
	position: absolute;
	top: -5px;
	bottom: 0;
	line-height: 36px;
	padding: 0 20px
}

#September_bk_Popup .custom_alert .ca_body p {
	text-align: left;
	line-height: 18px
}

.sk_pop_d {
	position: relative
}

.sk_pop_d>ul {
	display: none;
	position: absolute;
	top: -100px;
	border: 1px solid #e1e1e1;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.3);
	border-radius: 6px;
	background-color: #fff;
	width: 560px;
	z-index: 19
}

.sk_pop_d>ul .ti {
	padding: 0 20px;
	line-height: 25px;
	height: 25px;
	color: #333;
	border-bottom: 1px solid #e1e1e1
}

.sk_pop_d>ul .ti .pop_close {
	position: absolute !important;
	width: 20px !important;
	height: 20px !important;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_skpop.gif);
	top: 2px !important;
	right: 5px !important;
	background-repeat: no-repeat;
	background-position: center center
}

.sk_pop_d>ul .con_tx {
	overflow-y: auto;
	max-height: 108px;
	padding: 15px 19px;
	font-size: 12px;
	line-height: 18px
}

.sk_pop_d>ul .con_tx span {
	position: relative;
	display: block;
	padding-left: 10px
}

.sk_pop_d>ul .con_tx span i {
	position: absolute;
	color: #59BEC9;
	left: 0;
	top: 0;
	font-weight: bold
}

#no_symbol_popup .ca_body p {
	line-height: 20px
}

#no_symbol_popup .ca_body p strong span {
	color: #503396;
	text-decoration: underline
}

#no_symbol_popup .ca_footer .ok {
	background-position: -473px -649px
}

#no_symbol_popup .ca_footer .notice_go {
	background-position: -336px -649px;
	width: 117px;
	display: inline-block;
	*display: inline;
	zoom: 1;
	height: 30px
}

.store_payEnd_popup .custom_alert {
	width: 970px;
	top: 100px
}

.store_payEnd_popup .custom_alert h1 {
	background-color: #f9f9f9;
	margin: 0;
	border-bottom: 3px solid #503396;
	height: 55px;
	line-height: 55px;
	font-size: 23px;
	color: #503396;
	text-indent: 30px
}

.store_payEnd_popup .custom_alert>p {
	display: block;
	height: 75px;
	line-height: 75px;
	text-align: center;
	border-bottom: 1px solid #ccc;
	color: #333;
	font-weight: 700;
	font-size: 18px;
	margin: 0 30px
}

.store_payEnd_popup .custom_alert>p strong {
	color: #503396
}

.store_payEnd_popup .custom_alert>ul {
	clear: both;
	overflow: hidden;
	border-bottom: 1px solid #e1e1e1;
	margin: 0 30px;
	font-size: 13px;
	line-height: 28px
}

.store_payEnd_popup .custom_alert>ul li.first {
	float: left;
	padding: 8px 8px 20px;
	width: 399px;
	height: 375px
}

.store_payEnd_popup .custom_alert>ul li.first img {
	width: 100%;
	margin: 0 auto
}

.store_payEnd_popup .custom_alert>ul li.last {
	float: right;
	width: 440px;
	padding: 20px 0
}

.store_payEnd_popup .custom_alert>ul li.last .payEnd_tx {
	background-color: #f2f2f2;
	padding: 30px 20px
}

.store_payEnd_popup .custom_alert>ul li.last .payEnd_tx i {
	margin-right: 10px
}

.store_payEnd_popup .custom_alert>ul li.last .ex_tx {
	padding: 30px 0 30px 20px
}

.store_payEnd_popup .custom_alert>ul li.last .ex_tx p {
	background:
		url(http://image2.megabox.co.kr/mop/home/store/ico_storePay_05.gif)
		left 10px no-repeat;
	padding-left: 10px
}

.store_payEnd_popup .custom_alert>ul li.last .ex_tx p span {
	color: #198591
}

.store_payEnd_popup .custom_alert .btn_box {
	text-align: center;
	padding: 20px 0 30px
}

.store_payEnd_popup .custom_alert .btn_box button {
	margin: 0 3px;
	height: 30px;
	border: 0
}

.store_payEnd_popup .custom_alert .btn_box button.btn_yes {
	background:
		url(http://image2.megabox.co.kr/mop/home/store/btn_storePay_yes.gif)
		no-repeat;
	width: 68px
}

.store_payEnd_popup .custom_alert .btn_box button.btn_shopping_list {
	background:
		url(http://image2.megabox.co.kr/mop/home/store/btn_storePay_shopping.gif)
		no-repeat;
	width: 153px
}

.store_payEnd_popup .custom_alert .btn_box button.btn_print {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking.png)
		no-repeat left -650px;
	width: 111px
}

.store_payEnd_popup .custom_alert .btn_box button.btn_gotobook {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking.png)
		no-repeat;
	background-position: -150px -650px;
	width: 140px
}

.cuponInfo_popup .custom_alert {
	width: 653px
}

.cuponInfo_popup .cupon_info_table {
	width: 100%
}

.cuponInfo_popup .cupon_info_table th, .cuponInfo_popup .cupon_info_table td
	{
	border-bottom: 1px solid #e1e1e1
}

.cuponInfo_popup .cupon_info_table thead th {
	border-top: 2px solid #503396;
	background-color: #f2f2f2;
	text-align: center;
	color: #666;
	height: 40px
}

.cuponInfo_popup .cupon_info_table tbody td {
	font-size: 12px;
	height: 40px
}

.cuponInfo_popup .cupon_info_table tbody td.point {
	font-size: 13px;
	color: #503396;
	font-weight: 700
}

.cuponInfo_popup .cupon_info_table tbody td.inp_td input[type=text] {
	width: 54px
}

.cuponInfo_popup .cupon_info_table tbody td.inp_td span {
	color: #c2c2c2
}

.cuponInfo_popup .cupon_info_table tbody td.inp_td button {
	display: none;
	border: 1px solid #503396;
	background-color: #fff;
	color: #503396;
	width: 48px;
	height: 20px;
	font-size: 11px;
	line-height: 20px;
	vertical-align: middle;
	padding: 0
}

.cuponInfo_popup .ca_footer button {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage.png)
		no-repeat;
	margin: 0 5px;
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 68px;
	height: 30px
}

.cuponInfo_popup .ca_footer button.btn_ok {
	background-position: -450px -650px
}

.cuponInfo_popup .ca_footer button.btn_reNumber {
	background-position: -550px -650px;
	width: 80px
}

.tx_skip {
	position: absolute;
	left: -9999px;
	font-size: 1px;
	line-height: 1px;
	letter-spacing: -999px;
	color: transparent
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
	input {
		line-height: 14px
	}
}

.empty_area {
	height: 228px;
	background:
		url(http://image2.megabox.co.kr/mop/home/common/empty_img.png)
		no-repeat 50% 67px;
	background-color: #f2f2f2;
	margin-top: 15px
}

.empty_area p {
	font-size: 14px;
	color: #636363;
	font-weight: bold;
	text-align: center;
	padding-top: 147px
}

.empty_area.store_empty {
	background-position: 50% 67px
}

.empty_area.event_empty {
	background-position: 50% -390px
}

.empty_area.movie_empty {
	background-position: 50% -160px
}

.privacyTable_01 th {
	text-align: center
}

.privacyTable_01 th, .privacyTable_01 td {
	border: 1px solid #848484
}

.quickMenu {
	position: absolute;
	top: 800px;
	width: 100px;
	z-index: 999;
	background-color: #fff;
	box-shadow: 1px 1px 4px rgba(0, 0, 0, 0.2)
}

.quickMenu li {
	border-bottom: 2px solid #f2f2f2;
	background-color: #fff;
	text-align: center
}

.quickMenu li a {
	display: inline-block;
	color: #222222;
	padding: 22px 0;
	line-height: 1.3;
	font-weight: bold;
	font-size: 13px;
	width: 100%;
	outline: none
}

.quickMenu li a:hover, .quickMenu li a:active, .quickMenu li a:visited,
	.quickMenu li a:focus {
	text-decoration: none;
	outline: none
}

.quickMenu li i.vipCrown {
	width: 30px;
	height: 24px;
	background:
		url(http://image2.megabox.co.kr/mop/home/common/vipCrown.png) 0 0
		no-repeat;
	display: block;
	margin: 0 auto 4px
}

.quickMenu li.goToTop {
	width: 100px;
	height: 48px;
	background:
		url(http://image2.megabox.co.kr/mop/home/main/scrapperImg.png)
		no-repeat 50% -70px;
	border-top: 4px dashed #57bdc9
}

.quickMenu li.goToTop a {
	width: 100%;
	height: 100%;
	padding: 0
}

.quickMenu li:nth-child(4), .quickMenu li:last-child {
	border-bottom: none
}

.form-style h4 {
	font-size: 13px;
	padding-left: 1rem;
	letter-spacing: -0.05em;
	margin: 40px 0 10px
}

.form-style p.txt {
	width: 600px;
	font-size: 14px;
	font-weight: 600;
	color: #333;
	padding-bottom: 12px
}

.form-style p.txt span {
	font-weight: normal
}

.form-style .form-table {
	border-top: 2px solid #503396;
	border-bottom: 2px solid #d2d2d2;
	width: 100%
}

.form-style .form-table th, .form-style .form-table td {
	border-top: 1px solid #dcdcdc;
	padding: 5px
}

.form-style .form-table th {
	padding-top: 10px;
	padding-left: 26px;
	background-color: #f2f2f2;
	vertical-align: top;
	font-size: 12px;
	font-weight: normal
}

.form-style .form-table th label {
	font-size: 12px
}

.form-style .form-table th label.ck_point {
	color: #503396
}

.form-style .form-table td {
	padding-left: 30px
}

.form-style .form-table td label, .form-style .form-table td span.title
	{
	color: #666;
	font-size: 12px;
	margin-bottom: 0;
	font-weight: normal;
	vertical-align: middle
}

.form-style .form-table td span {
	display: inline-block
}

.form-style .form-table td span.title {
	min-width: 56px
}

.form-style .form-table td.moviePost_write li {
	position: relative;
	float: left;
	height: 93px;
	width: auto;
	border: 1px solid #9fa4a6;
	margin-left: 13px
}

.form-style .form-table td.moviePost_write li:first-child {
	margin-left: 0
}

.form-style .form-table td.moviePost_write li.add {
	background-color: #f1f1f1;
	border-color: #e1e1e1;
	min-width: 120px
}

.form-style .form-table td.moviePost_write li.add .btn_add {
	display: block;
	width: 40px;
	height: 40px;
	margin: 25px auto 0;
	border: 0;
	background-position: 0 -150px;
	background-color: transparent
}

.form-style .form-table td.moviePost_write li.add .icon_img {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png)
		!important;
	background-repeat: no-repeat;
	overflow: hidden
}

.form-style .form-table td.moviePost_write li img {
	height: 90px
}

.form-style .form-table td.moviePost_write li a.on em:last-child {
	display: block;
	z-index: 2;
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	border: 3px solid #59BEC9;
	opacity: 1;
	filter: alpha(opacity = 100)
}

.form-style .form-table td.moviePost_write li .btn_delete {
	position: absolute;
	top: 0;
	right: 0;
	width: 32px;
	height: 32px;
	background:
		url('http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png')
		-100px -148px no-repeat;
	z-index: 10;
	text-indent: -999px;
	overflow: hidden
}

.form-style .form-table td.moviePost_write li .empty {
	display: block;
	width: 110px;
	height: 100%;
	background:
		url('http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png')
		-162px -575px #d5d5d5 no-repeat
}

.form-style .form-table.socialTable th {
	padding-left: 0;
	text-align: center
}

.form-style .form-table.socialTable th label {
	padding-top: 3px
}

.form-style .form-table.socialTable th, .form-style .form-table.socialTable td
	{
	border-right: 1px solid #dcdcdc
}

.form-style .form-table.socialTable th:last-child, .form-style .form-table.socialTable td:last-child
	{
	border-right: none
}

.form-style .form-table2 {
	border-top: 2px solid #503396;
	border-bottom: 2px solid #d2d2d2;
	width: 100%;
	margin-bottom: 15px
}

.form-style .form-table2 th, .form-style .form-table2 td {
	border-top: 1px solid #dcdcdc;
	padding: 5px
}

.form-style .form-table2 th {
	padding-top: 10px;
	padding-left: 26px;
	background-color: #f8f8f8;
	vertical-align: top;
	font-size: 12px;
	font-weight: normal
}

.form-style .form-table2 th label {
	font-size: 12px;
	font-weight: normal
}

.form-style .form-table2 th label.ck_point {
	color: #503396
}

.form-style .form-table2 td {
	padding-left: 30px
}

.form-style .form-table2 td label, .form-style .form-table2 td span.title
	{
	color: #666;
	font-size: 12px;
	margin-bottom: 0;
	font-weight: normal;
	vertical-align: middle
}

.form-style .form-table2 td button {
	border: 1px solid #642d92;
	font-size: 12px;
	color: #fff;
	background-color: #8f67b0;
	padding: 3px 10px 3px 10px;
	margin-right: 7px
}

.form-style .form-table2 td span {
	display: inline-block
}

.form-style .form-table2 td span.title {
	min-width: 56px
}

.board_list>table {
	width: 100%;
	border-top: 2px solid #503396;
	border-bottom: 2px solid #d9d9d9
}

.board_list>table tr th, .board_list>table tr td {
	font-size: 12px;
	height: 38px;
	color: #666;
	border-bottom: 1px solid #d9d9d9
}

.board_list>table tr th a, .board_list>table tr td a {
	color: #666
}

.board_list>table tr th a:hover, .board_list>table tr td a:hover {
	color: #609
}

.board_list>table th {
	background-color: #f8f8f8
}

.board_list2>table {
	width: 100%;
	border-top: 2px solid #503396;
	border-bottom: 2px solid #d9d9d9
}

.board_list2>table tr th, .board_list2>table tr td {
	font-size: 12px;
	height: 38px;
	color: #666;
	border-bottom: 1px solid #d9d9d9;
	text-align: center
}

.board_list2>table tr th button, .board_list2>table tr td button {
	border: 1px solid #503396;
	color: #503396;
	background: #fff;
	padding: .2rem 1.5rem
}

.board_list2>table tr th a, .board_list2>table tr td a {
	color: #666;
	font-weight: bold
}

.board_list2>table tr td:nth-child(2) {
	text-align: left
}

.board_list2>table tr td:nth-child(3) {
	text-align: left;
	color: #503396;
	font-weight: bold
}

.board_list2>table th {
	background-color: #f8f8f8
}

.board_list2>table th:nth-child(3), .board_list2>table th:nth-child(2) {
	text-align: left
}

.board_view>table {
	width: 100%;
	border-top: 2px solid #503396;
	border-collapse: separate
}

.board_view>table tr th, .board_view>table tr td {
	font-size: 12px;
	height: 38px;
	color: #333;
	border-bottom: 1px solid #dcdcdc;
	padding-left: 26px;
	padding-right: 29px
}

.board_view>table tr th a, .board_view>table tr td a {
	color: #333
}

.board_view>table tr th a:hover, .board_view>table tr td a:hover {
	color: #609
}

.board_view>table tr th textarea, .board_view>table tr td textarea {
	resize: none
}

.board_view>table tr th {
	font-size: 13px;
	color: #666;
	background-color: #f2f2f2
}

.board_view>table td.addFileView {
	padding-top: 10px;
	padding-bottom: 10px
}

.board_view>table td.addFileView li {
	display: inline-block;
	width: 130px;
	height: 93px;
	border: none
}

.board_view>table td.addFileView li a {
	display: inline-block;
	width: 120px;
	height: 93px;
	border: 1px solid #9fa4a6;
	overflow: hidden
}

.board_view>table td.addFileView li a img {
	width: 100%
}

.board_view div.contents {
	padding: 30px 50px 120px 110px;
	margin-bottom: 20px;
	border-bottom: 1px solid #d9d9d9
}

.board_list_next_prev {
	margin-top: 22px;
	border-top: 2px solid #dcdcdc
}

.board_list_next_prev li {
	height: 40px;
	line-height: 40px;
	overflow: hidden;
	border-bottom: 1px solid #dcdcdc
}

.board_list_next_prev li.nolist {
	background-color: #f2f2f2
}

.board_list_next_prev li span, .board_list_next_prev li i,
	.board_list_next_prev li a {
	font-size: 12px;
	display: block;
	float: left;
	height: 40px;
	line-height: 40px;
	color: #666
}

.board_list_next_prev li span {
	font-weight: 700;
	width: 84px;
	text-align: center;
	font-size: 13px
}

.board_list_next_prev li a {
	margin-left: 135px;
	text-decoration: none;
	color: #333
}

.board_list_next_prev li a:hover {
	color: #503396
}

.panel-group {
	border-bottom: 1px solid #d2d2d2
}

.panel-group .header {
	overflow: hidden;
	border-top: 2px solid #503396;
	background-color: #f8f8f8;
	border-bottom: 1px solid #d9d9d9
}

.panel-group .header>span {
	display: block;
	height: 46px;
	line-height: 46px;
	float: left;
	font-weight: 700;
	font-size: 13px
}

.panel-group .panel {
	margin: 0 !important;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	-ms-border-radius: 0;
	-o-border-radius: 0;
	border-radius: 0;
	-webkit-box-shadow: 0 0 0 rgba(0, 0, 0, 0.05);
	box-shadow: 0 0 0 rgba(0, 0, 0, 0.05);
	border: none;
	overflow: visible
}

.panel-group .panel a.active .title {
	font-weight: 700;
	color: #503396
}

.panel-group .panel a.title {
	display: block;
	border-bottom: 1px solid #d9d9d9;
	height: 46px;
	line-height: 46px;
	color: #333;
	font-size: 12px;
	overflow: hidden
}

.panel-group .panel a.title span {
	display: block;
	float: left
}

.panel-group .panel a.title:hover {
	text-decoration: none
}

.panel-group .panel .contents {
	padding: 30px;
	color: #737373;
	font-size: 12px;
	border-bottom: 1px solid #d9d9d9
}

.panel-group.faq span {
	display: block
}

.panel-group.faq .hd1 {
	width: 64px;
	text-align: center
}

.panel-group.faq .hd2 {
	width: 163px
}

.panel-group.faq .hd3 {
	width: 620px;
	text-align: center
}

.panel-group.faq .hd4 {
	width: 123px;
	text-align: center
}

.panel-group.faq .panel .hd1 {
	font-size: 14px;
	color: #503396;
	width: 64px;
	height: 100%
}

.panel-group.faq .panel .hd3 {
	text-align: left;
	font-weight: 700;
	color: #503396
}

.panel-group.faq .panel .collapsed .hd3 {
	font-weight: 400;
	color: #666
}

.panel-group.faq .panel a.top5 {
	background-color: #f2f2f2
}

.panel-group.faq .panel .contents {
	padding-left: 227px
}

.panel-group.event .header1 {
	width: 98px;
	text-align: center
}

.panel-group.event .header2 {
	width: 120px;
	padding-left: 17px
}

.panel-group.event .header3 {
	width: 614px;
	padding-left: 45px
}

.panel-group.event .header4 {
	width: 137px;
	text-align: center
}

.panel-group.event .panel .contents {
	padding-left: 115px
}

.panel-group.theater {
	border-top: 2px solid #8271b1;
	border-bottom: none
}

.panel-group.theater .title {
	background-color: #f8f8f8
}

.panel-group.theater .hd1 {
	width: 190px;
	text-align: center
}

.panel-group.theater .hd2 {
	width: 640px;
	padding-left: 100px
}

.panel-group.theater .hd3 {
	width: 140px;
	text-align: center
}

.panel-group.company .header1 {
	width: 98px;
	text-align: center
}

.panel-group.company .header2 {
	width: 100px;
	padding-left: 17px
}

.panel-group.company .header3 {
	width: 514px;
	padding-left: 45px
}

.panel-group.company .header4 {
	width: 187px;
	text-align: center
}

.panel-group.company .header5 {
	width: 67px;
	text-align: center
}

.panel-group.company .panel .contents {
	padding-left: 115px
}

.panel-group.company2 .header1 {
	width: 98px;
	text-align: center
}

.panel-group.company2 .header2 {
	width: 614px;
	padding-left: 45px
}

.panel-group.company2 .header3 {
	width: 120px;
	padding-left: 17px;
	text-align: center
}

.panel-group.company2 .header4 {
	width: 137px;
	text-align: center
}

.search_wrapper {
	width: auto;
	margin: 0 auto;
	text-align: right
}

.search_wrapper>input[type=text], .search_wrapper>button.search {
	height: 32px;
	line-height: 32px;
	color: #666;
	border: 1px solid #d1d1d1;
	background-color: #fff;
	vertical-align: middle
}

.search_wrapper>input[type=text] {
	width: 199px;
	text-indent: 10px;
	font-size: 14px;
	border-right: none
}

.search_wrapper>button.search {
	width: 37px;
	font-size: 18px;
	border-left: none
}

.search_wrapper.posa {
	position: absolute;
	top: -9px;
	right: 0
}

.search_wrapper>span {
	text-align: left
}

.custom-pagination {
	text-align: center
}

.custom-pagination li {
	display: inline-block;
	vertical-align: top
}

.custom-pagination li a {
	display: block;
	border: 1px solid #ccc;
	padding: 0 8px;
	height: 25px;
	line-height: 25px;
	font-size: 12px;
	color: #666;
	vertical-align: middle;
	text-decoration: none
}

.custom-pagination li a.active, .custom-pagination li a:hover {
	background-color: #e1e1e1
}

.custom-pagination li a.active {
	border-color: #351F66;
	background-color: #503396;
	color: #fff
}

.custom-pagination li a.img_btn {
	border: none;
	padding: 0;
	width: 24px;
	height: 25px
}

.custom-pagination li a.first {
	background-position: -300px -550px
}

.custom-pagination li a.first:hover, .custom-pagination li a.first:active
	{
	background-position: -300px -600px
}

.custom-pagination li a.last {
	background-position: -350px -550px
}

.custom-pagination li a.last:hover, .custom-pagination li a.last:active
	{
	background-position: -350px -600px
}

.custom-pagination li a.prev {
	background-position: -400px -550px
}

.custom-pagination li a.prev:hover, .custom-pagination li a.prev:active
	{
	background-position: -400px -600px
}

.custom-pagination li a.next {
	background-position: -450px -550px
}

.custom-pagination li a.next:hover, .custom-pagination li a.next:active
	{
	background-position: -450px -600px
}

.timetable_container {
	margin-top: 0 !important
}

.timetable_container .content_wrap {
	position: relative;
	width: 970px;
	margin: 0 auto
}

.timetable_container .h3 {
	height: 50px;
	margin: 0;
	font-size: 20px;
	line-height: 50px;
	overflow: hidden
}

.timetable_container .h3.special {
	background-position: 0 -83px
}

.timetable_container .h4 {
	font-size: 14px;
	margin-top: 25px
}

.timetable_container>.no2 {
	padding: 30px 0
}

.timetable_container .movie_lst {
	overflow: hidden;
	position: relative;
	height: 350px;
	margin-bottom: 20px;
	background: #1b1b1b
}

.timetable_container .movie_lst>div {
	margin: 40px auto
}

.timetable_container .movie_lst .slide a, .timetable_container .movie_lst .slide img
	{
	display: block
}

.timetable_container .movie_lst .slide a {
	font-weight: 700;
	text-align: center;
	text-decoration: none;
	color: #FFF
}

.timetable_container .movie_lst .slide span {
	display: block;
	position: relative;
	margin-bottom: 10px;
	height: 213px
}

.timetable_container .movie_lst .slide span img {
	height: 100%
}

.timetable_container .movie_lst .slide .active {
	color: #198591
}

.timetable_container .movie_lst .slide .active span:before {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: 2px solid #198591
}

.timetable_container .movie_lst .bx-controls {
	margin-bottom: 10px;
	text-align: center
}

.timetable_container .movie_lst .bx-viewport {
	min-height: 284px
}

.timetable_container .movie_lst .bx-pager {
	position: absolute;
	bottom: 10px;
	left: 0;
	width: 100%;
	text-align: center
}

.timetable_container .movie_lst .bx-pager-item {
	display: inline-block
}

.timetable_container .movie_lst .bx-pager a {
	display: block;
	overflow: hidden;
	width: 14px;
	height: 14px;
	margin: 0 4px;
	background: url(http://image2.megabox.co.kr/mop/home/main/pn.png);
	text-indent: -99em
}

.timetable_container .movie_lst .bx-pager a:hover, .timetable_container .movie_lst .bx-pager a.active
	{
	background: url(http://image2.megabox.co.kr/mop/home/main/pn_on.png)
}

.timetable_container .movie_time_table.v2 {
	margin-bottom: 10px
}

.timetable_container .movie_time_table.v2 th {
	padding: 19px 20px
}

.timetable_container .movie_time_table.v2 th border-bottom: 1px solid #e5e5e5 strong
	{
	font-weight: bold
}

.timetable_container .movie_time_table.v2 .title {
	width: 200px;
	padding-left: 15px;
	padding-right: 10px;
	border-right: 1px solid #e5e5e5
}

.timetable_container .movie_time_table.v2 .title div {
	position: relative;
	padding-left: 27px
}

.timetable_container .movie_time_table.v2 .title div .age_m {
	position: absolute;
	left: 0;
	top: 0;
	margin: 0
}

.timetable_container .movie_time_table.v2 .title div strong>a {
	color: #333
}

.timetable_container .movie_time_table.v2 .title div strong>a:hover,
	.timetable_container .movie_time_table.v2 .title div strong>a:focus {
	text-decoration: none
}

.timetable_container .movie_time_table.v2 .room {
	width: 130px;
	font-size: 14px;
	text-align: right;
	padding-right: 15px;
	padding-left: 10px
}

.timetable_container .movie_time_table.v2 .room small {
	display: block;
	margin-top: 4px;
	font-weight: 400;
	font-size: 13px
}

.timetable_container .movie_time_table.v2 .lineheight_80 .cinema_time {
	position: relative;
	height: 80px;
	overflow: hidden
}

.timetable_container .movie_time_table.v2 .lineheight_80 .cinema_time a
	{
	display: block;
	width: 100%;
	height: 80px
}

.timetable_container .movie_time_table.v2 .lineheight_80 .cinema_time .time_info
	{
	margin: 5px 0
}

.timetable_container .movie_time_table.v2 .lineheight_80 .cinema_time .hover_time
	{
	line-height: 80px;
	position: absolute
}

.timetable_container .movie_time_table.v2 .lineheight_90 .cinema_time {
	height: 90px
}

.timetable_container .movie_time_table.v2 .lineheight_90 .cinema_time .time_info
	{
	margin: 10px 0
}

.timetable_container .movie_time_table.v2 .lineheight_90 .cinema_time .hover_time
	{
	line-height: 90px
}

.timetable_container .movie_time_table.v2 .li_3 .cinema_time {
	height: 98px
}

.timetable_container .movie_time_table.v2 .li_3 .cinema_time .cinema_time
	{
	line-height: 98px
}

.timetable_container .movie_time_table.v2 .li_3 .cinema_time .time_info .time
	{
	top: 21px
}

.timetable_container .movie_time_table.v2 .li_3 .cinema_time .time_info .seat
	{
	top: 45px
}

.timetable_container .movie_time_table.v2 .li_3 .cinema_time .time_info .ico_box
	{
	top: 43px
}

.timetable_container .movie_time_table.v2 .time_info .type {
	display: none
}

.timetable_container .movie_time_table.v2 .time_info.play_type .type {
	display: block;
	font-size: 11px;
	text-indent: -22px;
	top: 11px
}

.timetable_container .movie_time_table.v2 .time_info.play_type .time {
	top: 22px
}

.timetable_container .movie_time_table.v2 .time_info.play_type .seat {
	top: 45px
}

.timetable_container .theater_list, .timetable_container .theater_list ul
	{
	height: 350px
}

.timetable_container .theater_list li {
	padding: 0
}

.timetable_container .theater_list li a {
	display: block;
	overflow: hidden;
	height: 36.4px;
	padding: 0 20px;
	line-height: 40px;
	white-space: nowrap;
	text-overflow: ellipsis;
	width: 178px
}

.timetable_container .theater_list .depth1 li:hover a,
	.timetable_container .theater_list .depth1 li.active a {
	color: #198591
}

.timetable_container .theater_list .depth2 li a {
	width: 201px;
	background-color: #f9f9f9
}

.timetable_container .theater_list .depth2 li:hover a,
	.timetable_container .theater_list .depth2 li.active a {
	font-weight: 700;
	color: #fff;
	background-color: #198591
}

.timetable_container .theater_list .depth2 li.no_click {
	color: #999;
	cursor: default
}

.timetable_container .theater_list .detail_wrap {
	float: left;
	width: 590px;
	height: 401px;
	background-repeat: no-repeat;
	background-size: cover
}

.timetable_container>.no3 {
	padding: 30px 0
}

.timetable_container>.no3 .curtain_call_header {
	background-color: #f1f1f1;
	color: #f01616;
	border: 1px solid #e1e1e1;
	line-height: 38px;
	padding-left: 25px;
	font-size: 14px
}

.timetable_container>.no3 .curtain_call_header .icon-circle {
	width: 13px;
	height: 13px;
	background:
		url("http://image2.megabox.co.kr/mop/home/timetable/icon_curtain_call.png")
		0 -20px no-repeat;
	vertical-align: middle;
	margin-top: -3px
}

.timetable_container>.no3 .curtain_call_header button {
	float: right;
	border: none;
	background: transparent;
	width: 60px;
	padding: 0
}

.timetable_container>.no3 .curtain_call_header button>i {
	color: #999;
	font-size: 15px
}

.timetable_container>.no3 .curtain_call_table {
	border: 1px solid #e1e1e1;
	border-top: none
}

.timetable_container>.no3 .curtain_call_table thead {
	display: none
}

.timetable_container>.no3 .curtain_call_table td {
	font-size: 14px;
	font-weight: 500
}

.timetable_container>.no3 .curtain_call_table td.subject {
	text-align: left;
	padding: 15px
}

.timetable_container>.no3 .curtain_call_table td button {
	height: 32px;
	border: 1px solid #503396;
	width: 80px;
	background-color: #fff;
	color: #503396;
	font-weight: 700
}

.timetable_container>.no3 .curtain_call_table td button.soldOut {
	border-color: #999;
	color: #777;
	background: #f2f2f2
}

.timetable_container>.no3 .curtain_call_table td button.btn_disabled {
	border-color: #e1e1e1;
	color: #ccc;
	background: #f2f2f2
}

.sub_navi a.timetable {
	width: 116px;
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/sub_navi.png) 0 50%
		no-repeat
}

.sub_navi a.timetable.i0 {
	width: 60px;
	background-position: -539px 50%
}

.sub_navi a.timetable.i2 {
	width: 130px;
	background-position: -176px 50%
}

.sub_navi a.timetable.i3 {
	width: 135px;
	background-position: -363px 50%
}

.sub_navi a.timetable:hover, .sub_navi a.timetable:focus, .sub_navi a.timetable.active
	{
	background-image:
		url(http://image2.megabox.co.kr/mop/home/timetable/sub_navi_on.png)
}

.booking_info_d {
	width: 970px;
	margin: 0 auto 20px;
	position: relative
}

.booking_info_d h3 {
	display: block;
	font-size: 20px;
	height: 20px
}

.booking_info_d>h3 {
	margin: 30px 0;
	background-position: left -37px
}

.booking_info_d .sec_01 {
	height: 1288px;
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/img_booking_info2.jpg)
		no-repeat
}

.booking_info_d .sec_01>li {
	padding-top: 177px;
	margin-left: 19px
}

.booking_info_d .sec_01>li>a {
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/img_booking_info.jpg);
	width: 190px;
	height: 56px;
	display: inline-block;
	font-size: 0;
	letter-spacing: -999px
}

.booking_info_d .sec_01>li>a.go_card {
	background-position: left -406px;
	margin-right: 5px
}

.booking_info_d .sec_01>li>a.go_booking {
	background-position: -202px -406px
}

.booking_info_d .sec_02 {
	overflow: hidden;
	margin-top: 50px;
	margin-bottom: 80px
}

.booking_info_d .sec_02>li h3 {
	margin-bottom: 30px
}

.booking_info_d .sec_02 .fl {
	float: left;
	width: 53%
}

.booking_info_d .sec_02 .fl h3 {
	background-position: left -77px
}

.booking_info_d .sec_02 .fl dl {
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/img_booking_info.jpg)
		no-repeat 20px -160px;
	padding-left: 100px;
	font-size: 13px;
	color: #333;
	margin-bottom: 20px
}

.booking_info_d .sec_02 .fl dl.even {
	background-position: 20px -234px
}

.booking_info_d .sec_02 .fl dl dt {
	margin-bottom: 5px
}

.booking_info_d .sec_02 .fl dl dt a {
	color: #333
}

.booking_info_d .sec_02 .fl dl dd {
	line-height: 18px
}

.booking_info_d .sec_02 .fl dl dd strong {
	color: #503396
}

.booking_info_d .sec_02 .fr {
	float: right;
	border-left: 1px solid #ccc;
	padding-left: 50px;
	width: 47%
}

.booking_info_d .sec_02 .fr p span {
	font-size: 13px;
	color: #333;
	display: block;
	font-weight: normal;
	margin-bottom: 10px
}

.booking_info_d .sec_02 .fr p a {
	border: 1px solid #ccc;
	padding: 5px 9px;
	color: #666;
	font-size: 12px;
	font-family: 돋음
}

.booking_info_d .sec_02 .fr .img_dreamcenter {
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/img_booking_info.jpg);
	font-size: 0;
	letter-spacing: -999px;
	display: block;
	height: 59px;
	width: 367px;
	background-position: left -331px;
	margin-top: 16px
}

.new_megabox {
	position: relative;
	height: 2800px;
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/bg_n_mega.jpg)
		center top no-repeat
}

.new_megabox h3 {
	display: block;
	font-size: 20px;
	height: 20px;
	background-position: left -348px;
	width: 185px;
	position: absolute;
	left: 50%;
	top: 20px;
	margin-left: -480px
}

.new_megabox>p {
	position: absolute;
	color: #333
}

.new_megabox>p>* {
	display: block
}

.new_megabox>p strong {
	font-size: 36px;
	line-height: 48px;
	letter-spacing: -0.7px;
	margin-bottom: 15px
}

.new_megabox>p span {
	line-height: 24px;
	font-size: 16px
}

.new_megabox>p.sec_1_tx {
	top: 120px;
	text-align: center;
	left: 0;
	right: 0
}

.new_megabox>p.sec_1_tx strong {
	font-weight: normal
}

.new_megabox>p.sec_2_tx {
	top: 690px;
	color: #fff;
	left: 50%;
	margin-left: 80px
}

.new_megabox>p.sec_2_tx button {
	margin-bottom: 10px;
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/btn_n_mega01.gif)
		center top no-repeat;
	width: 113px;
	height: 39px
}

.new_megabox>p.sec_3_tx {
	top: 1090px;
	left: 50%;
	margin-left: -430px
}

.new_megabox>p.sec_4_tx {
	top: 1515px;
	left: 50%
}

.new_megabox>p.sec_5_tx {
	top: 1870px;
	left: 50%;
	margin-left: -440px
}

.new_megabox>p.sec_6_tx {
	top: 2445px;
	left: 50%;
	margin-left: 80px;
	color: #fff
}

.new_megabox>p.sec_6_tx strong {
	font-weight: normal
}

.new_megabox>p.sec_6_tx a {
	display: inline-block;
	*display: inline;
	zoom: 1;
	background:
		url(http://image2.megabox.co.kr/mop/home/timetable/btn_n_mega02.gif);
	width: 165px;
	height: 60px;
	font-size: 0;
	letter-spacing: -999px;
	color: transparent;
	margin: 0 3px
}

.new_megabox>p.sec_6_tx a.btn_android {
	background-position: left top
}

.new_megabox>p.sec_6_tx a.btn_ios {
	background-position: -177px top
}

.movielist_util_wrap {
	position: relative;
	width: 100%;
	height: 57px;
	padding: 30px 7px 0
}

.movielist_util_wrap .sort_wrap {
	float: right;
	position: relative
}

.movielist_util_wrap .sort_wrap>li {
	float: left;
	font-size: 12px;
	margin-left: 11px;
	padding-left: 10px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png)
		0 -248px no-repeat
}

.movielist_util_wrap .sort_wrap>li:first-child {
	margin-left: 0;
	padding-left: 0;
	background: none
}

.movielist_util_wrap .sort_wrap>li a {
	color: #666;
	text-decoration: none
}

.movielist_util_wrap .sort_wrap>li a:hover, .movielist_util_wrap .sort_wrap>li a.active
	{
	color: #198591;
	font-weight: 700
}

.movielist_util_wrap .sort_wrap>li a#select_genre {
	display: inline-block;
	width: 82px;
	height: 19px;
	padding: 0 7px 0 9px;
	border: 1px solid #ccc
}

.movielist_util_wrap .sort_wrap>li a#select_genre i {
	float: right;
	margin-top: 2px;
	color: #bcbcbc
}

.movielist_util_wrap .sort_wrap .dropdown-menu {
	left: auto;
	right: 0
}

#movie_detail h3, #moviePost_detail h3, #moviePost_write h3 {
	padding: 0;
	background: none
}

#movie_detail h3>.icon, #moviePost_detail h3>.icon, #moviePost_write h3>.icon
	{
	width: 68px;
	height: 17px;
	margin-right: 4px;
	background: url(http://image2.megabox.co.kr/mop/home/movie/h3.png)
}

#movie_detail .row3>h3>a, #moviePost_detail .row3>h3>a, #moviePost_write .row3>h3>a,
	#movie_detail .row3>h3>a>span, #moviePost_detail .row3>h3>a>span,
	#moviePost_write .row3>h3>a>span {
	color: #999 !important;
	text-decoration: none
}

#movie_detail .row3>h3>a.active, #moviePost_detail .row3>h3>a.active,
	#moviePost_write .row3>h3>a.active, #movie_detail .row3>h3>a.active>span,
	#moviePost_detail .row3>h3>a.active>span, #moviePost_write .row3>h3>a.active>span
	{
	color: #198591 !important
}

#movie_detail .row3>h3>span.line, #moviePost_detail .row3>h3>span.line,
	#moviePost_write .row3>h3>span.line {
	width: 1px;
	height: 18px;
	background-color: #e1e1e1;
	margin: 0 10px;
	display: inline-block;
	vertical-align: middle
}

#movie_detail .row3>h3>.icon, #moviePost_detail .row3>h3>.icon,
	#moviePost_write .row3>h3>.icon {
	width: 124px;
	background-position: 0 -100px
}

#movie_detail .row4>h3>.icon, #moviePost_detail .row4>h3>.icon,
	#moviePost_write .row4>h3>.icon {
	width: 68px;
	background-position: 0 -200px
}

#movie_detail .row5>h3>.icon, #moviePost_detail .row5>h3>.icon,
	#moviePost_write .row5>h3>.icon {
	width: 68px;
	background-position: 0 -300px
}

#movie_detail .row6>h3>.icon, #moviePost_detail .row6>h3>.icon,
	#moviePost_write .row6>h3>.icon {
	width: 178px;
	background-position: 0 -400px
}

#movie_detail .wrapper, #moviePost_detail .wrapper, #moviePost_write .wrapper
	{
	width: 968px;
	margin: 0 auto;
	padding: 90px 0 55px 0
}

#movie_detail .wrapper .contents, #moviePost_detail .wrapper .contents,
	#moviePost_write .wrapper .contents {
	padding: 65px 40px 5px 40px;
	width: 100%;
	background-color: #fff;
	position: relative
}

#movie_detail .wrapper .contents .row1 .left_wrap, #moviePost_detail .wrapper .contents .row1 .left_wrap,
	#moviePost_write .wrapper .contents .row1 .left_wrap {
	float: left;
	width: 230px
}

#movie_detail .wrapper .contents .row1 .left_wrap img, #moviePost_detail .wrapper .contents .row1 .left_wrap img,
	#moviePost_write .wrapper .contents .row1 .left_wrap img {
	width: 100%;
	height: 336px
}

#movie_detail .wrapper .contents .row1 .left_wrap .social_btn_wrap,
	#moviePost_detail .wrapper .contents .row1 .left_wrap .social_btn_wrap,
	#moviePost_write .wrapper .contents .row1 .left_wrap .social_btn_wrap {
	position: relative;
	height: 40px
}

#movie_detail .wrapper .contents .row1 .left_wrap .social_btn_wrap>div,
	#moviePost_detail .wrapper .contents .row1 .left_wrap .social_btn_wrap>div,
	#moviePost_write .wrapper .contents .row1 .left_wrap .social_btn_wrap>div
	{
	position: absolute;
	top: 10px;
	left: 50%;
	margin-left: 10px
}

#movie_detail .wrapper .contents .row1 .left_wrap .social_btn_wrap>div:first-child,
	#moviePost_detail .wrapper .contents .row1 .left_wrap .social_btn_wrap>div:first-child,
	#moviePost_write .wrapper .contents .row1 .left_wrap .social_btn_wrap>div:first-child
	{
	margin-left: -70px
}

#movie_detail .wrapper .contents .row1 .right_wrap, #moviePost_detail .wrapper .contents .row1 .right_wrap,
	#moviePost_write .wrapper .contents .row1 .right_wrap {
	float: right;
	width: 623px
}

#movie_detail .wrapper .contents .row1 .title, #moviePost_detail .wrapper .contents .row1 .title,
	#moviePost_write .wrapper .contents .row1 .title {
	position: relative;
	min-height: 69px;
	border-bottom: 1px solid #e5e5e5;
	overflow: hidden
}

#movie_detail .wrapper .contents .row1 .title h2, #moviePost_detail .wrapper .contents .row1 .title h2,
	#moviePost_write .wrapper .contents .row1 .title h2 {
	margin: 0;
	padding-left: 40px;
	font-size: 30px
}

#movie_detail .wrapper .contents .row1 .title h2 i, #moviePost_detail .wrapper .contents .row1 .title h2 i,
	#moviePost_write .wrapper .contents .row1 .title h2 i {
	position: absolute;
	left: 0;
	top: 0
}

#movie_detail .wrapper .contents .row1 .title p, #moviePost_detail .wrapper .contents .row1 .title p,
	#moviePost_write .wrapper .contents .row1 .title p {
	margin: 8px 0;
	font-size: 12px;
	color: #666;
	float: left
}

#movie_detail .wrapper .contents .row1 .title p.homepage,
	#moviePost_detail .wrapper .contents .row1 .title p.homepage,
	#moviePost_write .wrapper .contents .row1 .title p.homepage {
	margin-bottom: 10px
}

#movie_detail .wrapper .contents .row1 .title p.homepage:before,
	#moviePost_detail .wrapper .contents .row1 .title p.homepage:before,
	#moviePost_write .wrapper .contents .row1 .title p.homepage:before {
	content: "";
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 1px;
	height: 11px;
	margin: 0 10px;
	background: #e1e1e1;
	vertical-align: middle
}

#movie_detail .wrapper .contents .row1 .title p.homepage a,
	#moviePost_detail .wrapper .contents .row1 .title p.homepage a,
	#moviePost_write .wrapper .contents .row1 .title p.homepage a {
	text-decoration: none;
	color: #666;
	word-break: break-all
}

#movie_detail .wrapper .contents .row1 .text, #moviePost_detail .wrapper .contents .row1 .text,
	#moviePost_write .wrapper .contents .row1 .text {
	position: relative;
	border-bottom: 1px solid #e5e5e5;
	padding-bottom: 19px
}

#movie_detail .wrapper .contents .row1 .text .info_wrap,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap {
	margin-top: 11px
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li {
	color: #333;
	font-size: 14px;
	line-height: 22px
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li strong,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li strong,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li strong {
	font-weight: bold
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li span,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li span,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li span {
	color: #666
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li a,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li a,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li a {
	text-decoration: none;
	color: #333
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li span.divider,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li span.divider,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li span.divider
	{
	display: inline-block;
	width: 1px;
	height: 20px;
	margin: 0 10px;
	vertical-align: middle;
	background-color: #e1e1e1
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li .audience_tooltips,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li .audience_tooltips,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li .audience_tooltips
	{
	width: 20px;
	height: 20px;
	overflow: hidden;
	display: inline-block;
	background: url(http://image2.megabox.co.kr/mop/home/btns/icon_help.png)
		50% 50% no-repeat;
	text-indent: -999px;
	vertical-align: middle;
	margin-top: -2px
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li .tooltips_box,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li .tooltips_box,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li .tooltips_box
	{
	display: none;
	-webkit-border-radius: 7px;
	-moz-border-radius: 7px;
	border-radius: 7px;
	background: #000;
	padding: 10px;
	text-align: center;
	color: #fff;
	position: absolute;
	bottom: 48px;
	font-size: 11px;
	line-height: 18px
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li .tooltips_box span,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li .tooltips_box span,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li .tooltips_box span
	{
	color: #fff
}

#movie_detail .wrapper .contents .row1 .text .info_wrap li .tooltips_box:after,
	#moviePost_detail .wrapper .contents .row1 .text .info_wrap li .tooltips_box:after,
	#moviePost_write .wrapper .contents .row1 .text .info_wrap li .tooltips_box:after
	{
	top: 100%;
	left: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-color: rgba(136, 183, 213, 0);
	border-top-color: #000;
	border-width: 7px;
	margin-left: -7px
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap {
	overflow: hidden;
	margin-top: 9px
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .small_star,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .small_star,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .small_star
	{
	position: absolute;
	top: 2px;
	left: -3px
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .left_p,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .left_p,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .left_p,
	#movie_detail .wrapper .contents .row1 .text .reservation_wrap .right_p,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .right_p,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .right_p
	{
	position: relative;
	float: left;
	width: 181px;
	padding-left: 20px;
	color: #333;
	font-size: 14px
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .left_p span,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .left_p span,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .left_p span,
	#movie_detail .wrapper .contents .row1 .text .reservation_wrap .right_p span,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .right_p span,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .right_p span
	{
	color: #666
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .left_p strong,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .left_p strong,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .left_p strong,
	#movie_detail .wrapper .contents .row1 .text .reservation_wrap .right_p strong,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .right_p strong,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .right_p strong
	{
	font-size: 30px
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .left_p,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .left_p,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .left_p
	{
	text-align: right;
	padding-right: 20px;
	padding-left: 0
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .left_p span,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .left_p span,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .left_p span
	{
	font-size: 12px;
	float: left;
	margin-top: 20px
}

#movie_detail .wrapper .contents .row1 .text .reservation_wrap .left_p span.divider,
	#moviePost_detail .wrapper .contents .row1 .text .reservation_wrap .left_p span.divider,
	#moviePost_write .wrapper .contents .row1 .text .reservation_wrap .left_p span.divider
	{
	display: block;
	position: absolute;
	width: 1px;
	height: 20px;
	top: 10px;
	right: 0;
	margin-top: 0;
	background-color: #e1e1e1
}

#movie_detail .wrapper .contents .row1 .rating, #moviePost_detail .wrapper .contents .row1 .rating,
	#moviePost_write .wrapper .contents .row1 .rating {
	position: relative
}

#movie_detail .wrapper .contents .row1 .rating .my_rate,
	#moviePost_detail .wrapper .contents .row1 .rating .my_rate,
	#moviePost_write .wrapper .contents .row1 .rating .my_rate {
	font-size: 12px;
	color: #666;
	padding-top: 22px;
	overflow: visible;
	white-space: nowrap
}

#movie_detail .wrapper .contents .row1 .rating .my_rate span,
	#moviePost_detail .wrapper .contents .row1 .rating .my_rate span,
	#moviePost_write .wrapper .contents .row1 .rating .my_rate span {
	display: inline-block;
	vertical-align: text-bottom
}

#movie_detail .wrapper .contents .row1 .rating .my_rate span:first-child,
	#moviePost_detail .wrapper .contents .row1 .rating .my_rate span:first-child,
	#moviePost_write .wrapper .contents .row1 .rating .my_rate span:first-child
	{
	font-size: 14px
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap {
	position: absolute;
	top: 14px;
	right: 0
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap span.like,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap span.like,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap span.like {
	display: block;
	height: 21px;
	background-color: #ccc;
	position: absolute;
	right: 138px;
	top: 44px;
	padding-left: 9px;
	background: url(http://image2.megabox.co.kr/mop/home/movie/bg_like2.jpg)
		left -4px no-repeat
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap span.like>span,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap span.like>span,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap span.like>span
	{
	display: block;
	height: 21px;
	line-height: 21px;
	font-size: 12px;
	color: #333;
	padding-right: 10px;
	background: url(http://image2.megabox.co.kr/mop/home/movie/bg_like2.jpg)
		right -4px no-repeat
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap span.like>span>i,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap span.like>span>i,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap span.like>span>i
	{
	position: absolute;
	left: 50%;
	top: -4px;
	margin-left: -5px;
	display: block;
	width: 8px;
	height: 5px;
	background: url(http://image2.megabox.co.kr/mop/home/movie/bg_like2.jpg)
		-44px 0 no-repeat
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button {
	display: block;
	float: left;
	width: 100px;
	height: 39px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_movie2.png)
		no-repeat
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_seen
	{
	width: 100px;
	background-position: 0 0;
	margin-left: 0
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_seen:hover,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen:active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen:active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_seen:active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen.active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen.active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_seen.active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen.active:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_seen.active:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_seen.active:hover
	{
	background-position: 0 -44px
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_inte
	{
	background-position: -99px 0
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_inte:hover,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte:active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte:active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_inte:active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte.active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte.active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_inte.active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte.active:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_inte.active:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_inte.active:hover
	{
	background-position: -99px -44px
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte
	{
	background-position: -199px 0;
	margin-right: 0
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte:hover,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte:active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte:active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte:active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte.active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte.active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte.active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte.active:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte.active:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap button.btn_uninte.active:hover
	{
	background-position: -199px -44px
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule
	{
	width: 100px;
	height: 39px;
	float: left;
	margin-left: 5px;
	border: 1px solid #ccc;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_timeSchedule.png)
		50% 50% no-repeat;
	margin-right: 0
}

#movie_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule:hover,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule:active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule:active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule:active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule.active,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule.active,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule.active,
	#movie_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule.active:hover,
	#moviePost_detail .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule.active:hover,
	#moviePost_write .wrapper .contents .row1 .rating .btn_wrap a.btn_timeSchedule.active:hover
	{
	border-color: #198591
}

#movie_detail .wrapper .contents .row1 .btn_reservation,
	#moviePost_detail .wrapper .contents .row1 .btn_reservation,
	#moviePost_write .wrapper .contents .row1 .btn_reservation {
	position: absolute;
	top: 0;
	right: 0;
	width: 121px;
	height: 43px;
	padding-top: 1px;
	background-position: -300px -100px
}

#movie_detail .wrapper .contents .row1 .btn_reservation:hover,
	#moviePost_detail .wrapper .contents .row1 .btn_reservation:hover,
	#moviePost_write .wrapper .contents .row1 .btn_reservation:hover,
	#movie_detail .wrapper .contents .row1 .btn_reservation:active,
	#moviePost_detail .wrapper .contents .row1 .btn_reservation:active,
	#moviePost_write .wrapper .contents .row1 .btn_reservation:active {
	background-position: -300px -150px
}

#movie_detail .wrapper .contents .row2 .text, #moviePost_detail .wrapper .contents .row2 .text,
	#moviePost_write .wrapper .contents .row2 .text {
	color: #666;
	line-height: 20px;
	font-size: 14px
}

#movie_detail .wrapper .contents .row4 h3 button, #moviePost_detail .wrapper .contents .row4 h3 button,
	#moviePost_write .wrapper .contents .row4 h3 button {
	width: 111px;
	height: 22px;
	background-position: -450px -100px
}

#movie_detail .wrapper .contents .row4 .diary_items, #moviePost_detail .wrapper .contents .row4 .diary_items,
	#moviePost_write .wrapper .contents .row4 .diary_items {
	clear: both;
	margin-top: 15px;
	overflow: hidden
}

#movie_detail .wrapper .contents .row4 .diary_items>li,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li,
	#moviePost_write .wrapper .contents .row4 .diary_items>li {
	float: left;
	margin-left: 15px;
	width: 286px;
	height: 327px;
	padding: 10px;
	border: 1px solid #e1e1e1
}

#movie_detail .wrapper .contents .row4 .diary_items>li:first-child,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li:first-child,
	#moviePost_write .wrapper .contents .row4 .diary_items>li:first-child {
	margin-left: 0
}

#movie_detail .wrapper .contents .row4 .diary_items>li .thumb,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .thumb,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .thumb {
	overflow: hidden;
	margin-bottom: 15px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .thumb li,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .thumb li,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .thumb li {
	float: left
}

#movie_detail .wrapper .contents .row4 .diary_items>li .text,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .text,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .text {
	color: #666;
	font-size: 14px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .reply_wrap,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .reply_wrap,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .reply_wrap {
	margin-top: 7px;
	padding-bottom: 4px;
	border-bottom: 1px solid #f0f0f0;
	overflow: hidden
}

#movie_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .reply_wrap p
	{
	margin: 0;
	padding: 0;
	float: left;
	background: none;
	border: none;
	color: #333;
	font-size: 14px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p span,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p span,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .reply_wrap p span
	{
	color: #666
}

#movie_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p.date,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p.date,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .reply_wrap p.date
	{
	float: right;
	padding: 3px 3px 0 0;
	font-size: 12px;
	color: #666
}

#movie_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p:first-child,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .reply_wrap p:first-child,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .reply_wrap p:first-child
	{
	margin-right: 15px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .profile .small_star,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .profile .small_star,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .profile .small_star
	{
	width: 80px;
	height: 14px;
	background-position: 0 -32px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .profile .small_star .fill,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .profile .small_star .fill,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .profile .small_star .fill
	{
	width: 80px;
	height: 14px;
	background-position: 0 -46px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .profile .photo_profile,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .profile .photo_profile,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .profile .photo_profile
	{
	float: left;
	padding: 14px 0 0 5px
}

#movie_detail .wrapper .contents .row4 .diary_items>li .profile .name,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .profile .name,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .profile .name
	{
	float: right;
	width: 178px;
	padding: 23px 0 0 0
}

#movie_detail .wrapper .contents .row4 .diary_items>li .profile .name p,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .profile .name p,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .profile .name p
	{
	font-size: 18px;
	color: #333
}

#movie_detail .wrapper .contents .row4 .diary_items>li .profile .name .bottom>span,
	#moviePost_detail .wrapper .contents .row4 .diary_items>li .profile .name .bottom>span,
	#moviePost_write .wrapper .contents .row4 .diary_items>li .profile .name .bottom>span
	{
	display: block
}

#movie_detail .wrapper .contents .photo_profile img, #moviePost_detail .wrapper .contents .photo_profile img,
	#moviePost_write .wrapper .contents .photo_profile img {
	position: relative;
	width: 56px;
	height: 56px;
	display: block;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	-ms-border-radius: 30px;
	-o-border-radius: 30px;
	border-radius: 30px;
	border: 1px solid #ccc;
	behavior: url(PIE.htc)
}

#movie_detail .wrapper .contents .small_star, #moviePost_detail .wrapper .contents .small_star,
	#moviePost_write .wrapper .contents .small_star {
	display: block;
	position: relative;
	width: 107px;
	height: 15px;
	background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 0
		no-repeat
}

#movie_detail .wrapper .contents .small_star .fill, #moviePost_detail .wrapper .contents .small_star .fill,
	#moviePost_write .wrapper .contents .small_star .fill {
	position: absolute;
	width: 107px;
	height: 15px;
	background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 -15px
		no-repeat
}

#movie_detail .wrapper .contents span.star, #moviePost_detail .wrapper .contents span.star,
	#moviePost_write .wrapper .contents span.star {
	display: block;
	position: relative;
	width: 119px;
	height: 20px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_star.png) 0 0
		no-repeat
}

#movie_detail .wrapper .contents span.star .fill, #moviePost_detail .wrapper .contents span.star .fill,
	#moviePost_write .wrapper .contents span.star .fill {
	position: absolute;
	width: 119px;
	height: 20px;
	background: url(http://image2.megabox.co.kr/mop/home/bg_star.png) 0
		-20px no-repeat
}

#moviePost_detail .wrapper .contents {
	padding: 40px
}

#moviePost_detail .wrapper .contents .popup_box {
	margin-bottom: 0
}

#similar.stillcut_wrap .thumbnail_list {
	height: 270px
}

#similar.stillcut_wrap .thumbnail_list button {
	background-position: right 94px
}

#similar.stillcut_wrap .thumbnail_list>button:first-child {
	background-position: left 94px
}

#similar.stillcut_wrap .thumbnail_list .viewport ul li {
	width: 158px;
	height: 270px
}

#similar.stillcut_wrap .thumbnail_list .viewport ul li img {
	width: 100%;
	height: 228px
}

#similar.stillcut_wrap .thumbnail_list .viewport ul li>p {
	margin-top: 9px;
	font-size: 14px;
	color: #333;
	line-height: 17px;
	padding: 0 10px 0 0
}

#similar.stillcut_wrap .thumbnail_list .viewport ul li>p>span {
	color: #666;
	font-size: 12px
}

.boxoffice {
	position: absolute;
	display: block;
	overflow: hidden;
	width: 44px;
	height: 39px;
	top: 10px;
	left: -2px;
	padding: 0;
	margin: 0;
	text-indent: -9999px;
	background: url(http://image2.megabox.co.kr/mop/home/movie/rank.png) 0 0
		no-repeat
}

.boxoffice.n2 {
	background-position: 0 -100px
}

.boxoffice.n3 {
	background-position: 0 -200px
}

.boxoffice.n4 {
	background-position: 0 -300px
}

.boxoffice.n5 {
	background-position: 0 -400px
}

.boxoffice.n6 {
	background-position: 0 -500px
}

.boxoffice.n7 {
	background-position: 0 -600px
}

.boxoffice.n8 {
	background-position: 0 -700px
}

.boxoffice.n9 {
	background-position: 0 -800px
}

.boxoffice.n10 {
	background-position: 0 -900px
}

#movie_detail .wrapper .contents .row1 .title {
	overflow: visible
}

.curtain_call_wrap {
	display: none;
	position: relative;
	float: right;
	margin-top: 5px
}

.curtain_call_wrap>button {
	font-size: 12px;
	color: #666;
	padding: 0;
	border: none;
	background: transparent
}

.curtain_call_wrap>button .icon-bell {
	background:
		url("http://image2.megabox.co.kr/mop/home/timetable/icon_curtain_call.png")
		0 0 no-repeat;
	width: 14px;
	height: 16px;
	vertical-align: middle
}

.curtain_call_wrap .curtain_call_list {
	display: none;
	position: absolute;
	right: 0;
	top: 27px;
	width: 355px;
	max-height: 444px;
	overflow-y: auto;
	border: 2px solid #666;
	background-color: #fff;
	z-index: 10
}

.curtain_call_wrap .curtain_call_list .date {
	background-color: #f2f2f2;
	height: 39px;
	line-height: 39px;
	color: #333 !important;
	font-size: 14px !important;
	font-weight: bold;
	margin: 0 !important;
	float: none !important;
	text-align: center
}

.curtain_call_wrap .curtain_call_list ul {
	padding-top: 10px
}

.curtain_call_wrap .curtain_call_list ul li {
	position: relative;
	margin: 0 13px;
	padding: 12px 0;
	border-top: 1px solid #e1e1e1;
	min-height: 80px
}

.curtain_call_wrap .curtain_call_list ul li:first-child {
	border-top: none
}

.curtain_call_wrap .curtain_call_list ul li p {
	margin: 0 !important;
	float: none !important;
	font-weight: 500;
	font-size: 12px;
	line-height: 12px
}

.curtain_call_wrap .curtain_call_list ul li .info {
	color: #503396 !important
}

.curtain_call_wrap .curtain_call_list ul li .info span:first-child {
	padding-right: 5px;
	margin-right: 5px;
	border-right: 1px solid #e0e0e0
}

.curtain_call_wrap .curtain_call_list ul li .place {
	font-size: 14px !important;
	font-weight: 700;
	color: #333 !important;
	padding: 7px 0 10px
}

.curtain_call_wrap .curtain_call_list ul li .attendant {
	color: #999 !important;
	line-height: 16px
}

.curtain_call_wrap .curtain_call_list ul li button {
	position: absolute;
	top: 12px;
	right: 0;
	width: 78px;
	height: 32px;
	font-weight: 500
}

.curtain_call_wrap .curtain_call_list ul li button.btn_disabled {
	border-color: #e1e1e1;
	color: #ccc
}

.curtain_call_wrap .curtain_call_list ul li.sold_out .info {
	color: #198591 !important
}

.modal_login_popup .wrapper {
	width: 500px;
	margin: 0 auto;
	padding: 88px 0 30px 0
}

.modal_login_popup .wrapper .popup_box {
	margin: 0
}

.modal_login_popup .wrapper .custom_alert_wrap {
	display: block;
	position: static
}

.modal_login_popup .wrapper .custom_alert {
	position: static;
	width: auto;
	border-radius: 0
}

.modal-backdrop {
	background-color: #e4e4e4
}

.modal-backdrop.fade {
	opacity: 0;
	filter: alpha(opacity = 0)
}

.modal-backdrop.in {
	opacity: .65;
	filter: alpha(opacity = 65)
}

#select_pay.guest_pay .left_wrap .pay_step.step1 dd a, #select_pay.guest_pay .left_wrap .pay_step.step2 dd a
	{
	color: #CCC;
	cursor: auto
}

.modal-backdrop.movie_detail {
	z-index: 1030
}

#movie_detail {
	z-index: 1040
}

.modal-backdrop.reservation {
	z-index: 1050
}

#reservation {
	z-index: 1060
}

.modal-backdrop.select_theater, .modal-backdrop.select_movie,
	.modal-backdrop.select_seat {
	z-index: 1070
}

#select_theater, #select_movie, #select_seat {
	z-index: 1080
}

.modal-backdrop.select_pay {
	z-index: 1090
}

.modal-backdrop.booking_done {
	z-index: 1100
}

.modal-backdrop.modal_login {
	z-index: 2000
}

.modal_login_popup {
	z-index: 2010
}

#partnership td {
	padding: 10px;
	border-top: 1px solid #e1e1e1 !important;
	line-height: 1.6
}

#partnership .lp_coupon_list_body {
	height: 290px
}

#payment_card .lp_body {
	height: 310px !important
}

.okcash_icon {
	padding-left: 24px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/okcash_icon.png) 0 50%
		no-repeat
}

.okcash_input {
	width: 100% !important;
	height: 25px !important;
	margin: 4px 0 !important;
	border: 0;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/okcash_input.png);
	font: 11px '돋움', dotum, sans-serif;
	color: #FFF
}

.nav2 {
	padding: 20px
}

.nav2>li {
	display: inline-block;
	margin-right: 20px
}

.nav2 a {
	font-size: 12px;
	text-decoration: none;
	color: #666
}

.nav2 .active .iradio_minimal {
	background-position: -16px 0
}

.special_seat {
	font-size: 12px;
	color: #333
}

.special_seat .right_wrap {
	background: #404040
}

.special_seat .row2_2 {
	position: relative;
	padding: 0 !important;
	border: 0 !important;
	height: 420px;
	overflow: auto
}

.special_seat .row2_2>img {
	width: 100%
}

.special_seat .row2_2 li {
	position: absolute;
	text-align: center
}

.special_seat .row2_2 div {
	position: absolute;
	top: 49px;
	right: 0;
	width: 175px;
	font-weight: 700;
	white-space: nowrap
}

.special_seat .row2_2 div>p {
	position: relative;
	height: 63px;
	padding: 14px 0 0 74px;
	line-height: 1.2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.special_seat .row2_2 div>p img {
	position: absolute;
	top: 0;
	left: 0
}

.special_seat .row2_2 div>p span {
	display: block;
	color: #666
}

.special_seat .row2_2 div>p strong {
	padding-left: 12px;
	background: url(http://image2.megabox.co.kr/mop/home/common/split.png) 0
		50% no-repeat
}

.special_seat .row3 {
	padding: 20px 30px
}

.special_seat .row3 li b {
	float: left;
	margin: 0 4px 10px 0
}

.special_seat .row3 li i {
	display: inline-block;
	width: 16px;
	height: 16px;
	margin-right: 4px;
	vertical-align: middle
}

.special_seat .row3 li i.i1 {
	background: #c7bad8
}

.special_seat .row3 li i.i2 {
	background: #a6a0ae
}

.special_seat .row3 li i.i3 {
	background: #eae8ed
}

.special_seat .row3 li i.i4 {
	background: #e3dcec
}

.special_seat .row3 li span {
	display: block;
	margin-bottom: 10px
}

.booking_lp h2, .booking_lp h3 {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png)
		0 0 no-repeat;
	height: 26px;
	width: 80px;
	text-indent: -9999px;
	overflow: hidden
}

.booking_lp h3 a {
	display: block;
	height: 26px
}

.booking_lp h2.h2_date {
	background-position: 0 -160px
}

.booking_lp h2.h2_theater {
	background-position: -80px -160px
}

.booking_lp h2.h2_movie {
	background-position: -160px -160px
}

.booking_lp h2.h2_time {
	background-position: -240px -160px
}

.booking_lp h3.h3_theater1 {
	background-position: -400px -160px;
	cursor: pointer
}

.booking_lp h3.h3_theater1.active {
	background-position: -400px -200px
}

.booking_lp h3.h3_theater2 {
	background-position: -320px -160px;
	cursor: pointer
}

.booking_lp h3.h3_theater2.active {
	background-position: -320px -200px
}

.booking_lp h3.h3_movie {
	width: 100px;
	background-position: -480px -160px
}

.booking_lp h3.h3_seat {
	width: 150px;
	background-position: -580px -160px
}

.booking_lp h3.h3_pay {
	width: 500px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/bookingSelectTitle.png)
		0 0 no-repeat
}

.booking_lp h3.h3_payment {
	width: 155px;
	background-position: -400px -250px
}

.booking_lp h3.h3_booking_done {
	width: 155px;
	background-position: -399px -250px
}

.booking_lp h3.h3_online_ticket {
	width: 155px;
	text-indent: 0;
	background: none
}

.booking_lp h3.h3_movie_all {
	width: 85px;
	background-position: -580px -300px
}

.booking_lp h3.h3_movie_all.active {
	background-position: -580px -350px
}

.booking_lp h3.h3_specialcontent {
	width: 105px;
	background-position: -700px -300px
}

.booking_lp h3.h3_specialcontent.active {
	background-position: -700px -351px
}

.booking_lp .h3_split {
	width: 1px;
	height: 27px;
	margin: 0 20px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/h3_split.png)
		50% 50% no-repeat
}

.booking_lp button.lang_ko, .booking_lp button.lang_en, .booking_lp button.refresh_all
	{
	position: absolute;
	top: -35px;
	right: 45px;
	width: 100px !important;
	height: 30px;
	background-position: 0 -600px
}

.booking_lp button.lang_en {
	background-position: -150px -600px
}

.booking_lp button.refresh_all {
	background-position: -300px -600px
}

#reservation #datepicker_wrap {
	position: relative
}

#reservation #datepicker_wrap .datepicker {
	top: 28px !important;
	left: auto !important;
	right: 0 !important
}

#reservation .wrapper {
	width: 968px;
	margin: 0 auto;
	padding: 88px 0 30px 0
}

#reservation .wrapper .contents.ReservationBn_ok {
	height: 698px
}

#reservation .wrapper .contents {
	width: 100%;
	height: 619px;
	border: 1px solid #cdcdcd;
	background-color: #f9f9f9;
	position: relative
}

#reservation .wrapper .contents button.btn_add {
	display: block;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	border: none;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_add.png)
		50% 50% no-repeat
}

#reservation .wrapper .contents button.close_small {
	position: absolute;
	right: -1px;
	top: -1px;
	width: 20px;
	height: 20px;
	border: 1px solid #e0e0e0;
	background: #ffffff
		url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png) 4px -86px
		no-repeat
}

#reservation .wrapper .contents .left_wrap {
	float: left;
	width: 433px;
	border-right: 1px solid #e0e0e0;
	margin-right: -1px
}

#reservation .wrapper .contents .left_wrap>div {
	border-bottom: 1px solid #e0e0e0;
	padding: 18px 19px 0 20px
}

#reservation .wrapper .contents .date {
	height: 90px;
	padding-bottom: 9px
}

#reservation .wrapper .contents .left_wrap>.theater {
	height: 219px
}

#reservation .wrapper .contents .left_wrap>.theater ul li {
	position: relative;
	float: left;
	width: 190px;
	height: 66px;
	border: 1px solid #e0e0e0;
	display: table
}

#reservation .wrapper .contents .left_wrap>.theater ul li span {
	display: table-cell;
	height: 100%;
	vertical-align: middle;
	text-align: center
}

#reservation .wrapper .contents .left_wrap>.theater ul li.selected {
	background-color: #fff
}

#reservation .wrapper .contents .left_wrap>.movie {
	height: 308px;
	border: none;
	position: relative
}

#reservation .wrapper .contents .left_wrap>.movie .select_all {
	position: absolute;
	top: 55px;
	width: 392px;
	height: 230px;
	border: 1px solid #e1e1e1;
	z-index: 1
}

#reservation .wrapper .contents .left_wrap>.movie .select_all .glass {
	height: 139px;
	background: #fff;
	opacity: .9;
	filter: alpha(opacity = 90)
}

#reservation .wrapper .contents .left_wrap>.movie .select_all .glass p {
	text-align: center;
	padding-top: 50px;
	color: #333;
	font-size: 34px
}

#reservation .wrapper .contents .left_wrap>.movie .select_all .btn_wrap
	{
	border-top: 1px solid #e1e1e1;
	border-bottom: 1px solid #e1e1e1;
	height: 90px;
	background: #fff
}

#reservation .wrapper .contents .left_wrap>.movie .select_all .btn_wrap .select_movie
	{
	width: 100%;
	height: 100%;
	margin: 0;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/select_movie.png) 50%
		50% no-repeat
}

#reservation .wrapper .contents .left_wrap>.movie label {
	display: block;
	font-size: 12px;
	color: #666;
	margin: -1px 0 3px 12px
}

#reservation .wrapper .contents .left_wrap>.movie .list ul {
	overflow: hidden
}

#reservation .wrapper .contents .left_wrap>.movie .list li {
	float: left;
	width: 97px;
	margin-left: 1px
}

#reservation .wrapper .contents .left_wrap>.movie .list li .poster {
	position: relative;
	border: 1px solid #e0e0e0;
	height: 140px
}

#reservation .wrapper .contents .left_wrap>.movie .list li .poster img {
	width: 100%;
	height: 100%
}

#reservation .wrapper .contents .left_wrap>.movie .list li .poster button.close_small
	{
	top: 0
}

#reservation .wrapper .contents .left_wrap>.movie .list li:first-child {
	margin-left: 0
}

#reservation .wrapper .contents .left_wrap>.movie .list li.selected .poster
	{
	border: none
}

#reservation .wrapper .contents .left_wrap>.movie .list.selected li {
	width: 97px
}

#reservation .wrapper .contents .left_wrap>.movie .list .check {
	height: 90px;
	margin-right: 2px;
	padding: 15px 30px;
	border: 1px solid #e0e0e0;
	border-top: none;
	background-color: #fff
}

#reservation .wrapper .contents .left_wrap>.movie .list .check label {
	float: left;
	width: 33.333333%;
	margin: 6px 0;
	cursor: pointer
}

#reservation .wrapper .contents .left_wrap>.movie .pop_atmos {
	display: none;
	background: url(http://image2.megabox.co.kr/mop/home/bg_pop_ATMOS.png) 0
		0 no-repeat;
	padding: 0;
	width: 310px;
	height: 213px;
	position: absolute;
	right: -230px;
	bottom: 46px;
	padding: 32px 20px 20px 40px;
	font-size: 12px;
	z-index: 99
}

#reservation .wrapper .contents .left_wrap>.movie .pop_atmos strong {
	color: #503396;
	letter-spacing: -1px;
	display: block;
	margin-bottom: 10px
}

#reservation .wrapper .contents .left_wrap>.movie .pop_atmos span {
	position: relative;
	padding-left: 10px;
	color: #333;
	font-size: 12px;
	line-height: 16px;
	display: block;
	margin-bottom: 10px
}

#reservation .wrapper .contents .left_wrap>.movie .pop_atmos span.last {
	margin-bottom: 0
}

#reservation .wrapper .contents .left_wrap>.movie .pop_atmos span i {
	position: absolute;
	left: 0;
	top: 0
}

#reservation .wrapper .contents .right_wrap {
	float: left;
	width: 534px
}

#reservation .wrapper .contents .right_wrap>div {
	border-bottom: 1px solid #e0e0e0
}

#reservation .wrapper .contents .right_wrap .time {
	height: 90px;
	padding: 18px 19px 9px 20px
}

#reservation .wrapper .contents .right_wrap .time .slidebar_item {
	width: 440px
}

#reservation .wrapper .contents .right_wrap .time .slidebar_item li {
	width: 44px
}

#reservation .wrapper .contents .right_wrap .movie_list {
	height: 527px;
	border: none;
	overflow: auto;
	position: relative
}

#reservation .wrapper .contents .right_wrap .movie_list ul li {
	height: 60px;
	border-bottom: 1px solid #e5e5e5;
	border-left: 1px solid #e5e5e5;
	background-color: #fff;
	cursor: pointer
}

#reservation .wrapper .contents .right_wrap .movie_list ul li.selected {
	background-color: #ededed
}

#reservation .wrapper .contents .right_wrap .movie_list ul li.selected .time_table
	{
	color: #198591
}

#reservation .wrapper .contents .right_wrap .movie_list ul li.no_movie_list
	{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #FFF
		url(http://image2.megabox.co.kr/mop/home/no_movie_list.png) 50% 50%
		no-repeat;
	cursor: default
}

#reservation .wrapper .contents .right_wrap .movie_list ul li>div {
	float: left;
	position: relative;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png)
		right -357px no-repeat;
	height: 100%
}

#reservation .wrapper .contents .right_wrap .movie_list ul li>div p {
	margin: 0;
	padding: 0
}

#reservation .wrapper .contents .right_wrap .movie_list .viewing_time {
	width: 26%;
	padding: 15px 0 0 20px
}

#reservation .wrapper .contents .right_wrap .movie_list .viewing_time p
	{
	color: #333;
	font-size: 14px
}

#reservation .wrapper .contents .right_wrap .movie_list .viewing_time p strong
	{
	font-size: 20px
}

#reservation .wrapper .contents .right_wrap .movie_list .viewing_time .morning
	{
	top: 3px;
	font-size: 12px;
	color: #666
}

#reservation .wrapper .contents .right_wrap .movie_list .movie {
	width: 49%;
	padding: 10px 0 0 10px
}

#reservation .wrapper .contents .right_wrap .movie_list .movie .title {
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	vertical-align: top;
	font-weight: 700
}

#reservation .wrapper .contents .right_wrap .movie_list .movie .title a
	{
	color: #333;
	text-decoration: none
}

#reservation .wrapper .contents .right_wrap .movie_list .theater_wrap {
	width: 25%;
	padding: 10px 19px 0 0;
	background: none;
	float: right
}

#reservation .wrapper .contents .right_wrap .movie_list .theater_wrap p
	{
	text-align: right;
	white-space: nowrap;
	font-size: 12px;
	line-height: 14px
}

#reservation .wrapper .contents .right_wrap .movie_list .morning,
	#reservation .wrapper .contents .right_wrap .movie_list .subtitle,
	#reservation .wrapper .contents .right_wrap .movie_list .event,
	#reservation .wrapper .contents .right_wrap .movie_list .seat {
	position: absolute;
	font-size: 12px;
	color: #666
}

#reservation .wrapper .contents .right_wrap .movie_list .subtitle {
	top: 35px
}

#reservation .wrapper .contents .right_wrap .movie_list .event {
	top: 35px;
	right: 8px
}

#reservation .wrapper .contents .right_wrap .movie_list .event .greeting
	{
	color: #999
}

#reservation .wrapper .contents .right_wrap .movie_list .seat {
	top: 40px;
	right: 19px;
	font-weight: 400 !important
}

#reservation .wrapper .contents .title {
	margin-bottom: 11px
}

#reservation .wrapper .contents .title h2 {
	float: left;
	color: #503396;
	font-size: 24px;
	margin: 0;
	padding: 0
}

#reservation .wrapper .contents .title .util {
	float: right
}

#reservation .wrapper .contents .title .util .btn_util {
	width: 22px;
	height: 22px
}

#reservation .wrapper .contents .title .util .btn_util.cal {
	background-position: 0 -80px
}

#reservation .wrapper .contents .title .util .btn_util.fav {
	background-position: -40px -80px
}

#reservation .wrapper .contents .title .util .btn_util.fav.active {
	background-position: -40px -120px
}

#reservation .wrapper .contents .title .util .btn_util.refresh {
	background-position: -80px -80px
}

#reservation .wrapper .contents .title .util .btn_util.btn_select_all {
	background-position: -120px -80px
}

#reservation .wrapper .contents .title .util .btn_util.btn_select_all.active
	{
	background-position: -120px -120px
}

#reservation .wrapper .contents .close {
	position: absolute;
	right: -1px;
	top: -39px;
	width: 38px;
	height: 38px;
	border: 1px solid #cdcdcd;
	border-bottom: none;
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png) 9px 9px
		no-repeat;
	opacity: 1;
	filter: alpha(opacity = 100)
}

#reservation.fade .wrapper {
	-webkit-transform: translate(0, -25%);
	-ms-transform: translate(0, -25%);
	transform: translate(0, -25%);
	-webkit-transition: -webkit-transform .3s ease-out;
	-moz-transition: -moz-transform .3s ease-out;
	-o-transition: -o-transform .3s ease-out;
	transition: transform .3s ease-out
}

#reservation.in .wrapper {
	-webkit-transform: translate(0, 0);
	-ms-transform: translate(0, 0);
	transform: translate(0, 0)
}

.booking_lp2 {
	overflow-y: scroll
}

.booking_lp2 .wrapper {
	width: 970px;
	margin: 0 auto;
	padding: 88px 0 30px 0
}

.booking_lp2 .wrapper .contents {
	position: relative;
	min-height: 554px;
	border: 1px solid #cdcdcd;
	background-color: #fff
}

.booking_lp2 .wrapper .contents button {
	width: 68px;
	height: 30px;
	float: left;
	margin-left: 10px
}

.booking_lp2 .wrapper .contents button.cancel {
	background-position: 0 0
}

.booking_lp2 .wrapper .contents button.cancel:hover, .booking_lp2 .wrapper .contents button.cancel:active
	{
	background-position: 0 -40px
}

.booking_lp2 .wrapper .contents button.ok {
	background-position: -80px 0
}

.booking_lp2 .wrapper .contents button.ok:hover, .booking_lp2 .wrapper .contents button.ok:active
	{
	background-position: -80px -40px
}

.booking_lp2 .wrapper .contents button.next {
	background-position: -320px 0
}

.booking_lp2 .wrapper .contents button.next:hover, .booking_lp2 .wrapper .contents button.next:active
	{
	background-position: -320px -40px
}

.booking_lp2 .wrapper .contents button.prev {
	background-position: -240px 0
}

.booking_lp2 .wrapper .contents button.prev:hover, .booking_lp2 .wrapper .contents button.prev:active
	{
	background-position: -240px -40px
}

.booking_lp2 .wrapper .contents button.pay {
	background-position: -160px 0
}

.booking_lp2 .wrapper .contents button.pay:hover, .booking_lp2 .wrapper .contents button.pay:active
	{
	background-position: -160px -40px
}

.booking_lp2 .wrapper .contents button.booking_done_print {
	width: 141px;
	height: 30px;
	background-position: 0 -500px
}

.booking_lp2 .wrapper .contents button.mypage_booking_RePrint {
	width: 111px;
	height: 30px;
	background-position: 0 -650px
}

.booking_lp2 .wrapper .contents button.booking_done_sms {
	width: 158px;
	height: 30px;
	background-position: -150px -500px
}

.booking_lp2 .wrapper .contents button.booking_done_cancel {
	width: 153px;
	height: 30px;
	background-position: -350px -500px
}

.booking_lp2 .wrapper .contents button.booking_done_done {
	width: 68px;
	height: 30px;
	background-position: -550px -500px
}

.booking_lp2 .wrapper .contents .pay_final_wrp {
	position: absolute;
	bottom: 10px;
	left: 2px;
	width: 170px
}

.booking_lp2 .wrapper .contents .movie_header {
	overflow: hidden;
	padding: 13px 20px 12px 20px;
	background-color: #f9f9f9;
	border-bottom: 1px solid #e0e0e0
}

.booking_lp2 .wrapper .contents .movie_header h3 {
	color: #503396;
	padding: 0;
	margin: 0;
	margin-top: 4px
}

.booking_lp2 .wrapper .contents .movie_body {
	position: relative
}

.booking_lp2 .wrapper .contents .util {
	height: 42px;
	padding: 9px 19px 0 19px
}

.booking_lp2 .wrapper .contents .util .selected {
	float: left;
	overflow: hidden
}

.booking_lp2 .wrapper .contents .util .selected>p {
	display: block;
	float: left;
	padding: 3px 10px;
	margin-right: 10px;
	border: 1px solid #ededed;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
	background-color: #fff;
	font-size: 12px
}

.booking_lp2 .wrapper .contents .util .selected>p i {
	cursor: pointer;
	margin-left: 5px
}

.booking_lp2 .wrapper .contents .util .selected .sel_all {
	width: 25px;
	height: 25px;
	float: left;
	background-position: -240px -80px
}

.booking_lp2 .wrapper .contents .util .selected>p:hover {
	background-color: #ededed
}

.booking_lp2 .wrapper .contents .util .sort {
	float: right
}

.booking_lp2 .wrapper .contents .util .sort li {
	float: left;
	padding: 7px 0 6px 0;
	border-left: none;
	line-height: auto;
	margin: 0
}

.booking_lp2 .wrapper .contents .util .sort li.last a {
	padding-right: 0;
	border: none
}

.booking_lp2 .wrapper .contents .util .sort li a {
	display: block;
	padding: 0 14px;
	border-right: 1px solid #ddd;
	color: #666;
	font-size: 12px;
	text-decoration: none;
	line-height: 1
}

.booking_lp2 .wrapper .contents .util .sort li a.active {
	color: #198591;
	font-weight: bold
}

#select_movie .ps-scrollbar-x-rail, #moviePost_select_movie .ps-scrollbar-x-rail
	{
	display: none !important
}

#select_movie .movie_body, #moviePost_select_movie .movie_body {
	padding: 0 18px;
	overflow: auto;
	height: 454px
}

#select_movie .movie_body .movie_list, #moviePost_select_movie .movie_body .movie_list
	{
	overflow: hidden;
	margin-right: -18px
}

#select_movie .movie_body .movie_list li, #moviePost_select_movie .movie_body .movie_list li
	{
	position: relative;
	float: left;
	width: 132px;
	height: 227px;
	cursor: pointer
}

#select_movie .movie_body .movie_list li span.border,
	#moviePost_select_movie .movie_body .movie_list li span.border {
	display: none
}

#select_movie .movie_body .movie_list li.selected span.border,
	#moviePost_select_movie .movie_body .movie_list li.selected span.border
	{
	position: absolute;
	display: block;
	width: 131px;
	height: 188px;
	margin-left: 1px;
	border: 3px solid #198591;
	border-bottom: none;
	background: none
}

#select_movie .movie_body .movie_list li.selected:first-child span.border,
	#moviePost_select_movie .movie_body .movie_list li.selected:first-child span.border
	{
	margin-left: 0;
	width: 132px
}

#select_movie .movie_body .movie_list li.selected .title,
	#moviePost_select_movie .movie_body .movie_list li.selected .title {
	color: #fff;
	background-color: #198591
}

#select_movie .movie_body .movie_list li.selected .title p,
	#moviePost_select_movie .movie_body .movie_list li.selected .title p {
	margin-top: 10px;
	padding-left: 7px;
	border: none
}

#select_movie .movie_body .movie_list li:first-child span.border,
	#moviePost_select_movie .movie_body .movie_list li:first-child span.border
	{
	margin-left: 0;
	width: 132px
}

#select_movie .movie_body .movie_list li:first-child .poster,
	#moviePost_select_movie .movie_body .movie_list li:first-child .poster,
	#select_movie .movie_body .movie_list li:first-child>.title,
	#moviePost_select_movie .movie_body .movie_list li:first-child>.title {
	border: none
}

#select_movie .movie_body .movie_list li.last, #moviePost_select_movie .movie_body .movie_list li.last
	{
	border-right: 1px solid #e5e5e5
}

#select_movie .movie_body .movie_list li .poster,
	#moviePost_select_movie .movie_body .movie_list li .poster {
	height: 188px;
	border-left: 1px solid #fff
}

#select_movie .movie_body .movie_list li .poster img,
	#moviePost_select_movie .movie_body .movie_list li .poster img {
	display: block;
	width: 100%;
	height: 100%
}

#select_movie .movie_body .movie_list li .title, #moviePost_select_movie .movie_body .movie_list li .title
	{
	border-left: 1px solid #e5e5e5;
	height: 39px;
	font-size: 12px;
	color: #333;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	padding-top: 10px;
	padding-left: 7px
}

#select_theater .util {
	top: -33px !important
}

#select_theater div.detail_wrap {
	width: 580px;
	float: left;
	font-size: 12px;
	color: #333
}

#select_theater div.detail_wrap div {
	padding: 15px 20px
}

#select_theater div.detail_wrap h4 {
	margin: 0 0 5px;
	font-size: 24px
}

#select_theater div.detail_wrap .skip_box {
	position: absolute;
	left: 366px;
	top: 0
}

#select_theater div.detail_wrap .skip_box a {
	position: absolute;
	left: 60px
}

#select_theater div.detail_wrap .ck_bm a, #select_theater div.detail_wrap .ck_dm a
	{
	top: 335px
}

#select_theater div.detail_wrap .ck_m a {
	top: 282px
}

#select_theater div.detail_wrap .ck_om a {
	top: 305px
}

#select_theater div.detail_wrap .ck_tm a, #select_theater div.detail_wrap .ck_pr a,
	#select_theater div.detail_wrap .ck_fc a, #select_theater div.detail_wrap .ck_kd a
	{
	top: 310px
}

#select_theater div.detail_wrap .ck_m2 a {
	top: 330px
}

.theater_list {
	display: block;
	height: 453px;
	border-top: 1px solid #e5e5e5;
	background: #FFF;
	overflow: hidden;
	clear: both
}

.theater_list ul {
	display: block;
	overflow: hidden;
	overflow-y: auto;
	height: 451px;
	float: left;
	border-right: 1px solid #e5e5e5
}

.theater_list ul li {
	height: 36.4px;
	font-size: 12px;
	color: #333;
	padding: 12px 15px 0 20px;
	cursor: pointer;
	font-weight: 800
}

.theater_list ul li.no_click {
	color: #7e7e7e;
	cursor: default;
	font-weight: normal
}

.theater_list ul a {
	text-decoration: none;
	color: #333
}

.theater_list ul.depth1 {
	width: 178px
}

.theater_list ul.depth1 li {
	border-bottom: 1px solid #e5e5e5
}

.theater_list ul.depth1 li label {
	font-weight: normal
}

.theater_list ul.depth1 li label strong {
	font-weight: bold
}

.theater_list ul.depth1 li span {
	display: none
}

.theater_list ul.depth1 li div {
	width: 3px;
	height: 3px;
	border-radius: 50%;
	background-color: transparent;
	display: inline-block;
	margin-left: 3px;
	vertical-align: text-top
}

.theater_list ul.depth1 li div.haveNew {
	background-color: #d43b4a
}

.theater_list ul.depth1 li:hover {
	background-color: #f9f9f9
}

.theater_list ul.depth1 li.active {
	background-color: #f9f9f9
}

.theater_list ul.depth1 li.active span {
	display: block;
	float: right;
	font-weight: 700;
	font-size: 16px;
	margin-top: -2px
}

.theater_list ul.depth2 {
	width: 201px;
	background-color: #f9f9f9
}

.theater_list ul.depth2 li:hover {
	color: #198591
}

.theater_list ul.depth2 li.active {
	font-weight: 700;
	color: #fff;
	background-color: #198591
}

.theater_list ul.depth2 li.active a div.newOpen {
	background-position: -1px -25px
}

.theater_list ul.depth2 li.active a div.renewal {
	background-position: -55px -25px
}

.theater_list ul.depth2 li.active a div.event {
	background-position: -110px -25px
}

.theater_list ul.depth2 li.active a div.dueToOpen {
	background-position: -181px -25px
}

.theater_list ul.depth2 li a div {
	width: 45px;
	height: 16px;
	background:
		url(http://image2.megabox.co.kr/mop/home/map/theater_condition.png)
		no-repeat 50px -1px;
	display: inline-block;
	margin-left: 6px;
	vertical-align: middle
}

.theater_list ul.depth2 li a div.newOpen {
	background-position: -1px -1px
}

.theater_list ul.depth2 li a div.renewal {
	background-position: -55px -1px
}

.theater_list ul.depth2 li a div.event {
	background-position: -110px -1px
}

.theater_list ul.depth2 li a div.dueToOpen {
	background-position: -181px -1px
}

.theater_list ul.depth2 .liketheater {
	padding-top: 40px;
	text-align: center;
	font-weight: bold;
	line-height: 1.4;
	font-size: 14px
}

.theater_list ul.depth2 .liketheater .btn-st1 {
	width: 130px;
	padding: 6px 0;
	float: none
}

#select_seat .left_wrap .row1>* {
	float: left
}

#select_seat .left_wrap .row1 label {
	line-height: 25px
}

#select_seat .bootstrap-select {
	width: auto;
	margin: 0 12px 0 8px
}

#select_seat .bootstrap-select>button.btn-default {
	width: 44px !important;
	height: 25px;
	border-radius: 3px;
	background: #FFF;
	font-weight: 700
}

#select_seat .bootstrap-select>button.btn-default .caret {
	width: 11px;
	height: 7px;
	margin-top: -3px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/select_seat_caret.png);
	opacity: .5
}

#select_seat .bootstrap-select.open>button.btn-default .caret {
	opacity: 1
}

#select_seat .seat_body .right_wrap .row2 .title h4 {
	display: -webkit-box;
	word-wrap: break-word;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	text-overflow: ellipsis;
	overflow: hidden
}

#select_seat .custom_select_seat, #select_pay .custom_select_seat {
	height: 25px;
	padding-top: 4px;
	background-color: #fff;
	border: 1px solid #d9d9d9;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
	border-radius: 3px;
	background-image: none
}

#select_seat .custom_select_seat .customSelectInner, #select_pay .custom_select_seat .customSelectInner
	{
	background:
		url(http://image2.megabox.co.kr/mop/home/bg_customselect2.gif) right
		4px no-repeat
}

#select_seat .seat_body>div, #select_pay .seat_body>div {
	height: 496px;
	float: left
}

#select_seat .seat_body .left_wrap, #select_pay .seat_body .left_wrap {
	width: 798px
}

#select_seat .seat_body .left_wrap .row1, #select_pay .seat_body .left_wrap .row1
	{
	height: 42px;
	border-bottom: 1px solid #e5e5e5;
	padding: 8px 20px 0 20px
}

#select_seat .seat_body .left_wrap .row1 p, #select_pay .seat_body .left_wrap .row1 p
	{
	padding-top: 4px;
	color: #666;
	font-size: 12px;
	float: right
}

#select_seat .seat_body .left_wrap .row1 label, #select_pay .seat_body .left_wrap .row1 label
	{
	font-size: 12px;
	cursor: pointer
}

#select_seat .seat_body .left_wrap .row2, #select_pay .seat_body .left_wrap .row2
	{
	height: 34px;
	padding: 9px 20px 0 20px;
	border-bottom: 1px solid #e5e5e5
}

#select_seat .seat_body .left_wrap .row2 i, #select_pay .seat_body .left_wrap .row2 i
	{
	cursor: pointer;
	color: #666
}

#select_seat .seat_body .left_wrap .row2 #seat_royal_info, #select_pay .seat_body .left_wrap .row2 #seat_royal_info
	{
	display: none
}

#select_seat .seat_body .left_wrap .row2 #seat_couple_info, #select_pay .seat_body .left_wrap .row2 #seat_couple_info
	{
	display: none
}

#select_seat .seat_body .left_wrap .row3, #select_pay .seat_body .left_wrap .row3
	{
	position: relative;
	width: 100%;
	height: 412px;
	overflow: auto
}

#select_seat .seat_body .left_wrap .row3 .alert_seat, #select_pay .seat_body .left_wrap .row3 .alert_seat
	{
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10;
	width: 100%;
	height: 100%;
	margin: 0;
	border: 0;
	background: url(http://image2.megabox.co.kr/mop/home/common/blk_op6.png);
	font-weight: 700;
	font-size: 14px;
	text-align: center;
	color: #FFF
}

#select_seat .seat_body .left_wrap .row3 .alert_seat .fa, #select_pay .seat_body .left_wrap .row3 .alert_seat .fa
	{
	font-size: 16px;
	vertical-align: bottom
}

#select_seat .seat_body .left_wrap .row3 .place, #select_pay .seat_body .left_wrap .row3 .place
	{
	overflow: auto;
	height: 100%;
	background: #F9F9F9
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap
	{
	width: 651px;
	float: left;
	padding: 20px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .screen,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .screen {
	overflow: hidden;
	height: 25px;
	line-height: 25px;
	text-align: center;
	margin: 0 auto 41px auto;
	background: #ececec
		url(http://image2.megabox.co.kr/mop/home/tx_screen.png) 50% 50%
		no-repeat;
	text-indent: -999em
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position
	{
	position: relative;
	margin: 0 auto
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position span,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position span
	{
	position: absolute;
	display: block;
	float: none;
	width: 16px;
	height: 16px;
	margin: 0;
	padding: 0;
	border: 0;
	line-height: 17px;
	color: #fff;
	overflow: hidden;
	font-size: 11px;
	font-family: tahoma, dotum, sans-serif;
	cursor: default !important;
	text-align: center
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position button,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position button
	{
	position: absolute;
	display: block;
	float: none;
	width: 16px;
	height: 16px;
	margin: 0;
	padding: 0;
	border: 0;
	line-height: 17px;
	color: #fff;
	overflow: hidden;
	font-size: 11px;
	font-family: tahoma, dotum, sans-serif;
	cursor: pointer !important;
	text-align: center
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit
	{
	background-image:
		url(http://image2.megabox.co.kr/mop/home/movie/bg_seat.png);
	background-repeat: no-repeat;
	text-indent: -9999px;
	cursor: default
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top,
	#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.bottom,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.bottom,
	#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top_bottom,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top_bottom,
	#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.left_right,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.left_right
	{
	width: 28px;
	height: 17px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.left,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.left,
	#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.right,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.right
	{
	width: 17px;
	height: 28px;
	background-position: 0 -50px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top
	{
	background-position: -30px 0
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.bottom,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.bottom
	{
	background-position: 0 0
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top_bottom,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top_bottom
	{
	height: 23px;
	background-position: -60px 0
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.left_right,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.left_right
	{
	height: 28px;
	background-position: -90px 0
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.right,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.right
	{
	background-position: -30px -50px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .seat_done,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .seat_done,
	#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .ico_wheel,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .ico_wheel
	{
	background:
		url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0
		-27px no-repeat;
	cursor: default !important
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .seat_done,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .seat_done
	{
	text-indent: -9999px;
	background-position: 50% -27px;
	background-color: #ccc
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .ico_wheel,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .ico_wheel
	{
	background-position: 0 -187px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .ico_wheel_x,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .ico_wheel_x
	{
	background:
		url(http://image2.megabox.co.kr/mop/home/movie/ico_wheel_x.gif)
		no-repeat;
	text-indent: -9999px;
	cursor: default !important
}

#select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .line,
	#select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .line
	{
	border: 1px solid #c2c2c2;
	background: #f9f9f9;
	font-weight: 700;
	text-align: center;
	color: #333
}

#select_seat .seat_body .left_wrap .row3 .place .seat_img, #select_pay .seat_body .left_wrap .row3 .place .seat_img
	{
	width: 110px;
	height: 372px;
	float: right;
	margin: 20px 20px 0 0;
	border: 1px solid #ccc;
	padding: 13px 16px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_img p, #select_pay .seat_body .left_wrap .row3 .place .seat_img p
	{
	font-size: 13px;
	font-weight: bold;
	color: #666;
	padding-bottom: 10px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_img ul li,
	#select_pay .seat_body .left_wrap .row3 .place .seat_img ul li {
	position: relative;
	font-size: 11px;
	color: #555;
	font-weight: bold;
	line-height: 14px;
	background: none;
	padding: 0 0 8px 20px
}

#select_seat .seat_body .left_wrap .row3 .place .seat_img ul li span,
	#select_pay .seat_body .left_wrap .row3 .place .seat_img ul li span {
	position: absolute;
	width: 16px;
	height: 16px;
	display: inline-block;
	left: 0;
	top: -1px
}

#select_seat .seat_body .left_wrap .row4, #select_pay .seat_body .left_wrap .row4
	{
	padding: 13px 20px 0 20px;
	border-top: 1px solid #e5e5e5;
	height: 42px;
	position: relative
}

#select_seat .seat_body .left_wrap .row4 h4, #select_pay .seat_body .left_wrap .row4 h4
	{
	float: left;
	font-size: 12px;
	color: #333;
	margin: 3px 10px 0 0;
	padding: 0
}

#select_seat .seat_body .left_wrap .row4 h4 a, #select_pay .seat_body .left_wrap .row4 h4 a
	{
	color: #333;
	text-decoration: underline
}

#select_seat .seat_body .left_wrap .row4 .popover, #select_pay .seat_body .left_wrap .row4 .popover
	{
	top: 47px !important;
	left: 0 !important;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking.png) 0
		-240px no-repeat;
	background:
		url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0
		-27px no-repeat;
	width: 373px;
	max-width: 373px;
	height: 86px;
	overflow: hidden;
	text-indent: -9999px;
	border: none;
	margin-top: 0;
	padding-top: 8px
}

#select_seat .seat_body .left_wrap .row4 .popover.bottom .arrow,
	#select_pay .seat_body .left_wrap .row4 .popover.bottom .arrow {
	display: none
}

#select_seat .seat_body .left_wrap .row4 .popover-content p, #select_pay .seat_body .left_wrap .row4 .popover-content p
	{
	color: #666;
	font-size: 12px
}

#select_seat .seat_body .left_wrap .row4 #seat_text_content, #select_pay .seat_body .left_wrap .row4 #seat_text_content
	{
	display: none
}

#select_seat .seat_body .left_wrap .row4 #seat_text_content.pop_pasteCH,
	#select_pay .seat_body .left_wrap .row4 #seat_text_content.pop_pasteCH
	{
	background: url(http://image2.megabox.co.kr/mop/home/i_select_seat.png)
		left bottom no-repeat;
	position: absolute;
	top: 38px;
	font-size: 0;
	width: 380px;
	height: 90px;
	left: 0;
	color: transparent;
	letter-spacing: -999px
}

#select_seat .seat_body .left_wrap .row4 #seat_text_content .accessi,
	#select_pay .seat_body .left_wrap .row4 #seat_text_content .accessi {
	width: 100%;
	position: absolute;
	bottom: 2px
}

#select_seat .seat_body .left_wrap .row4 .reset, #select_pay .seat_body .left_wrap .row4 .reset
	{
	float: right;
	height: 22px;
	margin-top: -3px
}

#select_seat .seat_body .left_wrap .row4 .reset span, #select_pay .seat_body .left_wrap .row4 .reset span,
	#select_seat .seat_body .left_wrap .row4 .reset button, #select_pay .seat_body .left_wrap .row4 .reset button
	{
	display: inline-block;
	height: 100%;
	line-height: 22px
}

#select_seat .seat_body .left_wrap .row4 .reset .btn_reset, #select_pay .seat_body .left_wrap .row4 .reset .btn_reset
	{
	width: 63px;
	height: 22px;
	background-position: -280px -75px
}

#select_seat .seat_body .left_wrap .row4 .reset .selected_man,
	#select_pay .seat_body .left_wrap .row4 .reset .selected_man {
	border-left: 1px solid #e5e5e5;
	padding-left: 20px;
	margin-left: 20px;
	font-size: 12px;
	color: #333;
	display: inline-block
}

#select_seat .seat_body .left_wrap .row4 ul.seat_info, #select_pay .seat_body .left_wrap .row4 ul.seat_info
	{
	float: left;
	overflow: hidden;
	width: 540px;
	height: 15px;
	list-style: none
}

#select_seat .seat_body .left_wrap .row4 ul.seat_info li, #select_pay .seat_body .left_wrap .row4 ul.seat_info li
	{
	height: 15px;
	width: 540px;
	font-size: 12px;
	font-weight: bold;
	color: #503396
}

#select_seat .seat_body .right_wrap, #select_pay .seat_body .right_wrap
	{
	position: relative;
	width: 170px;
	background: #404040
}

#select_seat .seat_body .right_wrap .row1, #select_pay .seat_body .right_wrap .row1
	{
	position: relative
}

#select_seat .seat_body .right_wrap .row1 img, #select_pay .seat_body .right_wrap .row1 img
	{
	display: block;
	width: 100%;
	height: 242px
}

#select_seat .seat_body .right_wrap .row2, #select_pay .seat_body .right_wrap .row2
	{
	padding: 10px 15px 0 15px;
	background-color: #404040
}

#select_seat .seat_body .right_wrap .row2 .title, #select_pay .seat_body .right_wrap .row2 .title
	{
	margin: 0 0 5px 30px;
	font-size: 12px;
	line-height: 16px;
	color: #fff
}

#select_seat .seat_body .right_wrap .row2 .title i, #select_pay .seat_body .right_wrap .row2 .title i
	{
	float: left;
	margin-left: -30px
}

#select_seat .seat_body .right_wrap .row2 .title h4, #select_pay .seat_body .right_wrap .row2 .title h4
	{
	margin: 0;
	font-size: 12px
}

#select_seat .seat_body .right_wrap .row2 ul.info li, #select_pay .seat_body .right_wrap .row2 ul.info li
	{
	padding-left: 8px;
	margin-bottom: 5px;
	font-size: 11px;
	color: #fff;
	background: url(http://image2.megabox.co.kr/mop/home/movie/bg_seat.png)
		-150px 2px no-repeat
}

#select_seat .seat_body .right_wrap .row2 ul.info li span, #select_pay .seat_body .right_wrap .row2 ul.info li span
	{
	display: inline-block
}

#select_seat .seat_body .right_wrap .row2 ul.seat, #select_pay .seat_body .right_wrap .row2 ul.seat
	{
	margin: 8px 0 0 -7px;
	overflow: hidden
}

#select_seat .seat_body .right_wrap .row2 ul.seat li, #select_pay .seat_body .right_wrap .row2 ul.seat li
	{
	margin-left: 7px;
	margin-bottom: 3px;
	float: left;
	font-size: 12px;
	width: 29px;
	height: 16px;
	line-height: 16px;
	text-align: center;
	background-color: #b19bc3;
	color: #000
}

#select_seat .seat_body .right_wrap .row2 p.price, #select_pay .seat_body .right_wrap .row2 p.price
	{
	position: absolute;
	bottom: 47px;
	left: 12px;
	right: 12px;
	padding: 5px 0;
	font-size: 12px;
	text-align: right;
	color: #fff
}

#select_seat .seat_body .right_wrap .row2 p.price strong, #select_pay .seat_body .right_wrap .row2 p.price strong
	{
	font-size: 18px
}

#select_seat .seat_ex, #select_pay .seat_ex {
	float: right;
	padding-top: 4px;
	color: #666;
	font-size: 12px
}

#select_seat .seat_select, #select_pay .seat_select {
	float: left
}

#select_seat .seat_select li, #select_pay .seat_select li {
	float: left;
	position: relative;
	margin-right: 18px;
	font-size: 12px;
	color: #333;
	line-height: 1.2
}

#select_seat .seat_select li span, #select_pay .seat_select li span {
	float: left
}

#select_seat .seat_select li span i, #select_pay .seat_select li span i
	{
	margin-left: 5px
}

#select_seat .seat_select li span i.ico_sofa_4:before, #select_pay .seat_select li span i.ico_sofa_4:before
	{
	background-position: -20px -200px
}

#select_seat .seat_select li span i.ico_sofa_2:before, #select_pay .seat_select li span i.ico_sofa_2:before
	{
	background-position: -40px -200px
}

#select_seat .seat_select li span i.ico_sofa_swt:before, #select_pay .seat_select li span i.ico_sofa_swt:before
	{
	background-position: -60px -200px
}

#select_seat .seat_select li span i.ico_sofa_bcnM:before, #select_pay .seat_select li span i.ico_sofa_bcnM:before
	{
	background-position: -160px -200px
}

#select_seat .seat_select li span i.ico_table:before, #select_pay .seat_select li span i.ico_table:before
	{
	background-position: -120px -200px
}

#select_seat .seat_select li span i.ico_kids:before, #select_pay .seat_select li span i.ico_kids:before
	{
	background-position: -140px -200px
}

#select_seat .seat_select li span i.ico_sofa_bcnDM:before, #select_pay .seat_select li span i.ico_sofa_bcnDM:before
	{
	background-position: -180px -200px
}

#select_seat .seat_select li label, #select_pay .seat_select li label {
	font-weight: 400
}

#select_seat .seat_select li .i_chpop, #select_pay .seat_select li .i_chpop
	{
	display: none;
	position: absolute;
	top: 20px;
	z-index: 11;
	font-size: 0;
	line-height: 0;
	letter-spacing: -999px;
	color: transparent;
	left: 22px
}

#select_seat .seat_continue, #select_pay .seat_continue {
	overflow: hidden;
	float: left
}

#select_seat .seat_continue li, #select_pay .seat_continue li {
	float: left;
	color: #333;
	font-size: 12px;
	margin-right: 10px
}

#select_seat .seat_continue li label, #select_pay .seat_continue li label
	{
	margin: 0;
	padding: 0;
	vertical-align: middle;
	margin-top: -2px
}

#select_seat .seat_continue li.selected .seat_box, #select_pay .seat_continue li.selected .seat_box
	{
	background-color: #59BEC9
}

#select_seat .seat_box, #select_pay .seat_box {
	float: left;
	margin: 0 5px 0 0;
	width: 16px;
	height: 16px;
	background-color: #ccc
}

#select_seat .seat_selected, #select_pay .seat_selected, #select_seat .seat_cant,
	#select_pay .seat_cant, #select_seat .seat_normal, #select_pay .seat_normal,
	#select_seat .seat_table, #select_pay .seat_table, #select_seat .seat_sweet,
	#select_pay .seat_sweet, #select_seat .sofa_4, #select_pay .sofa_4,
	#select_seat .sofa_2, #select_pay .sofa_2, #select_seat .sofa_sweet,
	#select_pay .sofa_sweet, #select_seat .seat_kids, #select_pay .seat_kids,
	#select_seat .seat_sofa_bcnDM, #select_pay .seat_sofa_bcnDM,
	#select_seat .seat_sofa_bcnM, #select_pay .seat_sofa_bcnM, #select_seat .seat_special,
	#select_pay .seat_special, #select_seat .seat_done, #select_pay .seat_done,
	#select_seat .ico_wheel, #select_pay .ico_wheel, #select_seat .seat_couple,
	#select_pay .seat_couple, #select_seat .seat_royal, #select_pay .seat_royal,
	#select_seat .seat_gold, #select_pay .seat_gold, #select_seat .seat_vip,
	#select_pay .seat_vip {
	background:
		url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0
		no-repeat
}

#select_seat .seat_selected, #select_pay .seat_selected {
	background-position: 50% 0;
	background-color: #503396
}

#select_seat .seat_cant, #select_pay .seat_cant {
	background-position: 50% -54px;
	background-color: #ccc
}

#select_seat .seat_normal, #select_pay .seat_normal {
	background-position: 50% -80px
}

#select_seat .seat_disabled, #select_pay .seat_disabled {
	background-color: #abc837
}

#select_seat .seat_royal, #select_pay .seat_royal {
	background-position: 50% -432px
}

#select_seat .seat_couple, #select_pay .seat_couple {
	background-position: 50% -404px
}

#select_seat .seat_gold, #select_pay .seat_gold {
	background-position: 50% -488px;
	background-color: #ffc72a
}

#select_seat .seat_vip, #select_pay .seat_vip {
	background-position: 50% -460px
}

#select_seat .seat_star, #select_pay .seat_star {
	background-color: #f18e1e
}

#select_seat .seat_table, #select_pay .seat_table {
	background-position: 50% -214px
}

#select_seat .seat_family, #select_pay .seat_family {
	background-color: #76236d
}

#select_seat .seat_sweet, #select_pay .seat_sweet {
	background-position: 50% -106px
}

#select_seat .seat_cavana, #select_pay .seat_cavana {
	background-color: #5d8343
}

#select_seat .sofa_4, #select_pay .sofa_4 {
	background-position: 0 -133px
}

#select_seat .sofa_2, #select_pay .sofa_2 {
	background-position: 0 -160px
}

#select_seat .sofa_sweet, #select_pay .sofa_sweet {
	background-position: 0 -106px
}

#select_seat .seat_kids, #select_pay .seat_kids {
	background-position: 0 -241px
}

#select_seat .seat_sofa_bcnM, #select_pay .seat_sofa_bcnM {
	background-position: 0 -268px
}

#select_seat .seat_sofa_bcnDM, #select_pay .seat_sofa_bcnDM {
	background-position: 0 -295px
}

#select_seat .seat_special, #select_pay .seat_special {
	background-position: 50% -322px;
	background-color: #ff3300
}

#select_seat .seat_done, #select_pay .seat_done {
	background-position: 50% -27px;
	background-color: #ccc
}

#select_seat .ico_wheel, #select_pay .ico_wheel {
	background-position: 50% -187px
}

#select_pay {
	z-index: 2000
}

#select_pay .left_wrap {
	position: relative
}

#select_pay .left_wrap .pay_step {
	height: 100%;
	border-left: 1px solid #e1e1e1;
	border-top: 3px solid #c2c2c2;
	width: 200px;
	float: left
}

#select_pay .left_wrap .pay_step dt, #select_pay .left_wrap .pay_step dd
	{
	height: 35px;
	line-height: 35px;
	border-bottom: 1px solid #e1e1e1;
	font-size: 12px
}

#select_pay .left_wrap .pay_step dt {
	font-weight: 700;
	color: #666;
	font-size: 14px;
	text-align: center
}

#select_pay .left_wrap .pay_step dd {
	padding: 0 20px;
	white-space: nowrap
}

#select_pay .left_wrap .pay_step dd a {
	display: block;
	color: #333;
	height: 100%;
	line-height: 35px;
	text-decoration: none;
	cursor: pointer
}

#select_pay .left_wrap .pay_step dd a span {
	font-weight: 700;
	color: #198591
}

#select_pay .left_wrap .pay_step dd.ad_wrap {
	position: relative;
	padding: 0;
	height: 334px;
	border: 0;
	line-height: 100%
}

#select_pay .left_wrap .pay_step dd.ad_wrap button {
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	width: 100%;
	height: 100%;
	margin: 0
}

#select_pay .left_wrap .pay_step dd.point_ok {
	position: relative;
	background-color: #f6f4f9
}

#select_pay .left_wrap .pay_step dd.point_ok a {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/ico_point_ok.png)
		no-repeat 20px center;
	text-indent: 23px
}

#select_pay .left_wrap .pay_step dd.point_ok strong {
	display: none;
	position: absolute;
	left: 10px;
	top: 34px;
	line-height: 30px;
	padding-left: 10px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/bg_point.png)
		left top
}

#select_pay .left_wrap .pay_step dd.point_ok strong i {
	position: absolute;
	left: 10px;
	top: -5px;
	display: block;
	width: 17px;
	height: 8px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/ico_point_ar.png)
}

#select_pay .left_wrap .pay_step dd.point_ok strong span {
	display: block;
	text-indent: 0;
	padding-right: 10px;
	margin-right: -10px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/bg_point.png)
		right top
}

#select_pay .left_wrap .pay_step dd.point_ok button {
	position: absolute;
	right: 10px;
	top: 0;
	width: 20px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/ico_point_x.png) center
		center no-repeat;
	border: 0;
	bottom: 0;
	font-size: 0;
	letter-spacing: -999px;
	height: 100%
}

#select_pay .left_wrap .pay_step dd.point_ok:hover {
	z-index: 9
}

#select_pay .left_wrap .pay_step dd.point_ok:hover strong {
	display: block;
	z-index: 10
}

#select_pay .left_wrap .pay_step.step1 {
	border-left: none
}

#select_pay .left_wrap .pay_step.step1 dd {
	padding: 0
}

#select_pay .left_wrap .pay_step.step1 dd a {
	padding: 0 20px
}

#select_pay .left_wrap .pay_step.step2 dd {
	padding: 0
}

#select_pay .left_wrap .pay_step.step2 dd a {
	padding: 0 20px
}

#select_pay .left_wrap .pay_step.step3 dd {
	padding: 0
}

#select_pay .left_wrap .pay_step.step3 dd a {
	padding: 0 20px
}

#select_pay .left_wrap .pay_step.step3 dd a span {
	margin-left: 5px
}

#select_pay .left_wrap .pay_step.step3 dd a span.ing {
	width: 42px;
	height: 18px;
	display: inline-block;
	vertical-align: middle;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/home_payEventIcon.png)
		no-repeat 0 0
}

#select_pay .left_wrap .pay_step.step3 dd.ad_wrap a {
	padding: 0
}

#select_pay .left_wrap .pay_step.step4 {
	width: 198px
}

#select_pay .left_wrap .pay_step.step4 dd {
	height: auto;
	line-height: normal;
	font-weight: 700
}

#select_pay .left_wrap .pay_step.step4 dd>span {
	font-size: 12px
}

#select_pay .left_wrap .pay_step.step4 dd>p {
	font-size: 18px
}

#select_pay .left_wrap .pay_step.step4 dd>p>span {
	font-size: 14px;
	color: #666
}

#select_pay .left_wrap .pay_step.step4 dd.payment1 {
	height: 70px;
	padding-top: 14px;
	background-color: #f6f4f9
}

#select_pay .left_wrap .pay_step.step4 dd.payment1>span {
	color: #333
}

#select_pay .left_wrap .pay_step.step4 dd.payment1>p {
	margin-top: 9px;
	color: #503396
}

#select_pay .left_wrap .pay_step.step4 dd.payment2 {
	height: 50px;
	padding-top: 7px
}

#select_pay .left_wrap .pay_step.step4 dd.payment2>span {
	color: #666
}

#select_pay .left_wrap .pay_step.step4 dd.payment2>p {
	margin-top: 4px;
	font-size: 14px;
	color: #198591
}

#select_pay .left_wrap .pay_step.step4 dd.payment3 {
	height: 40px;
	padding: 0 20px
}

#select_pay .left_wrap .pay_step.step4 dd.payment3>strong {
	display: block;
	height: 40px;
	line-height: 40px;
	font-size: 12px;
	color: #333
}

#select_pay .left_wrap .pay_step.step4 dd.payment3>strong>span {
	color: #666;
	font-size: 12px;
	font-weight: normal
}

#select_pay .left_wrap .pay_step.step4 dd.payment3>strong.pull-right {
	font-size: 14px
}

#select_pay .left_wrap .pay_step.step4 dd.payment4 {
	height: 60px;
	padding-top: 10px
}

#select_pay .left_wrap .pay_step.step4 dd.phone {
	position: absolute;
	bottom: 0;
	width: 197px;
	border: none;
	padding-left: 10px
}

#select_pay .left_wrap .pay_step.step4 dd.phone>p {
	position: absolute;
	bottom: 58px;
	font-size: 12px;
	color: #333
}

#select_pay .left_wrap .pay_step.step4 dd.phone>p i {
	font-size: 16px;
	vertical-align: middle
}

#select_pay .left_wrap .pay_step.step4 dd.phone>div {
	position: absolute;
	bottom: 20px;
	overflow: hidden
}

#select_pay .left_wrap .pay_step.step4 dd.phone>div span, #select_pay .left_wrap .pay_step.step4 dd.phone>div input
	{
	display: block;
	float: left;
	height: 26px;
	line-height: 26px
}

#select_pay .left_wrap .pay_step.step4 dd.phone>div span {
	color: #c2c2c2
}

#select_pay .left_wrap .pay_step.step4 dd.phone>div input {
	width: 52px;
	background-color: #fff
}

#select_pay .left_wrap .pay_step.active {
	border-top-color: #503396
}

#select_pay .left_wrap .pay_step.active dt {
	color: #503396
}

#select_pay .lp_box {
	width: 600px;
	height: 497px;
	display: none;
	top: 0;
	position: absolute;
	background-color: #fff;
	-webkit-box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.5)
}

#select_pay .lp_box button.img_btn {
	float: none !important;
	position: absolute;
	top: 20px;
	right: 0;
	margin: 0
}

#select_pay .lp_box button.img_btn.skt_member_ship_info {
	width: 143px;
	height: 22px;
	background-position: -360px -430px
}

#select_pay .lp_box button.img_btn.hana_sk_touch1_vip_info {
	width: 196px;
	height: 22px;
	background-position: -510px -400px
}

#select_pay .lp_box button.img_btn.hana_sk_touch1_vip_discount {
	width: 184px;
	height: 22px;
	background-position: -800px -400px
}

#select_pay .lp_box button.img_btn.ok_cashbag_btn {
	top: 0;
	width: 127px;
	height: 22px;
	background-position: -360px -400px
}

#select_pay .lp_box button.img_btn.asiana_point_card_info {
	width: 119px;
	height: 22px;
	background-position: -200px -400px
}

#select_pay .lp_box button.img_btn.gs_point_info {
	width: 131px;
	height: 22px;
	background-position: -200px -430px
}

#select_pay .lp_box button.img_btn.hyundai_oilbank_info {
	width: 144px;
	height: 22px;
	background-position: -360px -460px
}

#select_pay .lp_box button.img_btn.ok_cashbag_info {
	width: 123px;
	height: 22px;
	background-position: -200px -460px
}

#select_pay .lp_box button.img_btn.vip_coupon_info {
	width: 84px;
	height: 22px;
	background-position: 0 -430px
}

#select_pay .lp_box button.img_btn.mega_point_info {
	width: 83px;
	height: 22px;
	background-position: -400px -40px
}

#select_pay .lp_box button.img_btn.lp_change_pw {
	position: static;
	width: 81px;
	height: 20px;
	margin-top: 5px;
	background-position: -640px 0
}

#select_pay .lp_box button.img_btn.lp_point_search {
	right: 0;
	top: 6px;
	width: 81px;
	height: 26px;
	background-position: -100px -460px
}

#select_pay .lp_box button.img_btn.lp_search {
	top: 7px;
	width: 48px;
	height: 26px;
	background-position: 0 -460px
}

#select_pay .lp_box button.img_btn.lp_cancel {
	position: static;
	display: inline-block;
	background-position: -560px -40px
}

#select_pay .lp_box button.img_btn.lp_pay {
	position: static;
	display: inline-block;
	background-position: -160px 0
}

#select_pay .lp_box button.img_btn.lp_apply {
	position: static;
	display: inline-block;
	background-position: -480px 0
}

#select_pay .lp_box button.img_btn.lp_add {
	position: static;
	display: inline-block;
	background-position: -560px 0
}

#select_pay .lp_box button.img_btn.lp_resend {
	position: static;
	display: inline-block;
	width: 109px;
	height: 26px;
	background-position: -150px -550px
}

#select_pay .lp_box button.img_btn.lp_re {
	position: static;
	display: inline-block;
	width: 83px;
	background-position: -320px -550px
}

#select_pay .lp_box button.img_btn.lp_terms {
	top: 5px;
	width: 55px;
	height: 20px;
	background-position: -100px -430px
}

#select_pay .lp_box button.img_btn.lp_cancel_discount {
	position: static;
	display: inline-block;
	background-position: -640px -40px;
	width: 93px
}

#select_pay .lp_box .lp_header {
	position: relative;
	height: 44px;
	width: 100%;
	border-bottom: 1px solid #e1e1e1
}

#select_pay .lp_box .lp_header h5 {
	margin: 0;
	padding: 16px 0 0 20px;
	font-size: 15px;
	color: #333;
	font-weight: 700
}

#select_pay .lp_box .lp_header span {
	display: inline-block;
	margin: -2.3rem 5rem 0 0
}

#select_pay .lp_box .lp_header span.reset_number {
	float: right
}

#select_pay .lp_box .lp_header span.reset_number a {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png)
		-560px -430px no-repeat;
	font-size: 0;
	letter-spacing: -999px;
	width: 65px;
	display: block;
	height: 22px;
	color: transparent
}

#select_pay .lp_box .lp_header .nav-tabs {
	height: 44px
}

#select_pay .lp_box .lp_header .nav-tabs a {
	height: 45px;
	border-top: 0 !important;
	line-height: 44px
}

#select_pay .lp_box .lp_body {
	position: relative;
	height: 403px;
	padding: 0 20px
}

#select_pay .lp_box .lp_body .top {
	position: relative;
	height: 57px;
	padding-top: 25px;
	font-size: 12px;
	color: #666
}

#select_pay .lp_box .lp_body .top.top2 {
	padding-top: 20px
}

#select_pay .lp_box .lp_body .top.top2 input {
	background-color: #fff;
	width: 156px;
	margin-left: 11px
}

#select_pay .lp_box .lp_body .top.top2 .lp_search {
	position: static;
	display: inline-block;
	margin-left: 11px
}

#select_pay .lp_box .lp_body .lp_contents .lp_scroll {
	position: relative;
	overflow: auto
}

#select_pay .lp_box .lp_body .lp_contents .lp_scroll table {
	margin-bottom: 0
}

#select_pay .lp_box .lp_body .lp_contents .lp_scroll table .bdn>td {
	border: none
}

#select_pay .lp_box .lp_body .lp_contents .lp_scroll.bdr {
	border: 1px solid #e1e1e1;
	border-top: none;
	border-bottom-width: 2px
}

#select_pay .lp_box .lp_body .lp_contents .lp_scroll .ps-scrollbar-x-rail
	{
	display: none !important
}

#select_pay .lp_box .lp_body .lp_contents input[type=text], #select_pay .lp_box .lp_body .lp_contents input[type=password]
	{
	width: 70px;
	height: 26px;
	line-height: 26px;
	background-color: #fff
}

#select_pay .lp_box .lp_body .lp_contents .lp_table {
	width: 100%;
	margin-bottom: 20px;
	border-top: 2px solid #8470b5;
	border-bottom: 2px solid #e1e1e1
}

#select_pay .lp_box .lp_body .lp_contents .lp_table caption {
	overflow: hidden;
	visibility: hidden;
	width: 0;
	height: 0;
	line-height: 0;
	font-size: 0
}

#select_pay .lp_box .lp_body .lp_contents .lp_table th, #select_pay .lp_box .lp_body .lp_contents .lp_table td
	{
	height: 40px;
	text-align: center;
	font-size: 12px;
	position: relative
}

#select_pay .lp_box .lp_body .lp_contents .lp_table th.con6, #select_pay .lp_box .lp_body .lp_contents .lp_table td.con6
	{
	height: 40px;
	text-align: left;
	padding-left: 15px;
	font-size: 12px;
	position: relative
}

#select_pay .lp_box .lp_body .lp_contents .lp_table th {
	font-weight: 700;
	background-color: #f8f8f8;
	color: #333
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td {
	color: #666
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td.lp_money {
	color: #503396
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td.lp_money>strong {
	font-size: 14px
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td label {
	margin-bottom: 0;
	font-weight: normal
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td label.style_input
	{
	display: inline-block
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td ul.lp_radio_wrap
	{
	padding: 15px 0
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td ul.lp_radio_wrap li
	{
	display: inline-block;
	height: 28px;
	padding-top: 5px;
	width: 200px;
	position: relative
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td dl {
	display: inline-block;
	text-align: center
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td dl .smbtn {
	color: #198591;
	border: 1px solid #198591;
	background: #fff;
	height: 20px;
	width: 68px;
	float: none;
	margin: 0
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td div.caln {
	display: inline-block;
	text-align: center;
	width: 20px;
	border-radius: 50%;
	background: #adaeb0;
	color: #fff;
	font-weight: 700;
	font-size: 16px;
	margin: 0 15px;
	line-height: 19px
}

#select_pay .lp_box .lp_body .lp_contents .lp_table td div.mgntb {
	margin: 5px 0
}

#select_pay .lp_box .lp_body .lp_contents .lp_table.vertical th,
	#select_pay .lp_box .lp_body .lp_contents .lp_table.vertical td {
	padding-left: 15px;
	text-align: left
}

#select_pay .lp_box .lp_body .lp_contents .lp_table.vertical th {
	width: 130px
}

#select_pay .lp_box .lp_body .lp_contents .lp_table.bdb th, #select_pay .lp_box .lp_body .lp_contents .lp_table.bdb td
	{
	border-bottom: 1px solid #e1e1e1;
	line-height: 24px
}

#select_pay .lp_box .lp_body .lp_contents .lp_table tfoot {
	border-top: 1px solid #e1e1e1
}

#select_pay .lp_box .lp_body .lp_contents .lp_table .point_td>* {
	float: left;
	display: inline-block;
	*display: inline;
	zoom: 1
}

#select_pay .lp_box .lp_body .lp_contents .lp_notice {
	position: relative;
	font-size: 12px;
	line-height: 18px;
	color: #666
}

#select_pay .lp_box .lp_body .lp_contents .lp_notice.lp_notice_box {
	padding: 15px;
	border: 1px solid #e1e1e1;
	overflow: auto;
	max-height: 160px;
	text-align: left;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
	border-radius: 3px
}

#select_pay .lp_box .lp_body .lp_contents .lp_notice.lp_notice_box span
	{
	display: block
}

#select_pay .lp_box .lp_body .lp_contents .a18 {
	height: 57px;
	margin-top: 20px;
	padding: 13px 0 0 15px;
	border: 1px solid #e1e1e1;
	font-size: 12px;
	color: #767676;
	line-height: 18px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
	border-radius: 3px
}

#select_pay .lp_box .lp_body .lp_contents table.lp_coupon_list_header {
	border-bottom: none;
	margin-bottom: 0;
	border-left: 1px solid #e1e1e1;
	border-right: 1px solid #e1e1e1
}

#select_pay .lp_box .lp_body .lp_contents .lp_coupon_list_body {
	padding: 0 15px
}

#select_pay .lp_box .lp_body .lp_contents .lp_coupon_list_body table {
	border: none
}

#select_pay .lp_box .lp_body .lp_contents .lp_coupon_list_body table td
	{
	border-bottom: 1px solid #e1e1e1
}

#select_pay .lp_box .lp_body .lp_contents .lp_coupon_list_body table td .icheckbox_minimal
	{
	display: block
}

#select_pay .lp_box .lp_body .lp_contents .sk_pop_th thead th p {
	position: relative;
	display: inline-block;
	*display: inline;
	zoom: 1;
	padding: 10px 0 10px 25px;
	text-align: left;
	margin: 0
}

#select_pay .lp_box .lp_body .lp_contents .sk_pop_th thead th p i {
	position: absolute;
	left: 0;
	top: 50%;
	margin-top: -7px;
	cursor: pointer
}

#select_pay .lp_box .lp_body .ok_cashbag_wrap {
	position: relative;
	margin-bottom: 20px
}

#select_pay .lp_box .lp_body .ok_cashbag_wrap p {
	line-height: 22px;
	font-size: 12px;
	color: #666
}

#select_pay .lp_box .lp_footer {
	text-align: center
}

#select_pay .lp_box button.lp_close {
	position: absolute;
	width: 17px;
	height: 17px;
	padding: 0;
	right: 13px;
	top: 13px;
	background-position: -510px -460px
}

#select_pay .lp_box button.lp_close.paradiso_close {
	width: 14px;
	height: 14px;
	right: 20px;
	top: 20px;
	background-position: -510px -430px
}

#select_pay .lp_box.paradiso {
	width: 799px;
	background:
		url(http://image2.megabox.co.kr/mop/home/movie/bg_paradiso.jpg) 0 0
		no-repeat
}

#select_pay .lp_box.paradiso p, #select_pay .lp_box.paradiso ul {
	display: none
}

#select_pay .lp_box.paradiso a, #select_pay .lp_box.paradiso button {
	position: absolute
}

#select_pay .lp_box.paradiso .paradiso_detail {
	width: 79px;
	height: 22px;
	left: 46px;
	top: 178px;
	background-position: -100px -400px
}

#select_pay .lp_box.paradiso .paradiso_cancel {
	position: absolute !important;
	top: 447px;
	left: 562px;
	background-position: 0 0
}

#select_pay .lp_box.paradiso .paradiso_apply {
	top: 447px;
	left: 642px;
	background-position: -480px 0
}

#select_pay button.btn_card_close {
	position: absolute;
	width: 17px;
	height: 17px;
	padding: 0;
	right: 13px !important;
	top: 13px !important;
	background-position: -510px -460px
}

#select_pay #payment_card .tab-content .nav2 {
	overflow: hidden;
	padding-bottom: 10px
}

#select_pay #payment_card .tab-content .nav2>li {
	margin-right: 5px;
	vertical-align: top;
	float: left
}

#select_pay #payment_card .tab-content .nav2>li.reset_number {
	float: right
}

#select_pay #payment_card .tab-content .nav2>li.reset_number a {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png)
		-560px -430px no-repeat;
	font-size: 0;
	letter-spacing: -999px;
	width: 65px;
	display: block;
	height: 22px;
	color: transparent
}

#select_pay #hana_sk_touch1_vip .lp_search {
	position: static;
	margin: 0 auto
}

#select_pay #vip_coupon_add {
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none
}

#payment {
	z-index: 1100
}

#payment .payment_cancel {
	width: 17px;
	height: 17px;
	padding: 0;
	margin-top: 8px;
	float: right;
	background-position: -510px -460px
}

#payment .payment_body {
	height: 496px
}

#payment .payment_body .row1 {
	height: 305px;
	padding-top: 31px;
	border-bottom: 1px solid #e1e1e1
}

#payment .payment_body .row1 .booking_info {
	overflow: hidden;
	width: 650px;
	height: 242px;
	margin: 0 auto;
	background-color: #f2f2f2
}

#payment .payment_body .row1 .booking_info img {
	display: block;
	float: left
}

#payment .payment_body .row1 .booking_info ul {
	float: left;
	margin: 35px 0 0 40px
}

#payment .payment_body .row1 .booking_info ul li {
	overflow: hidden;
	height: 40px
}

#payment .payment_body .row1 .booking_info ul li>span, #payment .payment_body .row1 .booking_info ul li>strong
	{
	display: block;
	float: left;
	font-size: 12px;
	color: #333;
	vertical-align: top
}

#payment .payment_body .row1 .booking_info ul li>span {
	width: 120px;
	height: 40px
}

#payment .payment_body .row1 .booking_info ul li>strong {
	width: 300px
}

#payment .payment_body .row2 {
	position: relative;
	height: 191px;
	padding-top: 34px
}

#payment .payment_body .row2 p {
	font-size: 12px;
	color: #333;
	text-align: center;
	line-height: 20px
}

#payment .payment_body .row2 p strong {
	display: inline-block;
	height: 42px;
	font-size: 18px;
	color: #503396
}

#payment .payment_body .row2 p i {
	color: #198591
}

#payment .payment_body .row2>div {
	margin-top: 25px;
	text-align: center
}

#payment .payment_body .row2>div button {
	float: none;
	display: inline-block;
	margin: 0
}

.booking_done {
	z-index: 1110
}

.booking_done .contents {
	height: 619px !important
}

.booking_done .booking_done_body .row1 {
	height: 348px;
	padding-left: 30px;
	border-bottom: 1px solid #e1e1e1
}

.booking_done .booking_done_body .row1>p {
	text-align: center;
	padding-top: 35px;
	height: 92px;
	font-size: 18px
}

.booking_done .booking_done_body .row1>div {
	overflow: hidden
}

.booking_done .booking_done_body .row1>div .poster_booking_done {
	float: left;
	width: 150px;
	height: 215px;
	margin-right: 35px
}

.booking_done .booking_done_body .row1>div .info_booking_done {
	width: 453px;
	float: left
}

.booking_done .booking_done_body .row1>div .info_booking_done li {
	overflow: hidden;
	min-height: 29px;
	font-size: 12px;
	clear: both
}

.booking_done .booking_done_body .row1>div .info_booking_done li span,
	.booking_done .booking_done_body .row1>div .info_booking_done li strong
	{
	display: block;
	width: 300px;
	float: left
}

.booking_done .booking_done_body .row1>div .info_booking_done li span {
	width: 150px
}

.booking_done .booking_done_body .row1>div .ad_booking_done {
	width: 272px;
	height: 195px;
	float: left;
	border: 1px solid #bbbec3
}

.booking_done .booking_done_body .row1>div img {
	display: block
}

.booking_done .booking_done_body .row2 {
	height: 215px;
	padding-top: 33px;
	padding-left: 100px
}

.booking_done .booking_done_body .row2 p {
	font-size: 12px;
	line-height: 20px;
	color: #666;
	letter-spacing: -0.3px
}

.booking_done .booking_done_body .row2 p i {
	color: #198591
}

.booking_done .booking_done_body .row2>div {
	margin-top: 24px;
	margin-left: -120px;
	text-align: center
}

.booking_done .booking_done_body .row2>div button {
	float: none;
	display: inline-block;
	margin: 0
}

.booking_done .contents {
	position: relative
}

.booking_done .custom_close {
	float: none;
	width: 38px;
	height: 38px
}

#online_ticket {
	z-index: 1110
}

#online_ticket .contents {
	height: auto
}

#online_ticket .btn_online_ticket {
	position: absolute;
	top: 10px;
	right: 20px;
	width: 68px;
	height: 30px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_online_ticket.png)
}

#online_ticket .btn_close {
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_member.png) -150px
		-350px;
	width: 70px;
	height: 30px;
	position: absolute;
	top: 10px;
	right: 92px
}

#online_ticket .online_ticket_body {
	font-size: 12px
}

#online_ticket .online_ticket_body .row1 {
	padding: 5px 20px;
	border-bottom: 1px solid #e0e0e0
}

#online_ticket .online_ticket_body .row1 h4 {
	margin: 0;
	font-size: 14px;
	line-height: 34px
}

#online_ticket .online_ticket_body .row2, #online_ticket .online_ticket_body .row4
	{
	padding: 10px 20px
}

#online_ticket .online_ticket_body .row2 p, #online_ticket .online_ticket_body .row4 p
	{
	line-height: 20px;
	color: #666
}

#online_ticket .online_ticket_body .row2 p i, #online_ticket .online_ticket_body .row4 p i
	{
	color: #198591
}

#online_ticket .online_ticket_body .row3 {
	padding: 0 20px
}

#online_ticket .online_ticket_body .row3 .pull-left {
	width: 590px
}

#online_ticket .online_ticket_body .row3 td, #online_ticket .online_ticket_body .row3 th
	{
	padding: 11px 20px;
	border-top: 0 !important
}

#online_ticket .contents {
	position: relative
}

#online_ticket .custom_close {
	float: none;
	width: 38px;
	height: 38px
}

.slidebar {
	position: relative;
	height: 25px;
	background-color: #fff;
	border: 1px solid #e0e0e0;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px
}

.slidebar .slidebar_control {
	position: absolute;
	width: 100%
}

.slidebar .slidebar_control li {
	width: 25px;
	height: 25px;
	float: right;
	border-left: 1px solid #e0e0e0;
	text-align: center;
	line-height: 25px;
	cursor: pointer
}

.slidebar .slidebar_control li:first-child {
	border-left: none;
	border-right: 1px solid #e0e0e0;
	float: left
}

.slidebar .slidebar_control li i {
	display: block;
	line-height: 22px
}

.slidebar .slidebar_item {
	position: relative;
	width: 340px;
	overflow: hidden;
	margin-left: 25px;
	height: 100%
}

.slidebar .slidebar_item ol {
	width: auto;
	white-space: nowrap;
	overflow: hidden;
	left: 0;
	position: absolute
}

.slidebar .slidebar_item ol li {
	float: left;
	width: 68px;
	height: 23px
}

.slidebar .slidebar_item ol li a {
	display: block;
	height: 100%;
	color: #333;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	line-height: 23px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
	text-decoration: none
}

.slidebar .slidebar_item ol li a.active {
	background-color: #198591;
	color: #fff
}

.slidebar .slidebar_item ol li a.no_click {
	color: #7e7e7e;
	cursor: default
}

#sel_time .slidebar_item {
	height: 29px
}

#sel_time .slidebar_item ol li {
	height: 29px
}

#sel_time .slidebar_item ol li a {
	height: 23px
}

#sel_time span.arrow {
	display: block;
	height: 6px;
	width: 10px;
	position: absolute;
	bottom: 0;
	left: 18px;
	background: url(http://image2.megabox.co.kr/mop/home/btns/btn_close.png)
		50% bottom no-repeat
}

.modal.en {
	font-family: Tahoma, '나눔고딕', 'NanumGothic', "맑은 고딕", "Malgun Gothic",
		"Apple SD Gothic Neo", sans-serif
}

.modal.en.booking_lp h2, .modal.en.booking_lp h3, .modal.en#reservation .wrapper .contents .left_wrap>.movie .select_all .btn_wrap button,
	.modal.en#select_seat .seat_body .left_wrap .row4 .reset .btn_reset,
	.modal.en#select_pay .seat_body .left_wrap .row4 .reset .btn_reset {
	width: auto;
	background: none;
	font-weight: 500;
	font-family: Tahoma, sans-serif;
	-webkit-text-stroke: .3px;
	text-indent: 0
}

.modal.en.booking_lp h2 span, .modal.en.booking_lp h3 span {
	font-size: 12px;
	color: #666;
	-webkit-text-stroke: 0
}

.modal.en .en.booking_lp h2, .modal.en .en.booking_lp h3 {
	text-shadow: 0 0 1px #503396;
	behavior: url(/js/css3pie/pie.htc);
	position: relative
}

.modal.en#reservation .wrapper .contents .left_wrap>.movie .select_all .btn_wrap button
	{
	height: auto;
	font-size: 16px;
	color: #198591
}

.modal.en#select_seat .seat_body .left_wrap .row4 .reset .btn_reset,
	.modal.en#select_pay .seat_body .left_wrap .row4 .reset .btn_reset {
	-webkit-text-stroke: 0
}

.modal.en .wrapper .contents button.cancel, .modal.en .wrapper .contents button.booking_done_done,
	.modal.en#select_pay .lp_box button.img_btn.lp_cancel {
	border: 1px solid #d7d7d7;
	background: #f2f2f2;
	font-weight: 700;
	font-size: 14px;
	font-family: '나눔고딕', 'NanumGothic', '맑은 고딕', 'Malgun Gothic', '돋움',
		dotum, 'Apple SD Gothic Neo', sans-serif;
	color: #666;
	text-indent: 0;
	-webkit-text-stroke: .2px
}

.modal.en .wrapper .contents button.cancel.hover, .modal.en .wrapper .contents button.booking_done_done.hover,
	.modal.en#select_pay .lp_box button.img_btn.lp_cancel.hover {
	background: #e1e1e1
}

.modal.en .wrapper .contents button.ok, .modal.en .wrapper .contents button.next,
	.modal.en .wrapper .contents button.pay, .modal.en .wrapper .contents button.booking_done_print,
	.modal.en .wrapper .contents button.booking_done_sms, .modal.en .wrapper .contents button.booking_done_cancel,
	.modal.en#select_pay .lp_box button.img_btn.lp_apply, .modal.en#select_pay .lp_box button.img_btn.lp_search,
	.modal.en#select_pay .lp_box button.img_btn.lp_point_search, .modal.en#online_ticket .btn_online_ticket
	{
	border: 1px solid #d7d7d7;
	background: #8357a7;
	font-weight: 700;
	font-size: 14px;
	font-family: '나눔고딕', 'NanumGothic', '맑은 고딕', 'Malgun Gothic', '돋움',
		dotum, 'Apple SD Gothic Neo', sans-serif;
	color: #FFF;
	text-indent: 0;
	-webkit-text-stroke: .2px
}

.modal.en .wrapper .contents button.ok.hover, .modal.en .wrapper .contents button.next.hover,
	.modal.en .wrapper .contents button.pay.hover, .modal.en .wrapper .contents button.booking_done_print.hover,
	.modal.en .wrapper .contents button.booking_done_sms.hover, .modal.en .wrapper .contents button.booking_done_cancel.hover,
	.modal.en#select_pay .lp_box button.img_btn.lp_apply.hover, .modal.en#select_pay .lp_box button.img_btn.lp_search.hover,
	.modal.en#select_pay .lp_box button.img_btn.lp_point_search.hover,
	.modal.en#online_ticket .btn_online_ticket.hover {
	background: #503396
}

.modal.en .wrapper .contents button.next {
	width: 132px
}

.modal.en .wrapper .contents button.pay {
	width: 72px
}

.modal.en .wrapper .contents button.booking_done_cancel {
	width: 180px
}

.modal.en#select_pay .lp_box button.img_btn.lp_search, .modal.en#select_pay .lp_box button.img_btn.lp_point_search
	{
	width: 52px
}

.modal.en#select_seat .seat_body .left_wrap .row4 .popover, .modal.en#select_pay .seat_body .left_wrap .row4 .popover
	{
	width: auto;
	max-width: none;
	text-indent: 0
}

.modal.en#select_seat .seat_body .left_wrap .row4 .popover .popover-content,
	.modal.en#select_pay .seat_body .left_wrap .row4 .popover .popover-content
	{
	background: #FFF
}

.modal.en#select_pay .left_wrap .pay_step.step4 dd>p>span {
	font-size: 12px
}

.modal.en#booking_done .contents {
	height: auto
}

.modal.en#booking_done .booking_done_body .row2 {
	height: auto;
	padding-bottom: 20px;
	padding-left: 70px
}

.modal.en#booking_done .booking_done_body .row2 p {
	width: auto
}

.en .btn_alert_login {
	border: 1px solid #d7d7d7;
	background: #8357a7;
	font-weight: 700;
	font-size: 12px;
	font-family: '나눔고딕', 'NanumGothic', '맑은 고딕', 'Malgun Gothic', '돋움',
		dotum, 'Apple SD Gothic Neo', sans-serif;
	color: #FFF;
	text-indent: 0;
	-webkit-text-stroke: .2px
}

.en .btn_alert_login.hover {
	background: #503396
}

#messageBox_IDregisterPopup .ca_new_password {
	background-color: #fafafa
}

#messageBox_IDregisterPopup .ca_new_password .first {
	border-bottom: 1px solid #ccc;
	padding-bottom: 10px;
	margin-bottom: 10px
}

#messageBox_IDregisterPopup .ca_new_password .first input[type="text"] {
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 140px
}

#messageBox_IDregisterPopup .ca_new_password .first button {
	display: inline-block;
	*display: inline;
	zoom: 1;
	background-position: -300px -200px;
	width: 94px;
	height: 26px
}

#messageBox_IDregisterPopup .ca_footer button.oks {
	background-position: -480px 0
}

#skt_member_ship .event_img, #hana_sk_touch1_vip .event_img {
	display: block;
	margin: 0 -20px -5px
}

#skt_member_ship .event_ex_pop, #hana_sk_touch1_vip .event_ex_pop {
	position: relative
}

#skt_member_ship .event_ex_pop p, #hana_sk_touch1_vip .event_ex_pop p {
	position: absolute;
	top: 11px;
	right: 0;
	padding: 12px 14px;
	border: 1px solid #e30946;
	background-color: #fff
}

#skt_member_ship .event_ex_pop p i, #hana_sk_touch1_vip .event_ex_pop p i
	{
	position: absolute;
	right: 40px;
	top: -9px;
	width: 19px;
	height: 9px;
	background:
		url(https://image2.megabox.co.kr/mop/home/ico_event_arTop.png)
		no-repeat
}

#skt_member_ship .event_ex_pop span, #hana_sk_touch1_vip .event_ex_pop span
	{
	color: #e30946;
	font-size: 13px;
	line-height: 15px;
	white-space: nowrap
}

#skt_member_ship .event_ex_pop .btn_x, #hana_sk_touch1_vip .event_ex_pop .btn_x
	{
	display: block;
	position: absolute;
	top: 0;
	right: -16px;
	width: 13px;
	height: 13px;
	background: url(https://image2.megabox.co.kr/mop/home/btn_event_x.gif)
		no-repeat;
	letter-spacing: -999px;
	text-indent: -9999px;
	color: transparent
}

#payment_card .tab-content .nav3 {
	overflow: hidden;
	width: 560px;
	padding: 10px 0 10px 146px
}

#payment_card .tab-content .nav3>dl dt a {
	background: #fff;
	border: 1px solid #ccc;
	font-size: 14px;
	width: 150px;
	height: 35px;
	display: block;
	color: #53565a;
	display: inline-block;
	float: left;
	padding: 3px;
	margin: 5px 0;
	line-height: 2em
}

#payment_card .tab-content .nav3>dl a.active {
	background: #503396;
	text-decoration: none;
	color: #fff;
	border: 0
}

.event_container .sub_navi li {
	margin-right: 40px
}

.event_container .sub_navi a {
	width: 27px;
	background: url(http://image2.megabox.co.kr/mop/home/event/sub_navi.png)
		0 50% no-repeat
}

.event_container .sub_navi a.i2 {
	width: 97px;
	background-position: -77px 50%
}

.event_container .sub_navi a.i3 {
	width: 70px;
	background-position: -224px 50%
}

.event_container .sub_navi a.i4 {
	width: 71px;
	background-position: -343px 50%
}

.event_container .sub_navi a.i5 {
	width: 84px;
	background-position: -464px 50%
}

.event_container .sub_navi a.i6 {
	width: 69px;
	background-position: 100% 50%
}

.event_container .sub_navi a:hover, .event_container .sub_navi a:focus,
	.event_container .sub_navi a.active {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/event/sub_navi_on.png)
}

#event_wrapper {
	display: block;
	overflow: hidden;
	margin: -7px auto;
	white-space: nowrap;
	word-wrap: break-word;
	width: 984px
}

#event_wrapper>li {
	position: relative;
	display: block;
	width: 232px;
	height: 448px;
	border: 1px solid #d9d9d9;
	margin: 7px;
	float: left
}

#event_wrapper>li>a {
	display: block;
	height: 100%;
	text-decoration: none;
	color: #666;
	font-size: 14px
}

#event_wrapper>li img, #event_wrapper>li span {
	display: block;
	width: 100%;
	-ms-word-break: break-all;
	word-break: break-all;
	white-space: normal
}

#event_wrapper>li img {
	height: 335px;
	border-bottom: 1px solid #9d9d9 d9
}

#event_wrapper>li span {
	padding: 0 12px
}

#event_wrapper>li span.title {
	height: 56px;
	overflow: hidden;
	margin: 17px 0 6px;
	font-size: 20px;
	color: #333;
	font-weight: 700
}

#event_wrapper>li .end_event {
	display: block;
	position: absolute;
	bottom: 111px;
	left: 0;
	width: 230px;
	height: 60px;
	background: url(http://image2.megabox.co.kr/mop/home/event/bg_end.png) 0
		-120px no-repeat
}

#event_wrapper>li .end_event span {
	display: none
}

#event_wrapper>li .end_event.winner {
	background-position: 0 -25px;
	padding: 0
}

#event_wrapper>li .end_event.winner>button {
	display: block;
	border: none;
	padding: 0;
	margin: 0;
	height: 100%;
	width: 100%;
	text-indent: -9999px;
	background: none
}

#event_wrapper .no_search_result {
	float: none;
	width: auto;
	padding: 200px 0;
	border: 0;
	text-align: center;
	font-size: 30px;
	color: #999
}

.event_modal .wrapper {
	width: 970px;
	margin: 0 auto;
	padding: 49px 0 55px 0
}

.event_modal .wrapper .contents {
	padding: 66px 40px 72px 40px;
	width: 100%;
	background-color: #fff;
	position: relative
}

.event_modal .wrapper .contents .title_wrap {
	padding-bottom: 13px;
	margin-bottom: 12px;
	border-bottom: 1px solid #e5e5e5
}

.event_modal .wrapper .contents .title_wrap h3 {
	font-size: 30px;
	color: #333;
	margin: 0 0 7px 0
}

.event_modal .wrapper .contents .title_wrap>div {
	overflow: hidden
}

.event_modal .wrapper .contents .title_wrap>div p {
	color: #666;
	float: right
}

.event_modal .wrapper .contents .title_wrap>div p:first-child {
	float: left
}

.event_modal .wrapper .contents .event {
	padding-bottom: 12px;
	margin-bottom: 60px;
	border-bottom: 1px solid #e5e5e5;
	text-align: center
}

.event_modal .wrapper .contents .event img {
	display: block;
	margin: 0 auto
}

.event_modal .wrapper .contents .evBtn_wrap {
	text-align: center;
	margin-top: -50px
}

.event_modal .wrapper .contents .evBtn_wrap button.able {
	background-color: #503396;
	color: #fff;
	font-size: 1.4rem;
	padding: 1rem 3rem;
	height: 3.8rem;
	display: inline-black;
	font-weight: normal;
	line-height: 1.6rem;
	border: 1px solid transparent
}

.event_modal .wrapper .contents .evBtn_wrap button.unable {
	background-color: #e1e1e1;
	color: #aaa;
	font-size: 1.4rem;
	padding: 1rem 3rem;
	height: 3.8rem;
	display: inline-black;
	font-weight: normal;
	line-height: 1.6rem;
	border: 1px solid #ccc
}

.event_modal .wrapper .contents .event_modal_header {
	overflow: hidden;
	border-bottom: 1px solid #e5e5e5
}

.event_modal .wrapper .contents .event_modal_header p {
	overflow: hidden;
	margin: 8px 0 12px 0
}

.event_modal .wrapper .contents .event_modal_header p span {
	display: block;
	float: left;
	color: #666
}

.event_modal .wrapper .contents .event_modal_body {
	padding: 50px 75px;
	border-bottom: 1px solid #e5e5e5;
	color: #666;
	font-size: 12px;
	line-height: 21px
}

.event_modal .wrapper .contents .event_modal_body table {
	width: 100%;
	text-align: center
}

.event_modal .wrapper .contents .ok {
	display: inline-block;
	width: 123px;
	height: 45px;
	background-position: -150px -300px
}

.adarea {
	margin-bottom: 14px
}

.adarea img {
	display: block;
	margin: 0 auto;
	border: 1px solid #f2f2f2
}

.change_pw {
	padding: 50px;
	text-align: left !important;
	font-size: 12px !important;
	line-height: 1.5 !important;
	color: #666;
	background: url(http://image2.megabox.co.kr/mop/home/user/change_pw.png)
		90% 140px no-repeat
}

.change_pw h2 {
	margin-bottom: 40px;
	font-size: 18px
}

.change_pw .pw_date {
	margin: 90px -50px 0;
	padding: 0 50px;
	border-top: 1px solid #DDD
}

.btn_pw_later, .btn_pw_now {
	width: 165px !important;
	height: 45px !important;
	background: url(http://image2.megabox.co.kr/mop/home/user/btns.png)
}

.btn_pw_now {
	width: 149px !important;
	background-position: 100% 0
}

.tab_wrap {
	border-bottom: 1px solid #e8e7e7;
	padding-bottom: 20px
}

.tab_wrap .float_text {
	position: absolute;
	right: 0;
	top: 13px;
	color: #666;
	font-size: 12px;
	font-weight: 700
}

.tab_wrap .float_text span {
	color: #198591
}

.user_wrap h2, .join_done_bottom h2 {
	position: relative;
	font-size: 20px;
	color: #666
}

.user_wrap .user_btn_add {
	width: 48px;
	height: 26px;
	background-position: -100px -750px
}

.user_wrap .user_btn_del {
	width: 48px;
	height: 26px;
	background-position: -158px -750px
}

.user_wrap h2 {
	margin: 0 0 58px 0
}

.user_wrap h2 span {
	font-size: 13px;
	font-weight: normal
}

.user_wrap h2 span.step {
	position: absolute;
	top: 9px;
	right: 0;
	display: block;
	width: 154px;
	height: 8px;
	background: url(http://image2.megabox.co.kr/mop/home/user/bg_member.png)
		0 0 no-repeat
}

.user_wrap h2 span.step.step1 {
	background-position: 0 0
}

.user_wrap h2 span.step.step2 {
	background-position: 0 -10px
}

.user_wrap h2 span.step.step3 {
	background-position: 0 -20px
}

.user_wrap h2 span.step.step4 {
	background-position: 0 -30px
}

.user_wrap h3 {
	height: 26px;
	padding: 3px 0;
	margin: 56px 0 8px 0;
	font-size: 14px;
	color: #666
}

.user_wrap .term_text {
	overflow: hidden;
	overflow-y: scroll;
	height: 157px;
	padding: 15px;
	border: 1px solid #e8e7e7
}

.user_wrap .term_text * {
	font-weight: normal;
	font-size: 12px;
	line-height: 21px;
	color: #666
}

.user_wrap .term_text dt {
	margin-top: 20px;
	margin-bottom: 20px
}

.user_wrap .term_text dd>ol {
	padding-left: 25px
}

.user_wrap .term_text ol, .user_wrap .term_text ol>li {
	list-style-type: decimal
}

.user_wrap .term_check {
	margin-top: 11px
}

.user_wrap .term_check label {
	font-size: 13px;
	color: #333;
	font-weight: normal
}

.user_wrap .term_check.bottom {
	margin-top: 60px;
	padding-top: 14px;
	border-top: 1px solid #e8e7e7
}

.user_wrap p.sub_text {
	font-size: 13px;
	color: #666;
	line-height: 24px;
	margin-bottom: 28px
}

.user_wrap .authentication {
	background: url(http://image2.megabox.co.kr/mop/home/user/bg_member.png)
		50% -400px no-repeat;
	padding: 135px 0 0 0;
	text-align: center;
	color: #666
}

.user_wrap .authentication.n2 {
	background-position: 50% -650px
}

.user_wrap .authentication>p {
	margin-bottom: 17px;
	font-size: 13px
}

.user_wrap .authentication>.under14 {
	width: 301px;
	height: 30px;
	background-position: 0 -250px;
	margin: 0 auto
}

.user_wrap .authentication>.join {
	width: 92px;
	height: 30px;
	background-position: -310px -250px;
	margin: 0 auto
}

.user_wrap .authentication>.resting {
	width: 92px;
	height: 35px;
	background-position: -510px -250px;
	margin: 0 auto
}

.user_wrap .authentication>.reg {
	width: 92px;
	height: 35px;
	background-position: -410px -250px;
	margin: 0 auto
}

.user_wrap .under14_check {
	color: #666;
	margin-top: 10px
}

.user_wrap .under14_check label {
	font-weight: normal;
	font-size: 12px
}

.user_wrap .btn_wrap {
	overflow: hidden;
	margin: 50px auto 0
}

.user_wrap .btn_wrap button.user.ok {
	display: inline-block;
	width: 123px;
	height: 45px;
	background-position: -150px -300px
}

.user_wrap .btn_wrap button.user.cancel {
	display: inline-block;
	width: 123px;
	height: 45px;
	background-position: 0 -300px
}

.user_wrap .btn_wrap button.user.modify {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png)
		-200px -650px no-repeat;
	display: inline-block;
	width: 123px;
	height: 45px
}

.user_wrap .btn_wrap button.user.quit {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png)
		-200px -700px no-repeat;
	display: inline-block;
	width: 123px;
	height: 45px
}

.user_wrap .join_notice {
	margin-top: 32px
}

.user_wrap .join_notice ul li {
	padding-left: 15px;
	font-size: 12px;
	line-height: 21px;
	color: #666;
	background: url(http://image2.megabox.co.kr/mop/home/user/bg_member.png)
		0 -957px no-repeat
}

.user_wrap .join_notice ul li span {
	color: #198591
}

.user_wrap .join_notice p {
	margin-top: 23px;
	font-size: 12px;
	color: #666
}

.user_wrap .join_notice p span {
	color: #198591
}

.user_wrap .myInfoArea1 {
	margin-left: 20px;
	margin-bottom: -30px
}

.user_wrap .myInfoArea1 .textArea {
	margin-top: 38px;
	margin-left: 20px
}

.user_wrap .myInfoArea1 .textArea .profile_btn_wrap {
	display: block;
	margin-top: 3px
}

.user_wrap .myInfoArea1 .textArea .profile_btn_wrap button {
	width: 70px;
	height: 26px
}

.user_wrap .myInfoArea1 .textArea .profile_btn_wrap button.fake_section
	{
	display: inline-block;
	background-position: -400px -200px
}

.user_wrap .myInfoArea1 .textArea .profile_btn_wrap button.profile_del {
	background-position: -476px -200px;
	display: inline-block
}

.user_wrap .form-table button.input_address, .user_wrap .form-table button.input_id,
	.user_wrap .form-table button.fake_section {
	width: 94px;
	height: 26px
}

.user_wrap .form-table button.input_address {
	background-position: -200px -200px
}

.user_wrap .form-table button.input_id {
	background-position: -300px -200px
}

.user_wrap .form-table input.fake_section {
	display: block;
	width: 350px;
	margin-right: 8px;
	float: left
}

.user_wrap .form-table .profile_btn_wrap {
	float: left;
	margin-top: 38px;
	margin-left: 10px
}

.user_wrap .form-table .profile_btn_wrap button {
	width: 70px;
	height: 26px
}

.user_wrap .form-table .profile_btn_wrap button.fake_section {
	background-position: -400px -200px
}

.user_wrap .form-table .profile_btn_wrap button.profile_del {
	margin-top: 5px;
	background-position: -476px -200px
}

.user_wrap .welcome {
	height: 281px;
	background: url(http://image2.megabox.co.kr/mop/home/user/welcome.png)
		50% 50px no-repeat
}

.user_wrap .welcome p {
	text-align: center;
	font-size: 13px;
	color: #666;
	padding-top: 235px
}

.user_wrap .typeTitle {
	left: 20px;
	top: 20px;
	text-align: left;
	position: relative;
	display: inline-block;
	font-weight: 600;
	font-size: 16px;
	color: #666;
	width: 480px
}

.user_wrap .select_type ul {
	overflow: hidden
}

.user_wrap .select_type ul li {
	float: left;
	width: 480px;
	height: 318px;
	margin-left: 10px;
	border-top: 3px solid #8470b5;
	text-align: center
}

.user_wrap .select_type ul li>div {
	width: 100%;
	height: 100%;
	padding: -20px 0 0 0;
	border: 1px solid #e5e5e5;
	border-top: none;
	background: url(http://image2.megabox.co.kr/mop/home/user/bg_member.png)
		-260px -335px no-repeat
}

.user_wrap .select_type ul li>div p {
	margin: 175px 0 15px 0
}

.user_wrap .select_type ul li>div div.auth_type {
	text-align: left;
	font-weight: 600;
	font-size: 15px;
	height: 130px;
	padding-left: 20px
}

.user_wrap .select_type ul li>div button {
	border: 1px solid #666;
	font-size: 14px;
	width: 92px;
	height: 30px;
	color: #666;
	background-color: #fff
}

.user_wrap .select_type ul li.item1 {
	margin-left: 0
}

.user_wrap .select_type ul li.item2>div {
	background-position: -260px 65px
}

.user_wrap .join_option {
	margin-top: 53px
}

.user_wrap .join_option ul li {
	overflow: hidden;
	padding: 13px 0
}

.user_wrap .join_option ul li p {
	float: left;
	margin-top: 10px;
	font-size: 18px;
	color: #666
}

.user_wrap .join_option ul li button {
	float: right;
	width: 225px;
	height: 43px;
	background-position: 0 0
}

.user_wrap .join_option ul li button.btn_mb {
	background-position: -250px 0
}

.user_wrap .join_option ul li:first-child {
	border-bottom: 1px solid #e5e5e5
}

.resting_idpw_wrap h2, .resting_wrap h2 {
	position: relative;
	margin: 0 0 58px 0;
	font-size: 20px;
	color: #666
}

.resting_idpw_wrap h2 span, .resting_wrap h2 span {
	font-size: 13px;
	font-weight: normal
}

.resting_idpw_wrap h2 span.step, .resting_wrap h2 span.step {
	position: absolute;
	top: 9px;
	right: 0;
	display: block;
	width: 100px;
	height: 8px;
	background: url(http://image2.megabox.co.kr/mop/home/user/bg_member.png)
		0 0 no-repeat
}

.resting_idpw_wrap h2 span.step.step1, .resting_wrap h2 span.step.step1
	{
	background-position: 0 0
}

.resting_idpw_wrap h2 span.step.step2, .resting_wrap h2 span.step.step2
	{
	background-position: 0 -10px
}

.resting_idpw_wrap, .resting_wrap .input_wrap {
	border-top: 1px solid #e8e7e7;
	border-bottom: 1px solid #e8e7e7
}

.resting_wrap>.resting_p {
	font-weight: bold;
	font-size: 15px;
	text-align: center;
	color: #666
}

.resting_wrap>.resting_p .txt_small {
	padding-top: 14px;
	font-weight: normal;
	font-size: 13px
}

.resting_wrap .input_wrap {
	margin: 57px auto 36px;
	padding: 34px 0 40px
}

.resting_wrap .input_wrap .pw_input {
	margin: 0 270px
}

.resting_wrap .input_wrap .pw_input label {
	width: 105px;
	font-size: 13px
}

.resting_wrap .input_wrap .pw_input .btn_id {
	width: 73px;
	height: 26px;
	margin-left: 5px;
	font-size: 13px;
	border: 1px solid #dcdcdc;
	background: #f2f2f2
}

.resting_wrap .input_wrap .pw_input input {
	position: relative;
	top: 4px;
	width: 240px;
	height: 26px;
	margin-bottom: 10px;
	border: 1px solid #dcdcdc;
	background: #fff
}

.resting_wrap .input_wrap .pw_input input.input_id {
	width: 162px
}

.resting_wrap .input_wrap .pw_input p {
	padding: 0 0 4px 109px;
	font-weight: normal;
	font-size: 12px;
	letter-spacing: -0.5px;
	text-align: left;
	color: #999
}

.resting_wrap .input_wrap .btn-m {
	padding: 0 33px;
	margin-top: 15px
}

.resting_wrap .icon_list li {
	color: #999
}

.resting_idpw_wrap {
	padding: 26px 0 30px;
	margin-top: 11px
}

.resting_idpw_wrap .h2_margin {
	margin-bottom: 18px
}

.resting_idpw_wrap p {
	padding-left: 24px;
	font-size: 13px;
	line-height: 23px
}

.resting_idpw_wrap button {
	float: right;
	margin-top: 20px
}

.resting_popup_wrap {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto
}

.resting_popup_wrap .resting_popwrap {
	width: 450px;
	position: absolute;
	top: 305px;
	left: 50%;
	margin-left: -184px;
	border-radius: 5px;
	background: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
	z-index: 2000
}

.resting_popup_wrap .resting_popwrap .ca_header h6 {
	margin-top: -1px
}

.resting_popup_wrap .resting_popwrap .text_top, .resting_popup_wrap .resting_popwrap .id_wrap
	{
	font-size: 13px
}

.resting_popup_wrap .resting_popwrap .text_top strong,
	.resting_popup_wrap .resting_popwrap .id_wrap strong {
	font-weight: bold;
	color: #503396
}

.resting_popup_wrap .resting_popwrap .text_top {
	padding: 14px 30px 22px
}

.resting_popup_wrap .resting_popwrap .text_top p {
	padding-top: 10px
}

.resting_popup_wrap .resting_popwrap .id_wrap {
	padding: 20px 30px;
	background: #f2f2f2
}

.resting_popup_wrap .resting_popwrap .id_wrap li:first-child {
	padding-bottom: 9px
}

.resting_popup_wrap .resting_popwrap .ca_footer {
	padding: 15px
}

.resting_popup_wrap .resting_popwrap .ca_footer button {
	margin: 0
}

.user_join {
	height: auto;
	padding: 0;
	border-top: none
}

#my_theater .modal-dialog {
	width: 653px
}

#my_theater .modal-body {
	padding-left: 65px;
	padding-right: 65px
}

#my_theater .modal-footer {
	padding-top: 0;
	margin-top: 0;
	text-align: center;
	border: none
}

#my_theater p.notice {
	font-size: 14px;
	color: #333;
	line-height: 26px;
	text-align: center;
	margin-bottom: 28px;
	white-space: nowrap
}

#my_theater .select_theater_wrap {
	border: 6px solid #f2f2f2;
	padding: 17px 0;
	text-align: center
}

#my_theater .select_theater_wrap li {
	margin: 5px 0
}

#my_theater .select_theater_wrap li select {
	height: 29px
}

#my_theater .select_theater_wrap li .customSelect {
	margin-right: 4px
}

#my_theater .select_theater_wrap span, #my_theater .select_theater_wrap a
	{
	font-size: 12px;
	color: #666;
	text-align: left
}

#my_theater .select_theater_wrap a {
	color: #503396
}

#my_theater .select_theater_wrap .number {
	display: inline-block;
	width: 45px
}

#my_theater .img_btn {
	display: inline-block
}

.join_done {
	padding: 64px 0;
	background-color: #f2f2f2;
	border-top: 1px solid #d2d2d2;
	border-bottom: 1px solid #d2d2d2;
	font-weight: 700;
	color: #333;
	text-align: center
}

.join_done h3 {
	font-size: 36px;
	margin: 0
}

.join_done p {
	margin-top: 14px;
	font-size: 16px
}

.join_done p span {
	color: #503396
}

.join_done button {
	margin-top: 40px
}

.join_already button {
	display: inline-block;
	width: 142px;
	height: 45px;
	margin: 0 2px
}

.join_already button.home {
	background-position: -150px -150px
}

.join_already button.id_pw {
	background-position: -303px -150px
}

.join_done_bottom {
	margin-top: 49px
}

.join_done_bottom h2 {
	padding: 0 0 12px 22px;
	margin-bottom: 30px;
	border-bottom: 1px solid #e1e1e1
}

.join_done_bottom h4 {
	margin: 0;
	font-size: 20px;
	color: #333
}

.join_done_bottom .benefit {
	width: 100%;
	height: 215px;
	margin-bottom: 30px;
	background:
		url(http://image2.megabox.co.kr/mop/home/membership/benefit_160302.png)
		50% 0 no-repeat
}

.join_done_bottom .benefit ul li {
	position: relative
}

.join_done_bottom .benefit ul li .more {
	display: block;
	position: absolute;
	width: 70px;
	height: 22px;
	font: 11px/22px dotum;
	text-align: center;
	color: #666;
	text-decoration: none;
	border: 1px solid #ccc;
	background-color: #fff
}

.join_done_bottom .benefit ul li .more:hover, .join_done_bottom .benefit ul li .more:focus
	{
	color: #666
}

.join_done_bottom .benefit ul li .more.vip {
	left: 700px;
	top: 178px
}

.join_done_bottom .benefit ul li .more.special {
	left: 864px;
	top: 178px
}

.join_done_bottom .special_membership {
	width: 970px;
	height: 242px;
	padding: 34px 40px;
	color: #d7d7d7;
	background: #333
		url(http://image2.megabox.co.kr/mop/home/membership/user_done_banner.png)
		right 0 no-repeat
}

.join_done_bottom .special_membership strong {
	display: block;
	padding-bottom: 29px;
	font-size: 24px
}

.join_done_bottom .special_membership strong:after {
	display: block;
	content: "";
	position: relative;
	top: 13px;
	width: 46px;
	height: 1px;
	background: #d7d7d7
}

.join_done_bottom .special_membership p {
	font-size: 14px
}

.join_done_bottom .special_btn {
	width: 154px;
	height: 34px;
	margin-top: 27px;
	color: #59BEC9;
	font-size: 14px;
	line-height: 30px;
	border: 1px solid #59BEC9;
	background: none
}

.join_done_bottom button {
	width: 299px;
	height: 45px;
	margin: 0 auto;
	background-position: 0 -650px
}

.join_done_bottom button:hover, .join_done_bottom button:active {
	background-position: 0 -700px
}

.find_id_notice {
	border: 1px solid #e1e1e1;
	padding: 25px;
	margin-bottom: 80px
}

.find_id_notice p {
	color: #333;
	line-height: 23px;
	font-size: 13px
}

.find_id_notice p span {
	color: #198591
}

.find_id_notice p:first-child {
	margin-bottom: 15px
}

.find_id_input_wrap {
	overflow: hidden
}

.find_id_input_wrap .nav-tabs {
	margin-bottom: 0
}

.find_id_input_wrap .tab_wrap {
	width: 477px;
	float: left;
	border-bottom: none
}

.find_id_input_wrap .tab_wrap .tab-content {
	height: 295px
}

.find_id_input_wrap .tab_wrap .tab-content .submit_wrap {
	height: 60px;
	padding-top: 29px;
	border-top: 1px solid #e8e7e7
}

.find_id_input_wrap .tab_wrap .tab-content .submit_wrap button {
	float: right;
	width: 68px;
	height: 30px;
	background-position: 0 -750px
}

.find_id_input_wrap h3 {
	font-size: 18px;
	margin: 0;
	margin-bottom: 30px
}

.find_id_input_wrap .find_id {
	margin-right: 15px
}

.find_id_input_wrap .easy_input_wrap {
	padding-left: 62px
}

.find_id_input_wrap .easy_input_wrap li {
	overflow: hidden;
	padding: 7px 0
}

.find_id_input_wrap .easy_input_wrap li .ex_tx {
	clear: both;
	color: #333;
	float: none;
	line-height: 23px;
	font-size: 13px;
	padding-top: 5px;
	text-indent: 132px
}

.find_id_input_wrap .easy_input_wrap label {
	display: block;
	float: left;
	width: 133px;
	font-size: 12px;
	color: #333;
	font-weight: 700;
	vertical-align: middle;
	margin-bottom: 0;
	height: 26px;
	line-height: 26px
}

.find_id_input_wrap .easy_input_wrap .inputs {
	float: left;
	vertical-align: middle
}

.find_id_input_wrap .easy_input_wrap .inputs.birthday span {
	margin: 0 6px
}

.find_id_input_wrap .easy_input_wrap .inputs span, .find_id_input_wrap .easy_input_wrap .inputs input
	{
	display: block;
	float: left;
	font-size: 12px;
	vertical-align: middle;
	background-color: #fff
}

.find_id_input_wrap .easy_input_wrap .inputs span {
	margin: 0 2px;
	height: 26px;
	line-height: 26px;
	color: #666
}

#find_id_easy ul {
	padding: 58px 0 57px 62px
}

.find_hard_wrap {
	text-align: center
}

.find_hard_wrap h4 {
	font-size: 12px;
	font-weight: 700;
	margin: 0;
	color: #333
}

.find_hard_wrap button {
	width: 199px;
	height: 26px;
	background-position: 0 -200px;
	margin: 0 auto
}

#find_pw_easy .radio_wrap {
	padding: 46px 0 17px 62px
}

#find_pw_easy .radio_wrap label {
	font-size: 12px;
	margin-bottom: 0;
	margin-right: 20px;
	color: #666
}

#find_pw_easy ul {
	margin-bottom: 32px
}

#find_id_hard, #find_pw_hard {
	height: 236px;
	border-bottom: 1px solid #e8e7e7
}

#find_pw_hard label {
	font-size: 12px
}

#find_pw_hard p {
	font-size: 12px;
	line-height: 18px;
	color: #666;
	margin: 15px 0 12px 0
}

#find_pw_hard input {
	background-color: #fff
}

#find_pw_hard div.inputs {
	display: inline-block
}

#find_pw_hard div.find_pw_hard_input {
	margin-left: -46px
}

.ad {
	position: absolute;
	top: 31px;
	right: -160px
}

.ad #ck_movie span img {
	width: 150px
}

.member_no_wrap {
	font-size: 13px
}

.member_no_wrap h3 {
	font-size: 13px;
	background: none;
	height: auto;
	font-weight: 700;
	color: #333;
	padding: 0 0 0 23px;
	margin: 0 0 12px 0
}

.member_no_wrap .text {
	padding: 28px;
	border: 1px solid #ccc;
	line-height: 22px;
	color: #333
}

.member_no_wrap .agree_wrap {
	overflow: hidden;
	margin-top: 11px
}

.member_no_wrap .agree_wrap p {
	color: #333
}

.member_no_wrap .agree_wrap label {
	font-size: 12px;
	font-weight: normal;
	margin: 0
}

.member_no_wrap .agree_wrap label:first-child {
	margin-right: 24px
}

.member_no_wrap .input_wrap {
	margin-top: 63px;
	padding: 33px 0 33px 300px;
	border-top: 1px solid #e8e7e7;
	border-bottom: 1px solid #e8e7e7
}

.member_no_wrap .input_wrap li {
	overflow: hidden;
	margin: 7px 0
}

.member_no_wrap .input_wrap label {
	display: block;
	float: left;
	width: 133px;
	height: 26px;
	line-height: 26px;
	margin: 0
}

.member_no_wrap .input_wrap input {
	width: 219px;
	float: left;
	border-color: #ccc;
	background-color: #fff
}

.member_no_wrap .input_wrap span {
	display: block;
	float: left;
	line-height: 26px;
	height: 26px;
	color: #ccc;
	margin: 0 2px
}

.member_no_wrap .btn_wrap {
	margin-top: 29px;
	margin-bottom: 34px;
	text-align: right
}

.member_no_wrap .btn_wrap button {
	width: 80px;
	height: 30px;
	background-position: -350px -350px;
	display: inline-block
}

.member_no_wrap .btn_wrap button:first-child {
	margin-right: 8px;
	background-position: -250px -350px
}

.member_no_wrap .notice {
	font-size: 12px
}

.member_no_wrap .notice li {
	margin-bottom: 7px
}

.member_no_wrap .notice li i {
	color: #198591;
	margin-right: 10px
}

.nfind_zipcode {
	display: none;
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: 2000
}

.nfind_zipcode>* {
	font-size: 13px;
	font-family: '맑은 고딕', 'Malgun Gothic', '돋움', dotum,
		'Apple SD Gothic Neo', sans-serif;
	letter-spacing: -1px
}

.nfind_zipcode .find_zipcode_lp {
	position: absolute;
	width: 484px;
	height: 473px;
	background-color: #fff;
	z-index: 1;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	-ms-border-radius: 8px;
	-o-border-radius: 8px;
	border-radius: 8px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_header {
	height: 42px;
	padding-top: 10px;
	position: relative;
	text-align: center;
	border-bottom: 1px solid #e5e5e5
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_header h5 {
	display: inline-block;
	margin: 0;
	font-size: 18px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_header>button {
	position: absolute;
	right: 16px;
	top: 12px;
	width: 17px;
	height: 17px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/zipcode_close.png) 0 0
		no-repeat
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body {
	position: relative;
	height: 466px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search
	{
	margin: 0 auto;
	padding: 15px 30px 15px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li
	{
	font-size: 13px;
	color: #333
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li>span
	{
	display: block;
	float: left
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li>span label
	{
	font-weight: normal;
	margin-bottom: 0
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li>span.col1 .color
	{
	color: #503396
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li>span.col2>input
	{
	width: 341px;
	background-color: #fff
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li>span.col2>.zipcode_search
	{
	position: static;
	float: right;
	margin: -2px 0 0 15px;
	width: 68px;
	height: 30px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_search li>span.col2 .txt
	{
	display: block;
	padding: 4px 0 6px;
	font-size: 12px;
	color: #999
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result
	{
	height: 328px;
	padding: 0 30px 25px;
	font-size: 13px;
	background-color: #f2f2f2
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .title
	{
	font-weight: bold;
	height: 43px;
	padding-left: 29px;
	line-height: 43px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .title span
	{
	padding-left: 129px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt
	{
	height: 251px;
	overflow-y: scroll;
	border: 1px solid #dfdfdf;
	background-color: #fff
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dl
	{
	display: block;
	clear: both;
	content: "";
	padding: 10px 0;
	*zoom: 1
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dl:nth-child(even)
	{
	background: #f9f9f9
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dd
	{
	padding-left: 100px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dd.zip
	{
	float: left;
	width: 100px;
	padding: 0;
	text-align: center
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dd.address+.address
	{
	padding-top: 4px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dd a:hover
	{
	text-decoration: none
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt a
	{
	color: #333
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .zip_result_none
	{
	display: none;
	height: auto;
	padding: 0
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode_lp_result .zip_result_none .message
	{
	height: 257px;
	padding-top: 128px;
	text-align: center;
	border: 1px dashed #dfdfdf;
	background-color: #fff
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode2_2 .chage_m
	{
	padding: 0 30px 15px
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result
	{
	height: auto;
	padding: 0;
	border-top: 1px solid #d9d9d9;
	border-bottom: 2px solid #d9d9d9
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_road,
	.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_num
	{
	padding: 25px 30px;
	border-top: 1px solid #d9d9d9
}

.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_road b,
	.nfind_zipcode .find_zipcode_lp .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_num b
	{
	display: block
}

.nfind_zipcode .find_zipcode_bg {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	height: 100%;
	width: 100%;
	background-color: #1b1b1b;
	filter: alpha(opacity = 80);
	opacity: .8
}

.nfind_zipcode_selected {
	display: none;
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: 2000
}

.nfind_zipcode_selected>* {
	font-size: 13px;
	font-family: '맑은 고딕', 'Malgun Gothic', '돋움', dotum,
		'Apple SD Gothic Neo', sans-serif;
	letter-spacing: -1px
}

.nfind_zipcode_selected .find_zipcode_lp_selected {
	position: absolute;
	width: 484px;
	height: 359px;
	background-color: #fff;
	z-index: 1;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	-ms-border-radius: 8px;
	-o-border-radius: 8px;
	border-radius: 8px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_header
	{
	height: 42px;
	padding-top: 10px;
	position: relative;
	text-align: center;
	border-bottom: 1px solid #e5e5e5
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_header h5
	{
	display: inline-block;
	margin: 0;
	font-size: 18px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_header>button
	{
	position: absolute;
	right: 16px;
	top: 12px;
	width: 17px;
	height: 17px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/zipcode_close.png) 0 0
		no-repeat
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body
	{
	position: relative
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search
	{
	margin: 0 auto;
	padding: 15px 30px 15px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li
	{
	font-size: 13px;
	color: #333
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li>span
	{
	display: block;
	float: left
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li>span label
	{
	font-weight: normal;
	margin-bottom: 0
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li>span.col1 .color
	{
	color: #503396
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li>span.col2>input
	{
	width: 341px;
	background-color: #fff
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li>span.col2>.zipcode_search
	{
	position: static;
	float: right;
	margin: -2px 0 0 15px;
	width: 68px;
	height: 30px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_search li>span.col2 .txt
	{
	display: block;
	padding: 4px 0 6px;
	font-size: 12px;
	color: #999
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result
	{
	height: 328px;
	padding: 0 30px 25px;
	font-size: 13px;
	background-color: #f2f2f2
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .title
	{
	font-weight: bold;
	height: 43px;
	padding-left: 29px;
	line-height: 43px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .title span
	{
	padding-left: 152px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt
	{
	height: 251px;
	overflow-y: scroll;
	border: 1px dashed #dfdfdf;
	background-color: #fff
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dl
	{
	display: block;
	clear: both;
	content: "";
	padding: 6px 0;
	*zoom: 1
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dd
	{
	padding-left: 100px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt dd.zip
	{
	float: left;
	width: 100px;
	padding: 0;
	text-align: center
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .scroll_txt a
	{
	color: #333
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .zip_result_none
	{
	display: none;
	height: auto;
	padding: 0
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode_lp_result .zip_result_none .message
	{
	height: 257px;
	padding-top: 128px;
	text-align: center;
	border: 1px dashed #dfdfdf;
	background-color: #fff
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode2_2 .chage_m
	{
	padding: 15px 30px
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result
	{
	height: auto;
	padding: 0;
	border-top: 1px solid #d9d9d9;
	border-bottom: 2px solid #d9d9d9
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_road,
	.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_num
	{
	padding: 25px 30px;
	border-top: 1px solid #d9d9d9
}

.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_road b,
	.nfind_zipcode_selected .find_zipcode_lp_selected .find_zipcode_lp_body .find_zipcode2_2 .find_zipcode_lp_result .z_num b
	{
	display: block
}

.nfind_zipcode_selected .find_zipcode_bg_selected {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	height: 100%;
	width: 100%;
	background-color: #1b1b1b;
	filter: alpha(opacity = 80);
	opacity: .8
}

.age14_under {
	border-bottom: 2px solid #d2d2d2;
	padding: 20px;
	margin-bottom: 70px
}

.age14_under h3 {
	margin: 0 0 8px 0
}

.bb1 {
	border-bottom: 1px solid #d2d2d2 !important
}

.personal_information_wrap .form-table th {
	text-align: center;
	border-left: 1px solid #dcdcdc;
	padding: 5px !important
}

.personal_information_wrap .form-table th:first-child {
	border-left: none
}

.personal_information_wrap .form-table td {
	font-size: 12px;
	text-align: center;
	padding: 15px 20px !important;
	border-left: 1px solid #dcdcdc
}

.personal_information_wrap .form-table td:first-child {
	border-left: none
}

.personal_information_wrap .form-table td:first-child,
	.personal_information_wrap .form-table td:last-child {
	text-align: left
}

.personal_information_wrap .form-table td label {
	padding: 2px 0
}

.personal_information_wrap .agree_area {
	padding: 15px 0 0 15px
}

.personal_information_wrap .agree_area .txt {
	width: 100%;
	font-size: 12px;
	font-weight: normal;
	padding-bottom: 15px
}

.personal_information_wrap .agree_area label, .personal_information_wrap .agree_area span
	{
	font-size: 13px;
	font-weight: normal
}

.personal_information_wrap .agree_area label+span {
	padding: 0 5px
}

.personal_information_wrap .agree_area label span.agreeDate {
	font-size: 11px;
	font-weight: bold
}

.personal_information_wrap .agree_area .ml100 {
	margin-left: 100px
}

.personal_information_wrap .agree_area label .disabled+span {
	color: #999 !important
}

.personal_information_wrap .agree_area .icheckbox_minimal {
	margin-right: 3px
}

.personal_information_wrap .agree_area .icheckbox_minimal ins {
	background: url(http://image2.megabox.co.kr/mop/home/bg_checkbox.png) 0
		0 no-repeat
}

.personal_information_wrap .agree_area .icheckbox_minimal.checked ins {
	background-position: -16px 0
}

#container.card_container {
	position: static;
	margin: 0
}

.card_container .section {
	padding-top: 104px;
	padding-bottom: 48px
}

.card_container .section .tab_card {
	text-align: center;
	margin-bottom: 26px
}

.card_container .section .tab_card li {
	display: inline-block
}

.card_container .section .tab_card li a {
	display: block;
	color: #666;
	font-size: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/card/bg_card.png) 0
		-50px no-repeat;
	height: 22px;
	line-height: 22px;
	padding-left: 23px;
	margin-left: 23px
}

.card_container .section .tab_card li.active a {
	font-weight: 700;
	color: #198591
}

.card_container .section .tab_card li:first-child a {
	background: none;
	margin-left: 0;
	padding-left: 0
}

.card_container .section .content_wrap {
	margin: 0 auto
}

.card_container .section .content_wrap .ti_card {
	font-size: 20px;
	display: inline-block;
	width: 970px;
	margin: 30px 0 30px 15px
}

.card_container .section .content_wrap .gift_card {
	overflow: hidden;
	padding: 0 7px 0 8px
}

.card_container .section .content_wrap .gift_card li {
	height: 218px;
	float: left;
	margin: 0 7px 0 8px
}

.card_container .section .content_wrap .gift_card li img {
	display: block;
	margin: 0 auto 8px auto
}

.card_container .section .content_wrap .gift_card li p strong,
	.card_container .section .content_wrap .gift_card li p span {
	display: block;
	margin-bottom: 5px;
	text-align: center;
	font-size: 12px;
	font-weight: normal;
	color: #333
}

.card_container .section .content_wrap .gift_card li p strong {
	font-size: 14px;
	font-weight: 700
}

.card_container .section .content_wrap .gift_card.ticket {
	width: 970px;
	margin: -30px auto 25px auto
}

.card_container .section .content_wrap .gift_card.ticket li {
	width: 50%;
	height: auto;
	margin: 0;
	padding: 50px 20px;
	text-align: center
}

.card_container .section .content_wrap .gift_card.ticket li>img {
	display: block
}

.card_container .section .content_wrap .gift_card.ticket li dl {
	font-size: 12px;
	padding-top: 20px
}

.card_container .section .content_wrap .gift_card.ticket li dl dt {
	margin-bottom: 5px
}

.card_container .section .content_wrap .gift_card.ticket li dl dt strong
	{
	display: block;
	margin-bottom: 5px;
	font-size: 14px
}

.card_container .section .content_wrap .gift_card.ticket li dl dd {
	text-align: left;
	line-height: 21px;
	background: url(http://image2.megabox.co.kr/mop/home/icon_list.png) 0
		7px no-repeat;
	color: #666;
	padding-left: 12px;
	letter-spacing: -0.5px
}

.card_container .section .content_wrap .gift_card.ticket li:first-child
	{
	text-align: left;
	clear: both;
	float: none;
	width: 100%;
	overflow: hidden;
	border-bottom: 1px solid #e1e1e1
}

.card_container .section .content_wrap .gift_card.ticket li:first-child>img
	{
	float: left
}

.card_container .section .content_wrap .gift_card.ticket li:first-child dl
	{
	float: right;
	width: 450px
}

.card_container .section .info_wrap {
	padding: 33px 0;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	background-color: #f2f2f2
}

.card_container .section .info_wrap ul {
	width: 970px;
	margin: 0 auto;
	overflow: hidden
}

.card_container .section .info_wrap ul li {
	width: 50%;
	float: left;
	padding: 0 8px
}

.card_container .section .narrow {
	width: 970px
}

.card_container .section .wide {
	width: 1295px
}

.card_container .section .wide .ti_card {
	display: block;
	width: 1295px;
	margin: 30px auto;
	font-size: 20px
}

.card_container .section.no1 {
	height: 580px;
	padding-top: 101px;
	background: url(http://image2.megabox.co.kr/mop/home/card/bg_top.jpg)
		50% 0 no-repeat
}

.card_container .section.no1 h2 {
	width: 299px;
	height: 28px;
	margin: 0 auto 24px auto;
	background: url(http://image2.megabox.co.kr/mop/home/card/btn_card.png)
		0 bottom no-repeat;
	text-indent: -9999px
}

.card_container .section.no1 .card_search {
	overflow: hidden;
	text-align: center;
	margin-bottom: 43px
}

.card_container .section.no1 .card_search input {
	display: inline-block;
	width: 191px;
	height: 34px;
	line-height: 34px;
	background-color: #524c57;
	border: none;
	color: #FFF
}

.card_container .section.no1 .card_search input.btn_card_search {
	width: 45px;
	background: url(http://image2.megabox.co.kr/mop/home/card/btn_card.png)
		right 0 no-repeat
}

.card_container .section.no1 .notice {
	color: #fff;
	text-align: center;
	font-size: 18px;
	margin-bottom: 13px
}

.card_container .section.no1 .notice span {
	color: #59BEC9
}

.card_container .section.no1 .card_tab {
	width: 362px;
	overflow: hidden;
	margin: 0 auto 47px auto
}

.card_container .section.no1 .card_tab li {
	width: 120px;
	height: 30px;
	float: left;
	margin-left: 1px
}

.card_container .section.no1 .card_tab li:first-child {
	margin-left: 0
}

.card_container .section.no1 .card_tab li a {
	display: block;
	height: 100%;
	width: 100%;
	background: url(http://image2.megabox.co.kr/mop/home/card/btn_card.png)
		0 0 no-repeat;
	text-indent: -9999px
}

.card_container .section.no1 .card_tab li#sk a {
	background-position: 0 0
}

.card_container .section.no1 .card_tab li#sk a:hover, .card_container .section.no1 .card_tab li#sk a:active,
	.card_container .section.no1 .card_tab li#sk a.active {
	background-position: 0 -30px
}

.card_container .section.no1 .card_tab li#kt a {
	background-position: -120px 0
}

.card_container .section.no1 .card_tab li#kt a:hover, .card_container .section.no1 .card_tab li#kt a:active,
	.card_container .section.no1 .card_tab li#kt a.active {
	background-position: -120px -30px
}

.card_container .section.no1 .card_tab li#lg a {
	background-position: -240px 0
}

.card_container .section.no1 .card_tab li#lg a:hover, .card_container .section.no1 .card_tab li#lg a:active,
	.card_container .section.no1 .card_tab li#lg a.active {
	background-position: -240px -30px
}

.card_container .section.no2 {
	background-color: #fff
}

.card_container .section.no3 {
	background-color: #333
}

.card_container .section.no3 li a {
	color: #CCC
}

.card_container .section.no4 {
	padding-top: 139px;
	padding-bottom: 0;
	background-color: #f2f2f2
}

.card_container .section.no5 {
	padding-top: 139px;
	padding-bottom: 0;
	background-color: #fff
}

.card_container .section .ad_wrap {
	min-width: 970px;
	height: 325px;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/card/bg_ad.jpg);
	background-repeat: no-repeat;
	-webkit-background-size: 100%;
	background-size: 100%
}

.card_container .section .ad_wrap a {
	display: block;
	min-width: 970px;
	width: 100%;
	height: 100%;
	overflow: hidden
}

.card_container .section .ad_wrap a img {
	display: block;
	float: right
}

.card_container .section .ad_wrap a .ad_in {
	display: block;
	width: 100%;
	min-width: 970px;
	height: 100%;
	background: url(http://image2.megabox.co.kr/mop/home/card/bg_ad2.png)
		left 0 no-repeat
}

.card_flip_wrapper {
	margin: 0 -17px;
	word-wrap: break-word;
	padding: 0 10px;
	text-align: center
}

.card_flip_wrapper li {
	display: inline-block;
	width: 300px;
	height: 283px;
	margin: 0 12px;
	white-space: nowrap;
	text-align: left
}

.card_flip_wrapper li .thumb {
	width: 100%;
	height: 190px;
	position: relative
}

.card_flip_wrapper li .thumb .upper {
	width: 100%;
	position: absolute;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px
}

.card_flip_wrapper li .thumb .upper img {
	width: 100%;
	height: 100%;
	display: block;
	z-index: -1
}

.card_flip_wrapper li .thumb .lower {
	width: 100%;
	height: 100%;
	position: absolute;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	background-color: #333
}

.card_flip_wrapper li .thumb .lower .back_wrap {
	position: absolute;
	z-index: 1;
	width: 100%;
	height: 100%;
	padding: 17px 22px;
	color: #ccc;
	overflow: hidden
}

.card_flip_wrapper li .thumb .lower .back_wrap .scroll_wrap {
	white-space: normal;
	position: relative;
	height: 100%;
	overflow: auto
}

.card_flip_wrapper li .thumb .lower .back_wrap .scroll_wrap p {
	color: #000 !important
}

.card_flip_wrapper li .thumb .lower .back_wrap .scroll_wrap.ps-container .ps-scrollbar-y-rail
	{
	background: none
}

.card_flip_wrapper li .thumb .lower .back_wrap dl dt {
	margin-bottom: 7px;
	font-size: 14px;
	font-weight: normal;
	font-weight: 700
}

.card_flip_wrapper li .thumb .lower .back_wrap dl dd {
	margin-bottom: 3px;
	font-size: 12px
}

.card_flip_wrapper li .thumb .lower .back_wrap p {
	margin-bottom: 3px;
	font-size: 12px
}

.card_flip_wrapper li .thumb.scroll {
	overflow: hidden
}

.card_flip_wrapper li .thumb.scroll .lower {
	top: 190px
}

.card_flip_wrapper li .thumb.scroll .lower .back_wrap {
	position: absolute;
	z-index: 1;
	width: 100%;
	padding: 9px
}

.card_flip_wrapper li .thumb>div {
	position: absolute;
	left: 0;
	top: 0;
	-webkit-transition: .5s ease-in-out;
	-moz-transition: .5s ease-in-out;
	-ms-transition: .5s ease-in-out;
	-o-transition: .5s ease-in-out;
	transition: .5s ease-in-out
}

.card_flip_wrapper li .thumb div.lower {
	-moz-backface-visibility: hidden;
	-webkit-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden;
	-moz-transform: perspective(800px) rotateY(-180deg);
	-webkit-transform: perspective(800px) rotateY(-180deg);
	-ms-transform: perspective(800px) rotateY(-180deg);
	-o-transform: perspective(800px) rotateY(-180deg);
	transform: perspective(800px) rotateY(-180deg)
}

.card_flip_wrapper li .thumb div.upper {
	-moz-transform: perspective(800px) rotateY(0deg);
	-webkit-transform: perspective(800px) rotateY(0deg);
	-ms-transform: perspective(800px) rotateY(0deg);
	-o-transform: perspective(800px) rotateY(0deg);
	transform: perspective(800px) rotateY(0deg);
	-moz-backface-visibility: hidden;
	-webkit-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden
}

.card_flip_wrapper li .thumb.flipIt div.lower {
	-moz-transform: perspective(800px) rotateY(0deg);
	-webkit-transform: perspective(800px) rotateY(0deg);
	-ms-transform: perspective(800px) rotateY(0deg);
	-o-transform: perspective(800px) rotateY(0deg);
	transform: perspective(800px) rotateY(0deg)
}

.card_flip_wrapper li .thumb.flipIt div.upper {
	-moz-transform: perspective(800px) rotateY(179.9deg);
	-webkit-transform: perspective(800px) rotateY(179.9deg);
	-ms-transform: perspective(800px) rotateY(179.9deg);
	-o-transform: perspective(800px) rotateY(179.9deg);
	transform: perspective(800px) rotateY(179.9deg)
}

.card_flip_wrapper li .card_benefit p {
	text-align: center;
	font-size: 12px;
	margin-top: 4px
}

.card_flip_wrapper li .card_benefit p span {
	margin-left: 19px
}

.card_flip_wrapper li .card_benefit p span:first-child {
	margin-left: 0
}

.card_flip_wrapper li .card_benefit p i {
	color: #198591
}

.card_flip_wrapper li .card_benefit p.title {
	margin-top: 9px;
	font-size: 14px;
	font-weight: 700
}

.card_flip_wrapper.dark .lower {
	background-color: #dcdcdc !important
}

.card_flip_wrapper.dark .lower .back_wrap {
	color: #333 !important
}

.card_flip_wrapper.dark .card_benefit p {
	color: #fff
}

.card_flip_wrapper.telecom {
	margin: 0 auto;
	padding: 0
}

.card_flip_wrapper.telecom li {
	width: 251px;
	height: 205px;
	margin: 0 0 0 48px;
	vertical-align: top
}

.card_flip_wrapper.telecom li:first-child {
	margin-left: 0
}

.card_flip_wrapper.telecom li .thumb {
	height: 155px
}

.card_flip_wrapper.telecom li .thumb .lower .back_wrap {
	padding: 10px 5px;
	font-size: 11px;
	line-height: 18px
}

.card_flip_wrapper.telecom li .thumb .lower .back_wrap dl dt {
	margin-bottom: 7px;
	font-size: 12px;
	text-align: center
}

.card_flip_wrapper.telecom li .thumb .lower .back_wrap dl dd {
	padding-left: 7px;
	font-size: 11px;
	background: url(http://image2.megabox.co.kr/mop/home/card/btn_card.png)
		-402px -193px no-repeat
}

.card_flip_wrapper.telecom .card_benefit p {
	font-size: 10px
}

.card_flip_wrapper.telecom .card_benefit p.title {
	margin-top: 6px
}

.card_search h3 {
	height: 34px;
	margin: 0 0 30px;
	border-bottom: 1px solid #e1e1e1
}

.card_search .card_flip_wrapper {
	margin: 0
}

.card_search .card_flip_wrapper .item {
	margin: 0 25px
}

.card_search .card_flip_wrapper .item p {
	color: #666
}

.card_search .btn_area {
	padding-top: 30px;
	margin: 0 -40px;
	border-top: 1px solid #e5e5e5;
	text-align: center
}

.card_search .btn_area .img_btn {
	display: inline-block;
	margin: 0 8px;
	width: 123px;
	height: 45px;
	background:
		url(http://image2.megabox.co.kr/mop/home/card/btn_card_search.png)
}

.card_search .btn_area .img_btn.submit {
	background-position: 100% 0
}

.card_search .wrapper {
	width: 968px;
	margin: 0 auto;
	padding: 90px 0 55px 0
}

.card_search .wrapper .contents {
	padding: 65px 40px;
	width: 100%;
	background-color: #fff;
	position: relative
}

.card_search .card_popup>div {
	margin-left: 370px
}

.card_search .card_popup .card_benefit span {
	margin-right: 30px;
	font-size: 12px
}

.card_search .card_popup .title {
	font-weight: 700;
	font-size: 14px;
	color: #333
}

.card_search .card_popup>div>.mt60 {
	font-size: 12px
}

#card_search .popup_box .scroll_wrap p {
	color: #fff !important
}

#pointCardList li .thumb .lower .back_wrap .scroll_wrap p {
	color: #fff !important
}

#membershipCardList li .thumb .lower .back_wrap .scroll_wrap p {
	color: #fff !important
}

#rent_calposition {
	position: relative
}

#rent_calposition .datepicker {
	top: 28px !important;
	left: 134px !important
}

.customer_tab ul {
	overflow: hidden;
	height: 125px
}

.customer_tab ul li {
	float: left;
	width: auto;
	height: 100%
}

.customer_tab ul li a {
	display: block;
	width: 159px;
	height: 100%
}

.customer_tab ul li a.ct1 {
	background-position: 0 -250px
}

.customer_tab ul li a.ct1:hover, .customer_tab ul li a.ct1:active,
	.customer_tab ul li a.ct1.active {
	background-position: 0 -400px
}

.customer_tab ul li a.ct2 {
	background-position: -159px -250px
}

.customer_tab ul li a.ct2:hover, .customer_tab ul li a.ct2:active,
	.customer_tab ul li a.ct2.active {
	background-position: -159px -400px
}

.customer_tab ul li a.ct3 {
	background-position: -318px -250px
}

.customer_tab ul li a.ct3:hover, .customer_tab ul li a.ct3:active,
	.customer_tab ul li a.ct3.active {
	background-position: -318px -400px
}

.customer_tab ul li a.ct4 {
	background-position: -477px -250px
}

.customer_tab ul li a.ct4:hover, .customer_tab ul li a.ct4:active,
	.customer_tab ul li a.ct4.active {
	background-position: -477px -400px
}

.customer_tab ul li a.ct5 {
	width: 160px;
	background-position: -636px -250px
}

.customer_tab ul li a.ct5:hover, .customer_tab ul li a.ct5:active,
	.customer_tab ul li a.ct5.active {
	background-position: -636px -400px
}

.customer_tab ul li.phone_number {
	width: 160px;
	float: right;
	background-position: 0 -600px
}

.customer_tab_wrap {
	padding: 0;
	border: none
}

.img_btn.customer.registration {
	margin: 0 auto;
	width: 123px;
	height: 45px;
	background-position: -500px -550px
}

.img_btn.customer.lost {
	width: 100px;
	height: 22px;
	background-position: -650px -550px
}

.img_btn.customer.main_more {
	width: 60px;
	height: 22px;
	background-position: 0 -550px
}

.img_btn.customer.main_lost {
	width: 83px;
	height: 22px;
	background-position: -100px -550px
}

.customer_term_wrap {
	overflow: auto;
	position: relative;
	width: 970px;
	height: 200px;
	padding: 20px 4px 20px 24px;
	border: 1px solid #ccc
}

.customer_term_wrap .customer_term_text {
	white-space: normal;
	position: relative;
	height: 100%;
	padding-right: 16px;
	line-height: 21px;
	font-size: 12px;
	color: #333
}

.customer_term_wrap .customer_term_text .ps-scrollbar-x-rail {
	display: none !important
}

.customer_h4 {
	font-size: 14px;
	color: #333;
	margin: 34px 0 9px 25px
}

.customer_radio_wrap {
	margin: 13px 0 49px 25px
}

.customer_radio_wrap label {
	font-size: 12px;
	font-weight: normal;
	margin-bottom: 0;
	color: #666
}

.customer_search_wrapper>input[type=text], .customer_search_wrapper>button.search
	{
	height: 29px;
	line-height: 25px
}

p.phone_number {
	position: relative;
	width: 100%;
	height: 50px;
	margin-bottom: 10px;
	overflow: hidden;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_customer.png) 0
		-200px no-repeat
}

p.phone_number .btn_remote {
	position: absolute;
	top: 14px;
	left: 360px;
	width: 120px;
	height: 22px;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/btn_remote.png)
}

.customer_faq_search_wrap {
	width: 100%;
	height: 75px;
	margin-bottom: 10px;
	position: relative;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_customer.png) 0
		-750px no-repeat
}

.customer_faq_search_wrap .customer_faq_search {
	position: absolute;
	top: 18px;
	left: 141px;
	width: 500px;
	height: 40px;
	border: 3px solid #503396;
	background-color: #fff;
	overflow: hidden
}

.customer_faq_search_wrap .customer_faq_search input {
	display: block;
	float: left;
	border: none;
	background-color: #fff;
	width: 463px;
	height: 34px;
	line-height: 34px
}

.customer_faq_search_wrap .customer_faq_search button {
	width: 31px;
	height: 34px;
	float: left;
	padding: 0;
	background-color: #fff;
	background-position: -200px -543px
}

.customer_faq_search_wrap ul.keyword {
	position: absolute;
	top: 30px;
	right: 27px;
	overflow: hidden
}

.customer_faq_search_wrap ul.keyword li {
	height: 15px;
	line-height: 15px;
	padding: 0 20px;
	float: left;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_customer.png)
		right -848px no-repeat
}

.customer_faq_search_wrap ul.keyword li a {
	color: #fff;
	font-size: 13px
}

.customer_faq_search_wrap ul.keyword li:last-child {
	background: none
}

.customer_box {
	width: 317px;
	margin-right: 10px;
	float: left;
	overflow: hidden;
	border-top: 3px solid #8470b5;
	border-bottom: 1px solid #e1e1e1
}

.customer_box ul>a {
	overflow: hidden
}

.customer_box ul li {
	overflow: hidden;
	border-bottom: 1px solid #e1e1e1;
	height: 49px
}

.customer_box ul li strong, .customer_box ul li span, .customer_box ul li em
	{
	display: block;
	float: left;
	height: 100%;
	font-style: normal;
	color: #333;
	font-size: 13px;
	vertical-align: middle;
	overflow: hidden;
	white-space: nowrap;
	-ms-text-overflow: ellipsis;
	text-overflow: ellipsis
}

.customer_box ul li:last-child {
	border: none
}

.customer_box.last {
	width: 316px;
	margin: 0
}

.customer_box.faq {
	position: relative;
	width: 644px;
	background-color: #f2f2f2
}

.customer_box.faq li {
	padding-left: 10px;
	line-height: 49px;
	overflow: visible
}

.customer_box.faq li a {
	display: block;
	overflow: visible;
	height: 49px
}

.customer_box.faq li strong {
	font-size: 18px;
	color: #666;
	width: 33px
}

.customer_box.faq li em {
	width: 116px
}

.customer_box.faq li span {
	width: 437px
}

.customer_box.faq .main_more {
	position: absolute;
	right: 23px;
	top: 25px
}

.customer_box.notice {
	position: relative
}

.customer_box.notice li {
	overflow: visible
}

.customer_box.notice li a {
	display: block;
	overflow: visible;
	width: 100%;
	height: 100%;
	position: relative;
	color: #333
}

.customer_box.notice li a span, .customer_box.notice li a em {
	position: absolute;
	height: auto;
	font-size: 12px
}

.customer_box.notice li a strong {
	display: inline-block;
	margin-right: 4px
}

.customer_box.notice li a em {
	bottom: 25px;
	left: 0;
	color: #666
}

.customer_box.notice li a span {
	bottom: 6px;
	left: 0;
	width: 100%
}

.customer_box.notice .main_more {
	position: absolute;
	right: 23px;
	top: 25px
}

.customer_box>.box_header, .customer_box>.box_body {
	padding: 0 22px 0 24px;
	border-right: 1px solid #e1e1e1;
	border-left: 1px solid #e1e1e1
}

.customer_box>.box_header {
	padding-top: 25px;
	height: 50px;
	overflow: hidden
}

.customer_box>.box_header h4 {
	float: left;
	margin: 0;
	font-size: 18px
}

.customer_box>.box_header button {
	float: right
}

.customer_box>.box_body {
	height: 110px;
	padding-bottom: 20px
}

.customer_box>.box_body p {
	font-size: 13px;
	line-height: 20px;
	color: #333;
	padding-top: 15px;
	margin-bottom: 10px
}

.customer_box_wrap {
	overflow: hidden
}

.customer_box_wrap.main_top {
	margin-bottom: 10px
}

.customer_box_wrap.main_top .box_body {
	height: 260px
}

.customer_box_wrap.main_bottom {
	height: 160px
}

.customer_box_wrap.main_bottom .customer_box {
	height: 160px;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_customer.png) 0 0
		no-repeat
}

.customer_box_wrap.main_bottom .customer_box.box_1 {
	background-position: -350px 0
}

.customer_box_wrap.main_bottom .customer_box.box_2 {
	background-position: -700px 0
}

.board_content_table td, .board_content_table th {
	padding-left: 25px
}

.board_content {
	padding: 25px 25px 40px
}

.board_list .board_prevnext>* {
	background: none
}

.board_list .board_prevnext:hover>* {
	background: #f2f2f2
}

.remote2_container {
	height: 117px;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/remote2.png)
		no-repeat
}

.customer_link_box {
	clear: both;
	overflow: hidden;
	margin-top: 10px
}

.customer_link_box a {
	display: block;
	height: 100px;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_customer2.png)
		no-repeat;
	font-size: 1px;
	line-height: 1px;
	letter-spacing: -999px;
	color: transparent
}

.customer_link_box a.btn_megabox {
	float: left;
	width: 644px;
	background-position: left -845px
}

.customer_link_box a.btn_scrrenNum {
	float: right;
	width: 316px;
	background-position: -654px -845px
}

.title_screennum {
	display: block;
	font-size: 20px;
	height: 20px;
	background-position: left -399px;
	margin: 30px auto 0;
	width: 970px
}

.screennum_d {
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/bg_pt_Scrin.gif);
	border: 1px solid #e1e1e1;
	width: 970px;
	margin: 20px auto 50px;
	padding: 19px
}

.screennum_d ul {
	clear: both;
	height: 450px
}

.screennum_d ul li {
	float: left;
	width: 300px;
	height: 450px;
	border: 1px solid #ccc;
	padding: 29px 19px;
	margin-right: 15px;
	background-color: #fff
}

.screennum_d ul li h4 {
	display: block;
	color: #474747;
	text-decoration: underline;
	font-size: 16px;
	margin-bottom: 30px
}

.screennum_d ul li h4 strong {
	color: #198591;
	text-decoration: underline
}

.screennum_d ul li p {
	display: block;
	margin: 20px 0 10px;
	font-size: 13px
}

.screennum_d ul li p i {
	display: block;
	background-color: #ccc;
	height: 2px;
	width: 30px;
	margin-bottom: 15px
}

.screennum_d ul li p strong {
	display: block
}

.screennum_d ul li.last {
	margin-right: 0
}

.screennum_d ul.li_2 {
	margin-top: 15px;
	height: 253px
}

.screennum_d ul.li_2 li {
	height: 253px
}

.screennum_d ul.li_2 li:first-child {
	width: 615px
}

.privateRentWrap .privateRent {
	display: block;
	float: left;
	width: 80%;
	padding-right: 10px;
	vertical-align: middle
}

.privateRentWrap .privateRent .rvTable {
	width: 100%;
	clear: both;
	overflow: hidden;
	display: table;
	margin: 30px 0
}

.privateRentWrap .privateRent .rvTable .row {
	display: table-row;
	margin: 0;
	padding: 0
}

.privateRentWrap .privateRent .rvTable .row .cell {
	display: table-cell;
	font-size: 1.5rem;
	font-weight: normal;
	padding: 7px 0
}

.privateRentWrap .privateRent .rvTable .row .cell.left {
	width: 18%;
	vertical-align: middle
}

.privateRentWrap .privateRent .rvTable .row .cell.left .titleImg {
	width: 99px;
	height: 22px;
	overflow: hidden;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/customer/private_btn.png);
	background-repeat: no-repeat
}

.privateRentWrap .privateRent .rvTable .row .cell.left .titleImg.num1 {
	background-position: 0 0
}

.privateRentWrap .privateRent .rvTable .row .cell.left .titleImg.num2 {
	background-position: 0 -35px
}

.privateRentWrap .privateRent .rvTable .row .cell.left .titleImg.num3 {
	background-position: 0 -75px
}

.privateRentWrap .privateRent .rvTable .row .cell.left .titleImg.num4 {
	background-position: 0 -115px
}

.privateRentWrap .privateRent .rvTable .row .cell.right {
	width: 82%
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkTime li
	{
	float: left;
	margin-right: 3px
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkTime li .movieTime
	{
	width: 120px;
	height: 45px;
	background-color: #fff;
	display: inline-block;
	overflow: hidden;
	margin: 0;
	padding: 0;
	font-size: 16px;
	line-height: 45px;
	text-align: center;
	font-weight: bold;
	text-decoration: none;
	vertical-align: middle;
	color: #333;
	border: 1px solid #d9d9d9
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkTime li .movieTime.on
	{
	border: 1px solid #59BEC9;
	background-color: #59BEC9;
	color: #fff
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkTime li .movieTime.off
	{
	background-color: #e6e6e6;
	color: #cdcdcd;
	cursor: default;
	line-height: 16px;
	padding-top: 6px
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkTime li .movieTime.off .thLine
	{
	text-decoration: line-through
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkTime li .movieTime.off strong
	{
	color: #bdbdbd;
	font-weight: 500;
	font-size: 14px
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkMovie li
	{
	float: left;
	width: 20%
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkMovie li div
	{
	width: 112px;
	box-sizing: content-box;
	border: 5px solid #fff;
	margin: -5px 0 0 -5px
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkMovie li div img
	{
	width: 112px;
	height: 159px
}

.privateRentWrap .privateRent .rvTable .row .cell.right ul.checkMovie li div.on
	{
	border: 5px solid #59BEC9;
	margin: -5px 0 0 -5px
}

.privateRentWrap .privateRent .rvTable .row .cell.right .btn_calendar {
	width: 45px;
	height: 45px;
	margin: -1px 0 0 -5px;
	background-color: #fff
}

.privateRentWrap .privateRent .rvTable .row .cell.right .btn_calendar .fa
	{
	font-size: 2rem
}

.privateRentWrap .privateRent .rvTable .lineBox, .privateRentWrap .privateRent .rvTable input.lineBox
	{
	height: 45px;
	line-height: 45px;
	font-weight: bold;
	color: #777;
	font-size: 1.6rem;
	text-align: center;
	border: 1px solid #d9d9d9;
	background-color: #fff
}

.privateRentWrap .privateRent .rvAgeInfo {
	width: 100%;
	background-color: #f2f2f2;
	padding: 15px
}

.privateRentWrap .privateRent .rvAgeInfo .icheckbox_minimal {
	vertical-align: middle;
	display: inline-block;
	width: 23px;
	height: 32px;
	margin-top: 3px;
	position: relative;
	float: left
}

.privateRentWrap .privateRent .rvAgeInfo .icheckbox_minimal input {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 16px;
	height: 16px;
	padding: 0;
	margin: 0;
	background: #fff;
	z-index: 0;
	border: 0;
	opacity: 1
}

.privateRentWrap .privateRent .rvAgeInfo .icheckbox_minimal ins {
	background: url(http://image2.megabox.co.kr/mop/home/bg_checkbox.png) 0
		0 no-repeat
}

.privateRentWrap .privateRent .rvAgeInfo .icheckbox_minimal.checked ins
	{
	background-position: -16px 0
}

.privateRentWrap .privateRent .myrvInfo {
	width: 100%;
	background-color: #d9d9d9;
	padding: 15px
}

.privateRentWrap .privateRent .myrvInfo .box_1 {
	width: 50%
}

.privateRentWrap .privateRent .myrvInfo .box_1 div {
	display: inline-block;
	vertical-align: top
}

.privateRentWrap .privateRent .myrvInfo .box_1 div img {
	width: 45px
}

.privateRentWrap .privateRent .myrvInfo .box_1 div.noSelect {
	width: 45px;
	height: 64px;
	background-color: #f1eded;
	border: 1px solid #bdbdbd
}

.privateRentWrap .privateRent .myrvInfo .box_1 ul {
	display: inline-block;
	font-size: 1.3rem;
	margin: 5px 10px 0
}

.privateRentWrap .privateRent .myrvInfo .box_2 {
	border-left: 2px solid #cccccc;
	padding: 5px 0 5px 16px;
	width: 25%;
	height: 100%;
	font-size: 1.5rem
}

.privateRentWrap .privateRent .myrvInfo .box_2 .payment {
	font-size: 2rem;
	margin-top: 5px
}

.privateRentWrap .privateRent .myrvInfo .box_3 {
	width: 145px;
	text-align: right
}

.privateRentWrap .privateRent .myrvInfo .box_3 .privacyBut {
	width: 145px;
	height: 55px;
	margin-top: 5px;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/private_btn.png)
		-120px -119px no-repeat
}

.privateRentWrap .privateRent .operationGuide {
	margin-top: 30px
}

.privateRentWrap .privateRent .operationGuide p {
	color: #333;
	margin-bottom: 3px
}

.privateRentWrap .privateRent .operationGuide li {
	background: url(http://image2.megabox.co.kr/mop/home/dot.png) 0 8px
		no-repeat;
	padding-left: 10px
}

.privateRentWrap .privateRent .pupleText {
	color: #503396;
	font-weight: bold;
	font-size: 1.3rem
}

.privateRentWrap .privateNoRent {
	float: left;
	width: 80%;
	text-align: center
}

.privateRentWrap .privateNoRent .messageBox {
	padding-top: 160px;
	width: 750px;
	height: 500px;
	background-color: #f0f0f0
}

.privateRentWrap .privateNoRent .messageBox p {
	font-size: 16px;
	color: #666;
	margin-top: 10px
}

.privateRentWrap .privateInfo {
	float: left;
	background-color: black;
	background:
		url(http://image2.megabox.co.kr/mop/home/customer/home_booking_right.jpg)
		no-repeat 0 0;
	width: 20%;
	height: 500px;
	overflow: hidden;
	text-indent: -999px
}

.tmain_container {
	position: static !important;
	margin-top: -85px !important
}

.tmain_container .content_wrap {
	position: relative;
	width: 970px;
	margin: 0 auto
}

.tmain_container .h3 {
	overflow: hidden;
	height: 40px;
	font-size: 20px;
	color: #333
}

.tmain_container>.no1 {
	position: relative;
	height: 585px;
	padding: 0;
	background: url(http://image2.megabox.co.kr/mop/home/theater/bg.jpg) 50%
		0 no-repeat;
	background-size: cover;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://image2.megabox.co.kr/mop/home/theater/bg.jpg',
		sizingMethod='scale');
	-ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://image2.megabox.co.kr/mop/home/theater/bg.jpg',
		sizingMethod='scale')
}

.tmain_container>.no1:before {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%
}

.tmain_container>.no1 .special_top_text {
	top: 230px;
	width: 511px;
	height: 176px;
	background: url('http://image2.megabox.co.kr/mop/home/theater/h2.png')
}

.tmain_container .no2 {
	padding: 60px 0 80px
}

.tmain_container .theater_lst .content_wrap {
	border: 1px solid #CCC
}

.tmain_container .no3 .h3 {
	background-position: 0 -50px
}

.tmain_container .no4 .h3 {
	background-position: 0 -100px
}

.tmain_container .no5 {
	padding-top: 80px
}

.go_timetable {
	padding: 40px 0
}

.go_timetable h2 {
	height: 22px;
	border-bottom: 1px solid #DDD;
	text-align: center
}

.go_timetable h2 strong {
	padding: 0 20px;
	font-size: 18px;
	background: #FFF
}

.go_timetable ul {
	padding: 40px 19px
}

.go_timetable li {
	float: left;
	margin: 12px
}

.go_timetable a {
	display: block;
	height: 45px;
	padding: 0 40px 0 15px;
	border: 1px solid #DDD;
	background: #f8f8f8
		url(http://image2.megabox.co.kr/mop/home/special/arrow.png) no-repeat
		88% 50%;
	font-weight: 700;
	font-size: 16px;
	line-height: 43px;
	text-decoration: none !important;
	white-space: nowrap;
	color: #333
}

#theaterpay>div>h4 {
	margin-bottom: 20px;
	padding-left: 0;
	background: none;
	color: #FFF
}

#theaterpay>div>p {
	font-size: 18px;
	color: #FFF
}

#theaterpay>div .icon_list.theater {
	margin: 0 10px 30px
}

#theaterpay>div .icon_list.theater dt {
	font-weight: 400
}

.theater_container .section_main {
	padding: 60px 0
}

.theater_container .section_main.last {
	padding-bottom: 0;
	border: 0
}

.theater_container .section_main .content_wrap {
	background-repeat: no-repeat !important
}

.theater_container .section.theater_main {
	height: 717px;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_main.jpg) 50% 0
		no-repeat;
	background-size: cover !important
}

.theater_container .section.theater_main .content_wrap {
	position: relative
}

.theater_container .section.theater_main .content_wrap .main_slogan {
	position: absolute;
	top: 195px;
	left: 0
}

.theater_container .section.theater_main .content_wrap .main_theater_menu
	{
	position: absolute;
	top: 238px;
	left: 373px;
	width: 587px;
	height: 405px
}

.theater_container .section.theater_main .content_wrap .main_theater_menu>ul
	{
	position: absolute;
	width: 100%;
	z-index: 1
}

.theater_container .section.theater_main .content_wrap span.bg_main_menu
	{
	position: absolute;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: #000;
	filter: alpha(opacity = 50);
	opacity: .5
}

.theater_container .section.theater_main .content_wrap .text_before {
	position: absolute;
	top: 295px;
	color: #fff;
	font-size: 12px
}

.theater_container .section.theater_main .content_wrap .favorite_wrap {
	position: absolute;
	top: 295px;
	overflow: hidden
}

.theater_container .section.theater_main .content_wrap .favorite_wrap button
	{
	display: block;
	float: left;
	background: none;
	padding: 0;
	border: none
}

.theater_container .section.theater_main .content_wrap .favorite_wrap .main_fav_list
	{
	float: left;
	position: relative;
	width: 150px;
	height: 90px
}

.theater_container .section.theater_main .content_wrap .favorite_wrap .main_fav_list ul
	{
	padding: 8px 20px;
	position: absolute;
	z-index: 1
}

.theater_container .section.theater_main .content_wrap .favorite_wrap .main_fav_list ul li
	{
	margin-bottom: 5px
}

.theater_container .section.theater_main .content_wrap .favorite_wrap .main_fav_list ul li a
	{
	font-size: 13px;
	color: #fff;
	text-decoration: none;
	font-weight: 700
}

.theater_container .section.theater_main .content_wrap .favorite_wrap .main_fav_list ul li a:hover,
	.theater_container .section.theater_main .content_wrap .favorite_wrap .main_fav_list ul li a:active
	{
	color: #198591
}

.theater_container .section.theater_main .content_wrap .main_event_list
	{
	position: absolute;
	top: 497px;
	width: 340px
}

.theater_container .section.theater_main .content_wrap .main_event_list dt
	{
	margin-bottom: 8px;
	font-weight: 700;
	color: #fff
}

.theater_container .section.theater_main .content_wrap .main_event_list dd
	{
	width: 100%;
	margin-bottom: 5px
}

.theater_container .section.theater_main .content_wrap .main_event_list dd a
	{
	display: block;
	width: 100%;
	font-size: 13px;
	color: #fff;
	overflow: hidden;
	white-space: nowrap;
	-ms-text-overflow: ellipsis;
	text-overflow: ellipsis
}

.theater_container .section.event_main_banner {
	min-width: 970px
}

.theater_container .section.event_main_banner h2 {
	display: none
}

.theater_container .section.event_main_banner ul {
	overflow: hidden
}

.theater_container .section.event_main_banner ul li {
	float: left;
	width: 25%
}

.theater_container .section.event_main_banner ul li img {
	display: block;
	width: 100%
}

.theater_container .section .content_wrap {
	position: relative;
	width: 970px;
	margin: 0 auto
}

.theater_container .section .content_wrap>h1 {
	margin: 0 0 30px;
	font-size: 18px;
	color: #333
}

.theater_container .section .content_wrap h3 {
	width: 100%;
	height: 34px;
	margin: 0 0 30px 0;
	font-size: 20px;
	overflow: hidden;
	border-bottom: 1px solid #e1e1e1
}

.theater_container .section .content_wrap h3.theater_time {
	background-position: 0 -150px
}

.theater_container .section .content_wrap h3.theater_floor {
	background-position: 0 -200px
}

.theater_container .section .content_wrap h3.theater_map {
	background-position: 0 -250px
}

.theater_container .section .content_wrap h3.theater_pay {
	color: #fff;
	font-size: 20px
}

.theater_container .section .content_wrap h3.theater_pay.special {
	background-position: 0 -975px
}

.theater_container .section .content_wrap h3.theater_event {
	background-position: 0 -350px
}

.theater_container .section .content_wrap h3.curtain_call {
	background-position: 0 -1025px;
	margin: 100px 0 0 0
}

.theater_container .section .content_wrap h4 {
	margin: 0;
	padding-left: 23px;
	font-size: 18px;
	color: #333;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_theater.png) -36px
		-93px no-repeat
}

.theater_container .section .content_wrap h4 span {
	vertical-align: middle;
	font-size: 13px;
	color: #666
}

.theater_container .section .content_wrap h4.small {
	font-size: 13px;
	margin-bottom: 15px;
	background-position: -36px -95px
}

.theater_container .section .content_wrap .curtain_call_table {
	margin-bottom: 100px;
	border: none
}

.theater_container .section .content_wrap .curtain_call_table thead {
	display: none
}

.theater_container .section .content_wrap .curtain_call_table td {
	font-size: 14px;
	font-weight: 700;
	padding: 15px 0
}

.theater_container .section .content_wrap .curtain_call_table td.subject
	{
	text-align: left;
	padding: 15px
}

.theater_container .section .content_wrap .curtain_call_table td button
	{
	height: 32px;
	border: 1px solid #503396;
	width: 80px;
	background-color: #fff;
	color: #503396;
	font-weight: 700
}

.theater_container .section .content_wrap .curtain_call_table td button.soldOut
	{
	border-color: #999;
	color: #777;
	background: #f2f2f2
}

.theater_container .section.no1 {
	position: relative;
	height: 580px;
	background: url(http://image2.megabox.co.kr/mop/home/theater/bg_top.jpg)
		50% 0 no-repeat;
	background-size: cover !important
}

.theater_container .section.no1.theater_fullimg_d:before {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/overlay2.png)
		repeat-x
}

.theater_container .section.no1 .theater_menu {
	position: absolute;
	bottom: 0;
	overflow: hidden;
	width: 100%;
	height: 120px;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_theater_menu.png)
		0 0 repeat-x
}

.theater_container .section.no1 .theater_menu>div>ul {
	position: relative;
	width: 980px;
	margin: 0 auto;
	height: 120px
}

.theater_container .section.no1 .theater_menu>div>ul>li {
	float: left
}

.theater_container .section.no1 .theater_menu>div>ul>li>a {
	position: relative;
	padding-right: 40px;
	font-weight: normal;
	text-decoration: none
}

.theater_container .section.no1 .theater_menu>div>ul>li>a.active,
	.theater_container .section.no1 .theater_menu>div>ul>li>a:hover {
	color: #59BEC9
}

.theater_container .section.no1 .theater_menu>div>ul>li>ul {
	display: none;
	position: absolute;
	width: auto;
	left: 0;
	bottom: 0;
	height: 60px
}

.theater_container .section.no1 .theater_menu>div>ul>li>ul.active {
	display: block
}

.theater_container .section.no1 .theater_menu>div>ul>li>ul>li {
	float: left
}

.theater_container .section.no1 .theater_menu>div>ul>li>ul>li>a {
	position: relative;
	padding-right: 23px;
	text-decoration: none
}

.theater_container .section.no1 .theater_menu>div>ul>li>ul>li>a.active,
	.theater_container .section.no1 .theater_menu>div>ul>li>ul>li>a:hover {
	font-weight: bold;
	color: #59BEC9
}

.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_1 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_2 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_3 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_4 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_5 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_6 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_7 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_8 ul,
	.theater_container .section.no1 .theater_menu>div>ul>li.depth2_mn ul {
	padding: 10px 0
}

.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_1 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_2 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_3 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_4 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_5 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_6 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_7 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_8 ul li,
	.theater_container .section.no1 .theater_menu>div>ul>li.depth2_mn ul li
	{
	padding-bottom: 10px
}

.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_1 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_2 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_3 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_4 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_5 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_6 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_7 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.the_mn_8 ul li a,
	.theater_container .section.no1 .theater_menu>div>ul>li.depth2_mn ul li a
	{
	height: 15px;
	line-height: 14px
}

.theater_container .section.no1 .theater_menu.special a {
	position: static !important
}

.theater_container .section.no1 .content_wrap {
	position: relative
}

.theater_container .section.no1 .content_wrap p {
	display: block;
	position: absolute;
	left: 0
}

.theater_container .section.no1 .content_wrap .top_btn1 {
	width: 148px;
	height: 30px;
	margin-right: 10px
}

.theater_container .section.no1 .content_wrap .top_btn2 {
	width: 148px;
	height: 30px;
	background-position: -150px 0
}

.theater_container .section.no1 .content_wrap p.theater_ti_box,
	.theater_container .section.no1 .content_wrap p.theater_tx_box {
	background:
		url(http://image2.megabox.co.kr/mop/home/special/bg_theater_tx.png);
	padding: 5px
}

.theater_container .section.no1 .content_wrap p.theater_ti_box {
	top: 106px
}

.theater_container .section.no1 .content_wrap p.theater_ti_box img {
	display: block
}

.theater_container .section.no1 .content_wrap p.theater_ti_box img:first-child
	{
	margin-bottom: 10px
}

.theater_container .section.no1 .content_wrap p.theater_btn_box {
	top: 198px;
	overflow: hidden
}

.theater_container .section.no1 .content_wrap p.theater_btn_box button {
	float: left;
	font-weight: bold;
	font-size: 14px;
	color: #503396;
	border: 1px solid #fff;
	background-color: rgba(255, 255, 255, 0.7)
}

.theater_container .section.no1 .content_wrap p.theater_tx_box {
	max-height: 90px;
	overflow: hidden;
	top: 293px;
	font-size: 14px;
	line-height: 26px;
	color: #fff
}

.theater_container .section.no2 {
	padding-top: 112px;
	margin-bottom: 95px
}

.theater_container .section.no3 {
	margin-bottom: 100px
}

.theater_container .section.no4 {
	margin-bottom: 95px
}

.theater_container .section.no5 {
	padding-bottom: 95px;
	padding-top: 80px;
	background-color: #333
}

.theater_container .section.no5 .content_wrap h3 {
	border-color: #666;
	margin-bottom: 30px
}

.theater_container .section.no6 {
	padding-top: 100px
}

.theater_container .section .map_wrap {
	margin-bottom: 20px;
	border: 1px solid #ccc;
	overflow: hidden
}

.theater_container .section .map_wrap img {
	display: block;
	width: 100%;
	height: 100%
}

.theater_container .section .map_wrap2 {
	position: relative;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	overflow: hidden
}

.theater_container .section .map_wrap2 a {
	display: block;
	height: 298px;
	background-position: center center
}

.movie_time_header {
	text-align: center;
	height: 47px
}

.movie_time_header .ex_rating {
	display: block;
	float: right;
	margin-right: 30px;
	margin-top: 18px;
	font-size: 13px;
	color: #333;
	letter-spacing: -1px
}

.movie_time_header .ex_rating i {
	color: #999;
	margin-right: 3px
}

.movie_time_header .img_btn.cal {
	width: 25px;
	height: 27px;
	margin: 2px 0 0 4px;
	background-position: -400px 0
}

.movie_time_header .img_btn.date_prev {
	display: inline-block;
	width: 33px;
	height: 33px;
	background-position: -300px 0;
	margin-right: 20px
}

.movie_time_header .img_btn.date_next {
	display: inline-block;
	width: 33px;
	height: 33px;
	background-position: -350px 0;
	margin-left: 20px
}

.movie_time_header .calendar {
	position: relative;
	width: 330px;
	float: left;
	text-align: center
}

.movie_time_header .calendar .date_wrap {
	position: absolute;
	top: -5px;
	left: 47px
}

.movie_time_header .calendar span, .movie_time_header .calendar button {
	vertical-align: middle
}

.movie_time_header .calendar .date {
	font-size: 30px;
	font-weight: 700
}

.movie_time_header .calendar .date>span {
	color: #666;
	vertical-align: top
}

.movie_time_header .calendar .calendar_btn_wrap {
	position: relative;
	float: left
}

.movie_time_header .calendar .calendar_btn_wrap .datepicker {
	top: 35px !important;
	left: 0 !important
}

.movie_time_header span.mark {
	display: block;
	float: right;
	margin: 19px 8px 0 0;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/icon_theater.png)
		no-repeat;
	width: 453px;
	height: 16px
}

.movie_time_table {
	clear: both;
	border-collapse: collapse;
	table-layout: fixed;
	padding: 0;
	border-spacing: 0;
	border-top: 1px solid #e5e5e5
}

.movie_time_table span {
	display: block
}

.movie_time_table th {
	padding: 19px 0 0 0;
	width: 330px;
	background-color: #f2f2f2;
	border-bottom: 1px solid #e5e5e5;
	vertical-align: top
}

.movie_time_table th strong.title {
	display: block;
	float: left;
	width: 170px;
	font-size: 14px
}

.movie_time_table th span {
	float: left
}

.movie_time_table th span.age {
	width: 20px;
	margin: 1px 6px 0 14px
}

.movie_time_table th span.cinema {
	position: absolute;
	width: 120px;
	font-size: 14px;
	text-align: right;
	margin-left: 210px;
	padding-right: 15px
}

.movie_time_table td {
	width: 640px;
	padding: 0;
	border-bottom: 1px solid #e5e5e5
}

.movie_time_table td .cinema_time {
	float: left;
	width: 128px;
	height: 60px;
	position: relative;
	cursor: pointer
}

.movie_time_table td .cinema_time .time_info {
	height: 100%;
	text-align: center
}

.movie_time_table td .cinema_time .time_info>span {
	display: block;
	position: absolute;
	width: 100%
}

.movie_time_table td .cinema_time .time_info .offsale {
	top: 4px;
	margin-left: 12px;
	font-size: 11px
}

.movie_time_table td .cinema_time .time_info .time {
	top: 14px;
	font-size: 18px
}

.movie_time_table td .cinema_time .time_info .seat {
	top: 36px;
	font-size: 11px;
	color: #503396
}

.movie_time_table td .cinema_time .time_info .event {
	width: 11px;
	height: 11px;
	overflow: hidden;
	text-indent: -9999px;
	background-color: #999
}

.movie_time_table td .cinema_time .time_info .event.event02 {
	background-color: #ff0000
}

.movie_time_table td .cinema_time .time_info .event.event01 {
	background-color: #00cc00
}

.movie_time_table td .cinema_time .time_info .event.event14 {
	background-color: #00b7ee
}

.movie_time_table td .cinema_time .time_info .event.event11 {
	background-color: #ff00ff
}

.movie_time_table td .cinema_time .time_info .event.event10 {
	background-color: #673ab7
}

.movie_time_table td .cinema_time .time_info .event.event19 {
	background-color: #f7941d
}

.movie_time_table td .cinema_time .time_info .event.event20 {
	background-color: #37a452
}

.movie_time_table td .cinema_time .time_info .event.no1 {
	top: 38px;
	left: 90px
}

.movie_time_table td .cinema_time .time_info .event.no2 {
	top: 38px;
	left: 102px
}

.movie_time_table td .cinema_time .time_info .event.no3 {
	top: 38px;
	left: 114px
}

.movie_time_table td .cinema_time .time_info .ico_box {
	display: block;
	position: absolute;
	top: 35px;
	left: 92px
}

.movie_time_table td .cinema_time .time_info .ico_box span {
	display: inline-block;
	*display: inline;
	zoom: 1;
	margin: 0 -1px 0 -2px
}

.movie_time_table td .cinema_time .hover_time {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
	font-size: 18px;
	line-height: 60px;
	background-color: #351F66;
	color: #59BEC9;
	z-index: 1
}

.movie_time_table td .cinema_time .theater_hv_pop {
	display: none;
	position: absolute;
	top: 5px;
	left: 135px;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px 10px 5px;
	width: 100px;
	background-color: #f2f2f2;
	z-index: 9
}

.movie_time_table td .cinema_time .theater_hv_pop span {
	display: block;
	color: #333;
	font-size: 11px;
	line-height: 11px;
	margin-bottom: 5px;
	vertical-align: top
}

.movie_time_table td .cinema_time .theater_hv_pop span i {
	display: inline-block;
	*display: inline;
	zoom: 1;
	width: 11px;
	height: 11px;
	margin-right: 5px;
	background-color: #999;
	float: left
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_02 {
	background-color: #ff0000
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_01 {
	background-color: #00cc00
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_14 {
	background-color: #00b7ee
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_11 {
	background-color: #ff00ff
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_10 {
	background-color: #601986
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_19 {
	background-color: #f7941d
}

.movie_time_table td .cinema_time .theater_hv_pop span i.ico_20 {
	background-color: #37a452
}

.movie_time_table td .cinema_time .theater_hv_pop strong {
	position: absolute;
	left: -6px;
	top: 11px;
	display: block;
	width: 6px;
	height: 10px;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/ico_theater_ar.png) 0
		0 no-repeat
}

.movie_time_table td .cinema_time.done * {
	color: #666 !important;
	cursor: default
}

.movie_time_table td .cinema_time:hover .theater_hv_pop {
	display: block
}

.movie_time_table tr.li_2 th {
	padding: 19px 0
}

.movie_time_table tr.li_2 .cinema_time {
	height: 79px
}

.movie_time_table tr.li_2 .cinema_time .time_info .time {
	top: 20px
}

.movie_time_table tr.li_2 .cinema_time .time_info .seat {
	top: 44px
}

.movie_time_table tr.li_2 td .cinema_time .hover_time {
	line-height: 80px
}

.movie_time_notice {
	margin: 19px 0 0 15px;
	font-size: 12px;
	line-height: 22px;
	color: #666
}

.pop_rating {
	position: relative;
	display: inline-block;
	*display: inline;
	zoom: 1;
	background-color: #fff;
	margin: 0 auto;
	webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
	-moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
	margin-top: 215px
}

.pop_rating h5 {
	border-bottom: 1px solid #e5e5e5;
	font-size: 18px;
	color: #333;
	height: 40px;
	line-height: 40px
}

.pop_rating .btn_ca_close {
	width: 17px;
	height: 17px;
	position: absolute;
	top: 12px;
	right: 16px;
	background-position: -510px -460px
}

.pop_rating .pop_con {
	padding: 30px 28px
}

.pop_rating .pop_con table caption {
	visibility: hidden;
	overflow: hidden;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	color: transparent
}

.pop_rating .pop_con table th, .pop_rating .pop_con table td {
	border-right: 1px solid #dcdcdc;
	border-bottom: 1px solid #dcdcdc;
	font-size: 13px;
	line-height: 18px;
	padding: 10px 20px
}

.pop_rating .pop_con table th.last, .pop_rating .pop_con table td.last {
	border-right: 0
}

.pop_rating .pop_con table thead th {
	color: #666
}

.pop_rating .pop_con table tbody th, .pop_rating .pop_con table tbody td
	{
	color: #333
}

.pop_rating .pop_con table.st_1 {
	border-top: 2px solid #503396;
	border-bottom: 2px solid #dcdcdc
}

.pop_rating .pop_con table.st_1 thead th {
	background-color: #f2f2f2;
	text-align: center
}

.pop_rating .pop_con table.st_1 tbody th, .pop_rating .pop_con table.st_1 tbody td
	{
	text-align: left
}

.pop_rating .pop_con table.st_1 tbody th i {
	margin-left: 0
}

.floor {
	height: 40px;
	padding: 1px 20px;
	border: 1px solid #e5e5e5;
	border-left-width: 5px;
	overflow: hidden
}

.floor strong {
	float: left;
	width: 100px;
	display: block;
	font-size: 24px;
	height: 100%;
	line-height: 38px
}

.floor p {
	font-size: 13px;
	float: left;
	height: 100%;
	line-height: 38px;
	font-weight: 700
}

.traffic {
	padding-left: 167px;
	background-repeat: no-repeat
}

.traffic.bus {
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/theater/bg_traffic_bus.png)
		28px 50% no-repeat
}

.traffic.metro {
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/theater/bg_traffic_metro.png)
		28px 50% no-repeat
}

.traffic>div {
	border: 1px solid #e1e1e1
}

.traffic>div>ul {
	padding: 6px 0 6px 60px;
	border: 6px solid #f2f2f2
}

.traffic li {
	font-size: 13px;
	line-height: 24px
}

.traffic li.bus1 i {
	color: #e1261d
}

.traffic li.bus2 i {
	color: #ffc72a
}

.traffic li.bus3 i {
	color: #aa9868
}

.traffic li.bus4 i {
	color: #76226d
}

.traffic li.bus5 i {
	color: #4494d1
}

.traffic li.bus6 i {
	color: #56869d
}

.traffic li.bus7 i {
	color: #026c79
}

.traffic li.bus8 i {
	color: #b81b22
}

.traffic li.bus9 i {
	color: #b60571
}

.traffic li.bus10 i {
	color: #8e93bb
}

.traffic li.bus11 i {
	color: #a4604b
}

.traffic li.bus12 i {
	color: #5c8342
}

.traffic li.bus13 i {
	color: #a674a5
}

.traffic li.bus14 i {
	color: #abc937
}

.traffic li.bus15 i {
	color: #c0c77a
}

.traffic li.bus16 i {
	color: #cf7d2b
}

.traffic li.bus17 i {
	color: #179f5d
}

.traffic li.bus18 i {
	color: #63c8f2
}

.traffic li.bus19 i {
	color: #f28e1e
}

.traffic li.bus20 i {
	color: #3fa1be
}

.traffic li.metro1 i {
	color: #003595
}

.traffic li.metro2 i {
	color: #3eaf2c
}

.traffic li.metro3 i {
	color: #ff6e37
}

.traffic li.metro4 i {
	color: #0071cc
}

.traffic li.metro5 i {
	color: #8940b5
}

.traffic li.metro6 i {
	color: #9a4e1a
}

.traffic li.metro7 i {
	color: #5f6c12
}

.traffic li.metro8 i {
	color: #e52570
}

.traffic li.metro9 i {
	color: #be9e2d
}

.traffic li.metro10 i {
	color: #e4ad36
}

.traffic li.metro11 i {
	color: #2fa87f
}

.traffic li.metro12 i {
	color: #3cc5a7
}

.traffic li.metro13 i {
	color: #6fb7b6
}

.traffic li.metro14 i {
	color: #ff9531
}

.traffic li.metro15 i {
	color: #fcc918
}

.traffic li.metro16 i {
	color: #a70830
}

.traffic li.metro17 i {
	color: #73b8e2
}

.traffic li.metro18 i {
	color: #6891c5
}

.traffic li.metro19 i {
	color: #83cd7e
}

.traffic li.metro20 i {
	color: #a675a4
}

.table_dark {
	width: 100%;
	border-collapse: collapse;
	table-layout: fixed;
	border-top: 2px solid #59BEC9;
	margin-bottom: 30px
}

.table_dark th, .table_dark td {
	border: 1px solid #666;
	text-align: center;
	vertical-align: middle;
	height: 42px;
	color: #ccc;
	font-size: 13px
}

.table_dark th.first, .table_dark td.first {
	border-left: none
}

.table_dark th.last, .table_dark td.last {
	border-right: none
}

.table_dark th {
	background-color: #6d6d6d;
	color: #fff
}

.main_theater_menu>ul>li>a {
	margin-left: 50px
}

.main_theater_menu a {
	display: block;
	height: 54px;
	text-indent: -9999px;
	overflow: hidden;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/btn_main_theater.png)
		0 0 no-repeat;
	cursor: pointer
}

.main_theater_menu a.menu01 {
	width: 32px;
	background-position: 0 -50px
}

.main_theater_menu a.menu01.active, .main_theater_menu a.menu01:hover {
	background-position: 0 0
}

.main_theater_menu a.menu02 {
	width: 69px;
	background-position: -150px -50px
}

.main_theater_menu a.menu02.active, .main_theater_menu a.menu02:hover {
	background-position: -150px 0
}

.main_theater_menu a.menu03 {
	width: 108px;
	background-position: -300px -50px
}

.main_theater_menu a.menu03.active, .main_theater_menu a.menu03:hover {
	background-position: -300px 0
}

.main_theater_menu a.menu04 {
	width: 72px;
	background-position: -450px -50px
}

.main_theater_menu a.menu04.active, .main_theater_menu a.menu04:hover {
	background-position: -450px 0
}

.main_theater_menu a.menu05 {
	width: 71px;
	background-position: -600px -50px
}

.main_theater_menu a.menu05.active, .main_theater_menu a.menu05:hover {
	background-position: -600px 0
}

.main_theater_menu a.menu06 {
	width: 71px;
	background-position: -750px -50px
}

.main_theater_menu a.menu06.active, .main_theater_menu a.menu06:hover {
	background-position: -750px 0
}

.main_theater_menu a.menu07 {
	background-position: -900px -50px
}

.main_theater_menu a.menu07.active, .main_theater_menu a.menu07:hover {
	background-position: -900px 0
}

.main_theater_menu .depth2 {
	display: none;
	height: 80px;
	padding: 11px 0 0 50px;
	overflow: hidden;
	background:
		url(http://image2.megabox.co.kr/mop/home/theater/bg_main_theater_menu.png)
		0 0 repeat
}

.main_theater_menu .depth2.active {
	display: block
}

.main_theater_menu .depth2 li {
	height: 27px;
	margin-right: 25px;
	float: left
}

.theater_menu a {
	display: block;
	height: 60px;
	overflow: hidden;
	cursor: pointer;
	font-size: 14px;
	line-height: 60px;
	color: #fff
}

.theater_menu a.menu01 {
	background-position: -42px -400px
}

.theater_menu a.menu01.active, .theater_menu a.menu01:hover {
	background-position: -42px -500px
}

.theater_menu a.menu02 {
	background-position: -177px -400px
}

.theater_menu a.menu02.active, .theater_menu a.menu02:hover {
	background-position: -177px -500px
}

.theater_menu a.menu03 {
	background-position: -312px -400px
}

.theater_menu a.menu03.active, .theater_menu a.menu03:hover {
	background-position: -312px -500px
}

.theater_menu a.menu04 {
	background-position: -477px -400px
}

.theater_menu a.menu04.active, .theater_menu a.menu04:hover {
	background-position: -477px -500px
}

.theater_menu a.menu05 {
	background-position: -626px -400px
}

.theater_menu a.menu05.active, .theater_menu a.menu05:hover {
	background-position: -626px -500px
}

.theater_menu a.menu06 {
	background-position: -792px -400px
}

.theater_menu a.menu06.active, .theater_menu a.menu06:hover {
	background-position: -792px -500px
}

.theater_menu a.menu07 {
	background-position: -941px -400px
}

.theater_menu a.menu07.active, .theater_menu a.menu07:hover {
	background-position: -941px -500px
}

.theater_menu.special>div>ul {
	width: 960px !important;
	padding-left: 0 !important
}

.theater_menu.special>div>ul>li {
	width: auto !important
}

.theater_menu.special>div>ul>li>a {
	padding-right: 16px !important
}

.theater_menu.special>div>ul>li>ul {
	left: 0 !important
}

.theater_menu.special>div>ul>li:last-child>a {
	padding-right: 0 !important
}

.theater_menu.special .depth2 li {
	margin-right: 20px
}

.theater_menu.special .theater_menu_intro {
	width: auto !important;
	margin-right: 18px
}

.theater_menu.special .theater_menu_intro a {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/special/bg_menu2.png)
}

.theater_menu.special .theater_menu_intro a.m2 {
	width: 60px;
	background-position: 0 -200px
}

.theater_menu.special .theater_menu_intro a.m2:hover, .theater_menu.special .theater_menu_intro a.m2:active,
	.theater_menu.special .theater_menu_intro a.m2.active {
	background-position: 0 -260px
}

.theater_menu.special .theater_menu_intro a.m {
	width: 51px;
	background-position: 0 -320px
}

.theater_menu.special .theater_menu_intro a.m:hover, .theater_menu.special .theater_menu_intro a.m:active,
	.theater_menu.special .theater_menu_intro a.m.active {
	background-position: 0 -380px
}

.theater_menu.special .theater_menu_intro a.table {
	width: 90px;
	background-position: 0 -440px
}

.theater_menu.special .theater_menu_intro a.table:hover, .theater_menu.special .theater_menu_intro a.table:active,
	.theater_menu.special .theater_menu_intro a.table.active {
	background-position: 0 -500px
}

.theater_menu.special .theater_menu_intro a.coex {
	width: 157px;
	background-position: 0 -560px
}

.theater_menu.special .theater_menu_intro a.coex:hover, .theater_menu.special .theater_menu_intro a.coex:active,
	.theater_menu.special .theater_menu_intro a.coex.active {
	background-position: 0 -620px
}

.theater_menu.special .theater_menu_intro a.first {
	width: 144px;
	background-position: 0 -680px
}

.theater_menu.special .theater_menu_intro a.first:hover, .theater_menu.special .theater_menu_intro a.first:active,
	.theater_menu.special .theater_menu_intro a.first.active {
	background-position: 0 -740px
}

.theater_menu.special .theater_menu_intro a.kids {
	width: 146px;
	background-position: 0 -800px
}

.theater_menu.special .theater_menu_intro a.kids:hover, .theater_menu.special .theater_menu_intro a.kids:active,
	.theater_menu.special .theater_menu_intro a.kids.active {
	background-position: 0 -860px
}

.theater_menu.special .theater_menu_intro a.open {
	width: 95px;
	background-position: 0 -920px
}

.theater_menu.special .theater_menu_intro a.open:hover, .theater_menu.special .theater_menu_intro a.open:active,
	.theater_menu.special .theater_menu_intro a.open.active {
	background-position: 0 -980px
}

.theater_container .section.no1 .special_top_text {
	position: absolute;
	top: 151px
}

.theater_container .section.no1 .special_top_text h2 {
	margin-bottom: 3px;
	font-size: 36px;
	color: #fff
}

.theater_container .section.no1 .special_top_text h2 img {
	vertical-align: top
}

.theater_container .section.no1 .special_top_text p {
	position: static;
	color: #fff;
	line-height: 20px
}

.theater_container .section.no1 .special_top_text p.txt_big {
	padding-bottom: 25px;
	margin-bottom: 21px;
	font-size: 28px;
	line-height: 34px;
	background:
		url(http://image2.megabox.co.kr/mop/home/special/bg_topline.gif) 0
		bottom no-repeat
}

.theater_container .section.boutique_m .special_top_text {
	top: 150px
}

.theater_container .section.boutique_m .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 63px
}

.theater_container .section.drive_m .special_top_text {
	top: 98px
}

.theater_container .section.drive_m .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 115px
}

.theater_container .section.open_m .special_top_text {
	top: 112px
}

.theater_container .section.open_m .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 101px
}

.theater_container .section.balcony_m .special_top_text {
	top: 154px
}

.theater_container .section.m2 .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 140px;
	margin-left: -12px
}

.theater_container .section.m .special_top_text {
	top: 184px
}

.theater_container .section.m .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 29px
}

.theater_container .section.m .special_top_text {
	top: 184px
}

.theater_container .section.m .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 29px
}

.theater_container .section.mega_kids_box .special_top_text {
	top: 154px
}

.theater_container .section.mega_kids_box .special_top_text h2 {
	display: block;
	margin-bottom: 15px;
	height: 31px
}

.section.special_comment {
	background-color: #eee
}

.section.special_comment .content_wrap {
	padding: 30px 0
}

.section.special_comment .content_wrap h2 {
	margin: 0 10px 20px;
	font-size: 36px;
	color: #333
}

.section.special_comment .content_wrap p {
	margin: 0 10px;
	font-size: 13px;
	line-height: 18px
}

.special_main_banner {
	margin-top: 30px;
	overflow: hidden
}

.special_main_banner h2 {
	font-size: 36px;
	color: #999;
	margin-bottom: 13px;
	margin-left: 9px
}

.special_main_banner li {
	float: left;
	margin-left: 5px
}

.special_main_banner li:first-child {
	margin-left: 0
}

.special_main_banner li .wrap {
	position: relative;
	width: 320px;
	height: 590px;
	border: 1px solid #ccc
}

.special_main_banner li .wrap>img {
	display: block;
	border-bottom: 1px solid #ccc
}

.special_main_banner li .wrap>dl {
	padding: 30px
}

.special_main_banner li .wrap>dl dt {
	height: 62px;
	font-weight: 700;
	font-size: 24px;
	line-height: 28px;
	color: #222561
}

.special_main_banner li .wrap>dl dd {
	font-size: 13px;
	line-height: 18px;
	color: #333
}

.special_main_banner li .wrap>dl dd.eng {
	margin-bottom: 9px;
	color: #666;
	font-size: 13px
}

.special_main_banner li .wrap button {
	position: absolute;
	bottom: 28px;
	left: 32px;
	background: none;
	padding: 0;
	border: none
}

.special_main2 {
	padding: 110px 0 60px !important;
	background: url(http://image2.megabox.co.kr/mop/home/special/bg.png)
		repeat-x;
	font-size: 13px
}

.special_main2 h2 {
	font-size: 36px;
	color: #999;
	margin-bottom: 30px
}

.special_main2 .bx {
	padding: 30px
}

.special_main2 .quot {
	margin-bottom: 30px;
	font-weight: 700;
	font-size: 28px;
	color: #22245f
}

.modal-footer.theater_main {
	text-align: center
}

.modal-footer.theater_main button {
	display: inline-block
}

#special_detail .wrapper {
	width: 968px;
	margin: 0 auto;
	padding: 90px 0 55px 0
}

#special_detail .wrapper .contents {
	padding: 65px 40px;
	width: 100%;
	background-color: #fff;
	position: relative;
	font-size: 13px
}

#special_detail .wrapper .icon_list {
	margin-bottom: 20px;
	font-weight: 700
}

#special_detail .wrapper .popup_box {
	overflow: visible
}

#special_detail .wrapper h1 {
	position: relative;
	padding-bottom: 20px;
	border-bottom: 1px solid #e5e5e5;
	font-size: 30px;
	line-height: 1;
	color: #000
}

#special_detail .wrapper h1 img {
	position: absolute;
	bottom: 20px;
	right: 0
}

#special_detail .wrapper h2 {
	padding: 60px 0 30px;
	font-size: 18px;
	line-height: 1;
	color: #333
}

.parking>ul>li {
	background: none;
	font-size: 13px
}

.parking>ul>li>strong {
	display: block;
	margin-top: 10px;
	color: #333
}

.boutiqueRent {
	display: inline-block
}

.boutiqueRent>.brbut {
	font-size: 15px;
	padding: 0 1.5rem;
	margin: 0 1.2rem;
	display: inline-block;
	height: 38px;
	line-height: 36px;
	background-image: none;
	border: 1px solid #503396 !important;
	color: #503396;
	background-color: #fff
}

.priRent {
	display: inline-block;
	margin-left: 85px
}

.priRent>.brbut {
	font-size: 15px;
	padding: 0 1.5rem;
	margin: 0 1.2rem;
	display: inline-block;
	height: 38px;
	line-height: 36px;
	background-image: none;
	background-color: #503396;
	color: #fff;
	border: 1px solid #503396 !important
}

.specialcontents_container {
	position: static !important;
	margin-top: -85px !important
}

.specialcontents_container .content_wrap {
	position: relative;
	width: 970px;
	margin: 0 auto
}

.specialcontents_container .content_wrap .special_top_text {
	padding: 5px
}

.specialcontents_container p.txt_big {
	font-weight: 700;
	font-size: 18px;
	color: #cdc2b4
}

.specialcontents_container .h3 {
	height: 34px;
	margin: 0 0 50px;
	text-indent: -9999px;
	overflow: hidden;
	background:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/h3.png)
		no-repeat
}

.specialcontents_container h4 {
	margin: 0 0 15px;
	padding: 0 0 0 27px;
	background: url(http://image2.megabox.co.kr/mop/home/dot.png) 17px 9px
		no-repeat;
	font-weight: 700;
	font-size: 18px;
	color: #333
}

.specialcontents_container .category_wrp {
	padding: 10px 0 20px
}

.specialcontents_container .category_wrp .split {
	display: inline-block;
	height: 12px;
	margin: 0 12px;
	border-left: 1px solid #DDD
}

.specialcontents_container .category_wrp a {
	font-weight: 700;
	font-size: 13px;
	color: #666;
	-webkit-text-stroke: .2px
}

.specialcontents_container .category_wrp .on {
	color: #503396
}

.specialcontents_container>.no1 {
	position: relative;
	height: 585px;
	background:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/society_back.jpg)
		50% 0 no-repeat;
	background-size: cover
}

.specialcontents_container>.no1 .icon.more {
	display: none;
	height: 36px;
	margin-left: 8px;
	background:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/btn_more.png)
}

.specialcontents_container>.no1 .sub_menu {
	position: absolute;
	bottom: 0;
	overflow: hidden;
	width: 100%;
	background:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/sub_menu_bg.png)
		repeat-x
}

.specialcontents_container>.no1 .sub_menu>div>ul {
	position: relative;
	width: 970px;
	height: 106px;
	margin: 0 auto
}

.specialcontents_container>.no1 .sub_menu>div>ul>li {
	float: left
}

.specialcontents_container>.no1 .sub_menu>div>ul>li>ul {
	display: none;
	position: absolute;
	width: auto;
	left: 0;
	bottom: 0;
	height: 53px
}

.specialcontents_container>.no1 .sub_menu>div>ul>li>ul.active {
	display: block
}

.specialcontents_container>.no1 .sub_menu>div>ul>li>ul>li {
	float: left
}

.specialcontents_container>.no1 .sub_menu a {
	display: block;
	height: 60px;
	padding-right: 39px;
	font-size: 14px;
	color: #fff;
	line-height: 60px;
	text-decoration: none;
	vertical-align: middle
}

.specialcontents_container>.no1 .sub_menu .mn_0 {
	position: relative
}

.specialcontents_container>.no1 .sub_menu .mn_0:before {
	content: "";
	display: block;
	position: absolute;
	top: 24px;
	right: 0;
	height: 14px;
	width: 1px;
	margin-right: 18px;
	background: #CCC
}

.specialcontents_container>.no1 .sub_menu a:hover,
	.specialcontents_container>.no1 .sub_menu a:focus,
	.specialcontents_container>.no1 .sub_menu a.active {
	color: #59BEC9
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul {
	height: 190px
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li {
	position: relative;
	width: 210px;
	margin-left: -20px
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li .mn_0 {
	margin-left: 0
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li .mn_0:before
	{
	display: none
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li>a:hover,
	.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li a:focus,
	.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li a.active {
	color: #59BEC9
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li>ul {
	display: block;
	top: 60px;
	left: 0;
	bottom: auto
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li>ul>li {
	overflow: hidden;
	float: none;
	height: 22px
}

.specialcontents_container>.no1 .sub_menu.all_open>div>ul>li>ul a {
	margin-top: -15px
}

.specialcontents_container>.full-width {
	margin: 50px auto
}

.specialcontents_container #flip_wrapper ul {
	margin-bottom: 80px
}

.specialcontents_container #flip_wrapper li.item .movie_info .btn_wrap {
	margin-top: 10px
}

.specialcontents_container #flip_wrapper li.item .front-info .movie_info h3
	{
	position: relative;
	height: 36px;
	margin: 12px 0 0;
	padding-left: 30px;
	font-size: 14px;
	line-height: 16px;
	white-space: normal
}

.specialcontents_container #flip_wrapper li.item .front-info .movie_info h3 .film_rate
	{
	position: absolute;
	top: 6px;
	left: 0
}

.specialcontents_container .ribbon {
	position: absolute;
	top: 10px;
	left: -1px;
	height: 49px;
	padding: 8px 10px;
	font-weight: 700;
	font-size: 13px;
	line-height: 15px;
	color: #FFF;
	background:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/ribbon_purple.png)
		100% 0
}

.specialcontents_container .ribbon.emerald {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/ribbon_emerald.png)
}

.specialcontents_container #flip_wrapper li.item .finish_notice {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100px;
	background:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/finish_notice.png);
	font-weight: 700;
	font-size: 18px;
	line-height: 100px;
	text-align: center;
	color: #FFF
}

.specialcontents_container #flip_wrapper .allright_list .item .img_box {
	width: 100%;
	height: 336px;
	position: relative
}

.specialcontents_container #flip_wrapper .allright_list .item .img_box>div
	{
	left: 0;
	top: 0
}

.specialcontents_container #flip_wrapper .allright_list .item .img_box .upper
	{
	width: 100%;
	position: absolute;
	border-bottom: 1px solid #e5e5e5
}

.specialcontents_container #flip_wrapper .allright_list .item .img_box .upper img
	{
	width: 100%;
	height: 336px;
	display: block;
	z-index: -1
}

.specialcontents_container #flip_wrapper .allright_list .item .tx_num {
	padding: 25px 20px !important
}

.specialcontents_container #flip_wrapper .allright_list .item .tx_num p
	{
	border-bottom: 1px dashed #ccc;
	padding-bottom: 20px
}

.specialcontents_container #flip_wrapper .allright_list .item .tx_num h3
	{
	padding: 13px 0 0 !important;
	font-size: 18px !important
}

.specialcontents_container.plan_cinema {
	margin-bottom: 0
}

.specialcontents_container.plan_cinema>.no1 {
	background-image:
		url('http://image2.megabox.co.kr/mop/home/specialcontents/2017cinemareplay/replay_top.jpg');
	background-position: 50% 0
}

.specialcontents_container.plan_cinema>.no1 .icon.more {
	width: 219px;
	background-position: 0 -100px
}

.specialcontents_container.plan_cinema>.no1.cinemaReplay {
	background-image:
		url('http://image2.megabox.co.kr/mop/home/specialcontents/2017cinemareplay/replay_top_2017.jpg');
	background-position: 50% 0
}

.specialcontents_container.plan_cinema .h3 {
	background-position: 0 -500px
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list
	{
	overflow: hidden
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li
	{
	position: relative;
	float: left;
	width: 170px;
	height: 207px;
	padding: 10px;
	margin: 0 30px 30px 0;
	background:
		url(http://image3.megabox.co.kr/mop/home/specialcontents/replay/cinema_thumb_bg.gif)
		no-repeat;
	text-align: center
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li:nth-child(5n)
	{
	margin-right: 0
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li a
	{
	display: inline-block;
	color: #a1a0a0
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li a:hover,
	.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li a:focus,
	.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li a:active
	{
	color: #a1a0a0;
	text-decoration: none
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li a em
	{
	display: block;
	margin-top: 7px;
	font-style: normal;
	font-size: 11px;
	color: #a1a0a0;
	font-weight: bold
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .movie_list li input[type="checkbox"]
	{
	position: absolute;
	left: 10px;
	top: 10px;
	width: 13px;
	height: 13px;
	margin: 0;
	opacity: 100
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .btn_wrap
	{
	padding: 28px 0;
	text-align: center
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .btn_wrap button
	{
	display: inline-block;
	width: 193px;
	height: 40px;
	background: #e63e31;
	border: 1px solid #eb7a6c;
	outline: 1px solid #e63e31;
	color: #fff;
	font-size: 15px;
	font-weight: 600
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .btn_wrap button.btn_vote
	{
	margin-right: 30px
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .comment
	{
	font-size: 12px;
	color: #8f8f8f
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .comment li
	{
	float: left
}

.specialcontents_container.plan_cinema .cinema_replay_movie_list .comment li:first-child
	{
	margin-right: 25px
}

.specialcontents_container.plan_cinema .cinema_replay_ready {
	width: 100%;
	height: 472px;
	background:
		url('https://image2.megabox.co.kr/mop/home/specialcontents/2017cinemareplay/replay_redy.jpg')
		50% 50% no-repeat #fafafa
}

.specialcontents_container.plan_academy>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/plan_academy.jpg)
}

.specialcontents_container.plan_academy>.no1 .icon.more {
	width: 207px;
	background-position: 0 0
}

.specialcontents_container.plan_academy .h3 {
	background-position: 0 -400px
}

.specialcontents_container.plan_talk>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/plan_talk.jpg)
}

.specialcontents_container.plan_talk>.no1 .icon.more {
	width: 178px;
	background-position: 0 -300px
}

.specialcontents_container.plan_talk .h3 {
	background-position: 0 -700px
}

.specialcontents_container.plan_night>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/plan_night.jpg)
}

.specialcontents_container.plan_night>.no1 .icon.more {
	width: 194px;
	background-position: 0 -200px
}

.specialcontents_container.plan_night .h3 {
	background-position: 0 -600px
}

.specialcontents_container.plan_g>.no1, .specialcontents_container.cinema_g>.no1
	{
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/plan_g.jpg)
}

.specialcontents_container.film_home>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/film_society_back.jpg)
}

.specialcontents_container.film_lounge>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/film_rounge_back.jpg)
}

.specialcontents_container.film_replay>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/film_replay_back.jpg)
}

.specialcontents_container.film_exhibitions>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/fillm_plan_back.jpg)
}

.specialcontents_container.live_classic>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/live_classic.jpg)
}

.specialcontents_container.live_viewing>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/live_viewing.jpg)
}

.specialcontents_container.live_sports>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/live_sports.jpg)
}

.specialcontents_container.performance_special>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/classic_special_back.jpg)
}

.specialcontents_container.performance_ballet>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/performance_ballet.jpg)
}

.specialcontents_container.performance_ballet .h3 {
	background-position: 0 0
}

.specialcontents_container.performance_concert>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/performance_concert.jpg)
}

.specialcontents_container.performance_concert .h3 {
	background-position: 0 -100px
}

.specialcontents_container.performance_musical>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/performance_musical.jpg)
}

.specialcontents_container.performance_musical .h3 {
	background-position: 0 -200px
}

.specialcontents_container.performance_theatre>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/bg_top_nt.jpg)
}

.specialcontents_container.performance_home>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/classic_society_back.jpg)
}

.specialcontents_container.performance_home .h3 {
	background-position: 0 -300px
}

.specialcontents_container.performance_opera>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/performance_opera.jpg)
}

.specialcontents_container.performance_opera .h3 {
	background-position: 0 -300px
}

.specialcontents_container.performance_festival>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/performance_festival.jpg)
}

.specialcontents_container.performance_festival .h3 {
	background-position: 0 -1000px
}

.specialcontents_container.project_box>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/project_box.jpg)
}

.specialcontents_container.project_box>.no1 .icon.more {
	width: 207px;
	background-position: 0 -500px
}

.specialcontents_container.project_box .h3 {
	margin-bottom: 0;
	background-position: 0 -800px
}

.specialcontents_container.project_gallery>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/project_gallery.jpg)
}

.specialcontents_container.project_gallery>.no1 .icon.more {
	width: 220px;
	background-position: 0 -400px
}

.specialcontents_container.project_gallery .h3 {
	margin-bottom: 0;
	background-position: 0 -900px
}

.specialcontents_container.project_cinema>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/cinema_paradiso/main_bg2.jpg)
}

.specialcontents_container.project_stairs>.no1 {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/specialcontents/project_stair_back.jpg)
}

.specialcontents_container .sp_tab {
	margin-top: 40px;
	min-height: 740px
}

.specialcontents_container .sp_tab>dl {
	position: relative;
	padding: 80px 0 0;
	width: 970px;
	margin: 0 auto
}

.specialcontents_container .sp_tab>dl>dt {
	position: absolute;
	top: 1px;
	left: 0;
	width: 322px;
	height: 48px;
	line-height: 48px;
	background-color: #fff;
	text-align: center;
	-webkit-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3);
	box-shadow: 0 0 1px rgba(0, 0, 0, 0.3)
}

.specialcontents_container .sp_tab>dl>dt a {
	color: #999;
	text-decoration: initial;
	display: block;
	width: 100%;
	height: 100%
}

.specialcontents_container .sp_tab>dl>dt.dt_02 {
	left: 322px;
	border: 1px solid #e5e5e5;
	border-top: 0;
	border-bottom: 0
}

.specialcontents_container .sp_tab>dl>dt.dt_03 {
	left: 644px
}

.specialcontents_container .sp_tab>dl>.tab_on {
	background-color: #666
}

.specialcontents_container .sp_tab>dl>.tab_on a {
	color: #fff
}

.specialcontents_container .sp_tab .list_more {
	display: block;
	clear: both;
	color: #666;
	font-size: 18px;
	text-align: center;
	line-height: 50px;
	width: 100%;
	margin-top: 60px
}

h3.subTitle {
	font-size: 18px;
	margin-bottom: 10px;
	padding-left: 5px
}

.company_container {
	position: static !important;
	margin-top: -85px !important
}

.company_container .section {
	padding: 50px 0
}

.company_container .sub_navi a {
	width: 55px;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/sub_navi_on.png) 0
		50% no-repeat
}

.company_container .content_wrap {
	position: relative;
	width: 970px;
	margin: 0 auto
}

.company_container .h3 {
	height: 17px;
	margin: 0 0 30px;
	font-size: 20px
}

.company_container h4 {
	margin: 30px 0 15px;
	padding: 0 0 0 27px;
	background: url(http://image2.megabox.co.kr/mop/home/dot.png) 17px 6px
		no-repeat;
	font-weight: 700;
	font-size: 14px;
	color: #333
}

.company_container>.no1 {
	position: relative;
	height: 300px;
	padding: 0;
	background: url(http://image2.megabox.co.kr/mop/home/company/bg.jpg) 50%
		50% no-repeat;
	background-size: cover
}

.company_container>.no1 .special_top_text {
	top: 150px;
	width: 600px;
	height: 100px;
	background: url(http://image2.megabox.co.kr/mop/home/company/h2.png)
		no-repeat
}

.company_container .no2 .mission {
	height: 449px;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/mission.png) 50% 0
		no-repeat
}

.company_container .no2 .core, .company_container .no2 .brand {
	width: 475px;
	height: 262px;
	background: url(http://image2.megabox.co.kr/mop/home/company/core.png)
		50% 0 no-repeat
}

.company_container .no2 .brand {
	background: url(http://image2.megabox.co.kr/mop/home/company/brand.png)
		50% 0 no-repeat
}

.company_container .no2 .ci {
	height: 522px;
	background: url(http://image2.megabox.co.kr/mop/home/company/ci.png) 50%
		0 no-repeat
}

.company_container .no2_2 {
	padding: 50px 0
}

.company_container .no2_2 .intro {
	height: 200px;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/history_intro.png)
		50% 0 no-repeat
}

.company_container .no4 .meari {
	position: relative;
	height: 190px;
	background: url(http://image2.megabox.co.kr/mop/home/company/meari.png)
		50% 0 no-repeat
}

.company_container .no4 .meari a {
	position: absolute;
	bottom: 20px;
	left: 200px;
	width: 122px;
	height: 22px;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/btn_apply_download.png)
}

.company_container .no4 .meari .btn_apply_link {
	left: 330px;
	width: 79px;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/btn_apply_link.png)
}

.company_container>.no7 .cyber_audit {
	height: 400px;
	background:
		url('http://image2.megabox.co.kr/mop/home/cyber/images/cyber_audit_20180604.png')
		50% 50% no-repeat
}

.company_container>.no7 .btn_wrap .btn {
	margin: 30px 35px 0 0;
	height: 45px;
	padding: 0 50px;
	font-weight: 700;
	font-size: 18px;
	line-height: 45px;
	color: #fff;
	border: 1px solid #503396;
	border-radius: 0;
	background-color: #503396
}

.company_container .no8 {
	padding-bottom: 100px
}

.company_container .no8 .data_table td, .company_container .no8 .data_table th
	{
	height: 46px;
	line-height: 46px
}

.company_container .no8 .data_table .title {
	padding-left: 45px
}

.company_container .no8 .data_table .addfile {
	font-size: 14px;
	color: #503396
}

.company_container .no8 .data_table a {
	color: #333
}

.company_container .board_list .select a {
	font-weight: 700;
	color: #503396
}

.company_container .form-style .form-table th, .company_container .form-style .form-table th label
	{
	font-weight: 700
}

.company_container iframe {
	width: 100%;
	min-height: 400px;
	border: 0
}

.history_lst li {
	position: relative;
	padding: 0 0 30px 115px;
	line-height: 24px
}

.history_lst h5, .history_lst h6 {
	position: absolute;
	top: 18px;
	left: 25px;
	width: 90px;
	height: 19px;
	margin: 0;
	border-right: 3px solid #503396;
	font-size: 24px;
	line-height: 19px;
	color: #503396
}

.history_lst h6 {
	left: 30px;
	border: 0;
	font-size: 13px;
	white-space: nowrap;
	color: #333
}

.history_lst li li {
	padding: 15px 0 15px 196px;
	border-bottom: 1px solid #E1E1E1
}

#map {
	display: block;
	height: 493px;
	margin: 0 auto 20px
}

.content_meari {
	height: 125px;
	padding: 10px 25px;
	border-bottom: 1px solid #d9d9d9;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/table_content_meari.png)
		50% 50% no-repeat
}

.alert_recruit {
	width: 660px !important
}

.alert_recruit .form-style {
	margin: 15px 30px 0
}

.alert_recruit .btn_recruit {
	width: 122px;
	height: 22px;
	background:
		url(http://image2.megabox.co.kr/mop/home/company/btn_recruit.png)
}

.alert_recruit input.fake_section {
	margin-right: 8px;
	float: left
}

.alert_recruit button.fake_section {
	float: left;
	width: 70px;
	height: 26px;
	background-position: -400px -200px
}

.alert_recruit button.lp_add {
	background-position: -560px 0
}

.text_btn_ok {
	height: 45px;
	padding: 0 50px;
	font-weight: 700;
	font-size: 18px;
	line-height: 45px;
	color: #fff;
	border: 1px solid #503396;
	border-radius: 0;
	background-color: #503396
}

.mypage_main_wrap button {
	background: none;
	border: none;
	padding: 0
}

.mypage_main_wrap h2 {
	margin: 0 0 20px 0;
	font-size: 20px
}

.mypage_main_wrap .h3_wrap {
	overflow: hidden;
	margin: 0
}

.mypage_main_wrap .h3_wrap>h3 {
	float: left;
	width: auto;
	height: 18px;
	line-height: 18px
}

.mypage_main_wrap .h3_wrap button {
	display: block;
	float: right
}

.mypage_main_wrap .h3_wrap.mb38 {
	margin-bottom: 38px
}

.mypage_main_wrap .row1 {
	position: relative;
	padding: 57px 20px 15px 20px;
	overflow: hidden;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_main_top_2017.jpg)
		0 0 no-repeat;
	border: 5px solid #7A67AC;
	border-top: none
}

.mypage_main_wrap .row1 .title {
	position: absolute;
	top: 0;
	left: 0;
	height: 41px
}

.mypage_main_wrap .row1 .title span.icon_crown {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/crown_icon.png) left
		no-repeat;
	padding-left: 25px
}

.mypage_main_wrap .row1 .special_txt_wrap {
	position: absolute;
	top: 0;
	right: 20px
}

.mypage_main_wrap .row1 .title span, .mypage_main_wrap .row1 .special_txt_wrap,
	.mypage_main_wrap .row1 .title span a {
	display: inline-block;
	line-height: 41px;
	color: #fff;
	font-size: 14px;
	font-weight: 700
}

.mypage_main_wrap .row1 .title span a:hover {
	text-decoration: none
}

.mypage_main_wrap .row1>.cols {
	float: left
}

.mypage_main_wrap .row1>.cols.col1 {
	position: relative;
	width: 273px;
	margin-right: 50px;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/main_icon6.png) 100%
		50px no-repeat;
	background-size: 75px
}

.mypage_main_wrap .row1>.cols.col1 .point_wrap {
	margin: 10px 0
}

.mypage_main_wrap .row1>.cols.col1 .point_wrap strong {
	display: block;
	font-size: 14px
}

.mypage_main_wrap .row1>.cols.col1 .point_wrap strong.point_wrap_bottom
	{
	font-size: 30px
}

.mypage_main_wrap .row1>.cols.col1 .point_amount {
	margin-bottom: 10px
}

.mypage_main_wrap .row1>.cols.col1 .point_amount dt {
	float: left;
	font-weight: bold;
	font-size: 13px;
	color: #666
}

.mypage_main_wrap .row1>.cols.col1 .point_amount dd {
	float: right;
	font-weight: bold;
	font-size: 13px;
	color: #503396
}

.mypage_main_wrap .row1>.cols.col1 .btn-s {
	height: 22px !important;
	padding: 0 5px;
	font-size: 11px;
	line-height: 22px;
	border: 1px solid #503396
}

.mypage_main_wrap .row1>.cols.col2 {
	position: relative;
	width: 300px;
	padding-right: 27px;
	margin-right: 25px;
	border-right: 3px solid #e1e1e1
}

.mypage_main_wrap .row1>.cols.col2 ul li {
	overflow: hidden;
	line-height: 23px
}

.mypage_main_wrap .row1>.cols.col2 ul li strong {
	display: block;
	float: right;
	font-size: 14px;
	color: #503396
}

.mypage_main_wrap .row1>.cols.col2 ul li strong:first-child {
	float: left;
	font-size: 13px;
	color: #333
}

.mypage_main_wrap .row1>.cols.col2 ul li.bdb {
	border-bottom: 1px solid #ccc
}

.mypage_main_wrap .row1>.cols.col2 ul li:last-child p {
	padding-top: 5px;
	line-height: 16px
}

.mypage_main_wrap .row1>.cols.col3 {
	width: 272px
}

.mypage_main_wrap .row1>.cols.col3 ul {
	margin-top: 11px
}

.mypage_main_wrap .row1>.cols.col3 ul li {
	overflow: hidden;
	line-height: 33px
}

.mypage_main_wrap .row1>.cols.col3 ul li strong {
	display: block;
	float: right
}

.mypage_main_wrap .row1>.cols.col3 ul li strong:first-child {
	float: left
}

.mypage_main_wrap .row2 ul {
	overflow: hidden
}

.mypage_main_wrap .row2 ul li {
	float: left
}

.mypage_main_wrap .row2 ul li img {
	display: block
}

.mypage_main_wrap .row3 {
	overflow: hidden
}

.mypage_main_wrap .row3 .cols {
	width: 316px;
	float: left
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal {
	margin-bottom: 10px;
	padding: 29px 24px 0 24px;
	height: 253px;
	border: 1px solid #e1e1e1;
	background-color: #f2f2f2
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li {
	margin-bottom: 14px;
	vertical-align: middle;
	overflow: hidden;
	font-size: 13px
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li strong {
	vertical-align: middle;
	display: block;
	float: left
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li .special_member
	{
	float: right;
	text-align: right
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li .special_member li
	{
	margin-bottom: 0
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li .special_member li.none
	{
	color: #7f7f7f;
	letter-spacing: -1px
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li span {
	vertical-align: middle;
	display: block;
	float: right
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li span.btn_sms button
	{
	width: 39px;
	height: 22px;
	overflow: hidden;
	text-indent: -9999px;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/main_btn7.jpg) 0 0
		no-repeat
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li span.btn_sms button.no.active
	{
	background-position: 0 -22px
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li span.btn_sms button.yes
	{
	width: 38px;
	background-position: -39px -22px
}

.mypage_main_wrap .row3 .cols.col1 .mypage_main_personal ul li span.btn_sms button.yes.active
	{
	background-position: -39px 0
}

.mypage_main_wrap .row3 .cols.col2 {
	margin: 0 11px
}

.mypage_main_wrap .row4 {
	overflow: hidden
}

.mypage_main_wrap .row4 .cols {
	width: 316px;
	float: left
}

.mypage_main_wrap .row4 .cols.col1 {
	width: 644px;
	float: left
}

.mypage_main_wrap .mypage_main_box {
	margin-bottom: 10px;
	padding: 25px 20px;
	border: 5px solid #f2f2f2
}

.mypage_main_wrap .mypage_main_box ul.tab {
	overflow: hidden;
	margin-bottom: 4px;
	margin-top: 19px
}

.mypage_main_wrap .mypage_main_box ul.tab li {
	float: left;
	margin-right: 10px
}

.mypage_main_wrap .mypage_main_box ul.tab li a {
	display: inline-block;
	width: 66px;
	height: 24px;
	overflow: hidden;
	text-indent: -9999px;
	background: #fff
		url(http://image2.megabox.co.kr/mop/home/mypage/main_btn9.jpg) 0 -24px
		no-repeat
}

.mypage_main_wrap .mypage_main_box ul.tab li a.tab1.active {
	background-position: 0 0
}

.mypage_main_wrap .mypage_main_box ul.tab li a.tab2 {
	width: 54px;
	background-position: -66px -24px
}

.mypage_main_wrap .mypage_main_box ul.tab li a.tab2.active {
	background-position: -66px 0
}

.mypage_main_wrap .mypage_main_box ul.type1 {
	border-top: 2px solid #e1e1e1;
	padding-top: 13px
}

.mypage_main_wrap .mypage_main_box ul.type1 li {
	padding-bottom: 13px;
	margin-bottom: 11px;
	font-size: 13px;
	border-bottom: 1px solid #e1e1e1;
	color: #666
}

.mypage_main_wrap .mypage_main_box ul.type1 li p {
	margin-bottom: 4px
}

.mypage_main_wrap .mypage_main_box ul.type1 li strong, .mypage_main_wrap .mypage_main_box ul.type1 li a
	{
	color: #333
}

.mypage_main_wrap .mypage_main_box ul.type1 li:last-child {
	margin-bottom: 0;
	padding-bottom: 0;
	border: none
}

.mypage_main_wrap .mypage_main_box ul.booking_list li {
	overflow: hidden;
	padding-bottom: 10px;
	margin-bottom: 10px;
	border-bottom: 1px solid #ccc
}

.mypage_main_wrap .mypage_main_box ul.booking_list li:last-child {
	border-bottom: none
}

.mypage_main_wrap .mypage_main_box ul.booking_list li img {
	display: block;
	width: 50px;
	height: 71px;
	border: 1px solid #cfcfcf;
	float: left;
	margin-right: 20px
}

.mypage_main_wrap .mypage_main_box ul.booking_list li p {
	padding-top: 7px;
	float: left;
	font-size: 12px
}

.mypage_main_wrap .mypage_main_box ul.booking_list li p strong,
	.mypage_main_wrap .mypage_main_box ul.booking_list li p span {
	display: block;
	color: #666
}

.mypage_main_wrap .mypage_main_box ul.mypage_main_moviestory li a {
	padding-left: 20px;
	padding-right: 20px;
	overflow: hidden;
	display: block
}

.mypage_main_wrap .mypage_main_box ul.mypage_main_moviestory li a:hover
	{
	background-color: #f2f2f2
}

.mypage_main_wrap .mypage_main_box ul.mypage_main_moviestory li a span,
	.mypage_main_wrap .mypage_main_box ul.mypage_main_moviestory li a strong
	{
	height: 38px;
	line-height: 38px;
	display: block;
	float: left;
	color: #333
}

.mypage_main_wrap .mypage_main_box .mypage_main_table {
	width: 100%
}

.mypage_main_wrap .mypage_main_box .mypage_main_table th,
	.mypage_main_wrap .mypage_main_box .mypage_main_table td {
	color: #333;
	text-align: left
}

.mypage_main_wrap .mypage_main_box .mypage_main_table th {
	font-size: 13px;
	height: 32px;
	border-bottom: 2px solid #e1e1e1
}

.mypage_main_wrap .mypage_main_box .mypage_main_table td {
	font-size: 12px;
	height: 42px;
	border-top: 1px solid #e1e1e1
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table {
	width: 100%
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table tr th:last-child,
	.mypage_main_wrap .mypage_main_box .mypage_main2_table tr td:last-child,
	.mypage_main_wrap .mypage_main_box .mypage_main2_table tr th:nth-child(3),
	.mypage_main_wrap .mypage_main_box .mypage_main2_table tr td:nth-child(3)
	{
	text-align: center
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table th,
	.mypage_main_wrap .mypage_main_box .mypage_main2_table td {
	color: #333;
	text-align: left
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table tr th:first-child,
	.mypage_main_wrap .mypage_main_box .mypage_main2_table tr td:first-child
	{
	padding-left: 20px
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table th {
	font-size: 13px;
	height: 40px;
	border-top: 2px solid #e1e1e1;
	border-bottom: 2px solid #e1e1e1
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table td {
	font-size: 13px;
	height: 42px
}

.mypage_main_wrap .mypage_main_box .mypage_main2_table td button {
	padding: .2rem 1.5rem;
	border: 1px solid #503396;
	color: #503396
}

.h2_mypage {
	position: relative;
	margin-bottom: 27px
}

.h2_mypage h3.sub_title {
	font-size: 20px;
	display: inline-block
}

.h2_mypage span {
	font-size: 13px;
	padding-left: 1rem;
	letter-spacing: -0.05em
}

.h2_mypage.marktingAgree {
	margin: 20px 0 0 5px
}

.h2_mypage button {
	position: absolute;
	top: 0;
	left: 535px
}

.h2_mypage.coupon_add {
	border-bottom: 1px solid #e1e1e1;
	padding-bottom: 12px;
	margin-bottom: 25px
}

.h2_coupon_wrap {
	position: relative
}

.h2_coupon_wrap button {
	position: absolute;
	top: -5px;
	right: 0
}

.img_btn.mypage {
	background-image:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png)
}

.img_btn.mypage.booking {
	width: 100px;
	height: 22px;
	background-position: 0 -350px
}

.img_btn.mypage.coupon_add {
	display: inline-block;
	width: 75px;
	height: 22px;
	background-position: -100px -350px
}

.img_btn.mypage.coupon_vip_how {
	width: 187px;
	height: 22px;
	position: absolute;
	top: 212px;
	right: 0;
	background-position: -200px -350px
}

.img_btn.mypage.mypage_cancel {
	display: inline-block;
	width: 68px;
	height: 30px;
	background-position: -400px -350px
}

.img_btn.mypage.mypage_view {
	display: inline-block;
	width: 68px;
	height: 30px;
	background-position: -750px -600px
}

.img_btn.mypage.mypage_add {
	display: inline-block;
	width: 68px;
	height: 30px;
	background-position: -500px -350px
}

.img_btn.mypage.point_detail {
	width: 60px;
	height: 22px;
	background-position: -750px -350px
}

.img_btn.mypage.card_add_del {
	position: absolute;
	right: 24px;
	top: 88px;
	width: 106px;
	height: 22px;
	background-position: -600px -350px
}

.img_btn.mypage.view_detail {
	width: 76px;
	height: 22px;
	background-position: -850px -350px
}

.img_btn.mypage.search_date {
	width: 67px;
	height: 30px
}

.img_btn.mypage.search_date.date1 {
	width: 68px;
	background-position: 0 -550px
}

.img_btn.mypage.search_date.date1:hover, .img_btn.mypage.search_date.date1:active,
	.img_btn.mypage.search_date.date1.active {
	background-position: 0 -600px
}

.img_btn.mypage.search_date.date2 {
	background-position: -68px -550px
}

.img_btn.mypage.search_date.date2:hover, .img_btn.mypage.search_date.date2:active,
	.img_btn.mypage.search_date.date2.active {
	background-position: -68px -600px
}

.img_btn.mypage.search_date.date3 {
	background-position: -135px -550px
}

.img_btn.mypage.search_date.date3:hover, .img_btn.mypage.search_date.date3:active,
	.img_btn.mypage.search_date.date3.active {
	background-position: -135px -600px
}

.img_btn.mypage.search_date.date4 {
	background-position: -202px -550px
}

.img_btn.mypage.search_date.date4:hover, .img_btn.mypage.search_date.date4:active,
	.img_btn.mypage.search_date.date4.active {
	background-position: -202px -600px
}

.img_btn.mypage.search_date.date5 {
	background-position: -269px -550px
}

.img_btn.mypage.search_date.date5:hover, .img_btn.mypage.search_date.date5:active,
	.img_btn.mypage.search_date.date5.active {
	background-position: -269px -600px
}

.img_btn.mypage.search_date.date6 {
	background-position: -336px -550px
}

.img_btn.mypage.search_date.date6:hover, .img_btn.mypage.search_date.date6:active,
	.img_btn.mypage.search_date.date6.active {
	background-position: -336px -600px
}

.img_btn.mypage.search_date.date7 {
	width: 68px;
	background-position: -100px -650px
}

.img_btn.mypage.search_date.date7:hover, .img_btn.mypage.search_date.date7:active,
	.img_btn.mypage.search_date.date7.active {
	background-position: -100px -700px
}

.img_btn.mypage.btn_cal {
	display: inline-block;
	width: 27px;
	height: 30px;
	background-position: -950px -350px
}

.img_btn.mypage.btn_search {
	display: inline-block;
	width: 68px;
	height: 30px;
	background-position: -450px -550px
}

.img_btn.mypage.view_terms {
	display: inline-block;
	width: 87px;
	height: 22px;
	background-position: -550px -550px
}

.img_btn.mypage.point_faq {
	display: inline-block;
	width: 301px;
	height: 30px;
	background-position: -650px -550px
}

.img_btn.mypage.delete_selected {
	display: inline-block;
	width: 97px;
	height: 30px;
	background-position: -450px -600px
}

.img_btn.mypage.booking_delete {
	display: inline-block;
	width: 50px;
	height: 22px;
	background-position: -400px -400px
}

.img_btn.mypage.mypage_booking_print {
	display: inline-block;
	width: 104px;
	height: 30px;
	background-position: -500px -400px
}

.img_btn.mypage.mypage_booking_sms {
	display: inline-block;
	width: 150px;
	height: 30px;
	background-position: -650px -400px
}

.img_btn.mypage.mypage_booking_receipt {
	display: inline-block;
	width: 118px;
	height: 30px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png)
		left -650px
}

.img_btn.mypage.mypage_booking_cancel {
	display: inline-block;
	width: 104px;
	height: 30px;
	background-position: -800px -400px
}

.img_btn.mypage.shopping_resend {
	display: inline-block;
	width: 50px;
	height: 22px;
	background-position: -400px -450px
}

.img_btn.mypage.booking_done_print {
	display: inline-block;
	width: 141px;
	height: 30px;
	background-position: 0 -500px;
	background-image:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking.png)
}

.img_btn.mypage.shopping_receipt_print {
	display: inline-block;
	width: 76px;
	height: 22px;
	background-position: -450px -450px
}

.img_btn.mypage.personal_change_pw {
	display: inline-block;
	width: 88px;
	height: 22px;
	background-position: -550px -450px
}

.img_btn.mypage.personal_quit {
	display: inline-block;
	width: 62px;
	height: 22px;
	background-position: -650px -450px
}

.img_btn.mypage.go_faq {
	display: inline-block;
	width: 86px;
	height: 22px;
	background-position: -750px -450px
}

.img_btn.mypage.question_1on1 {
	width: 60px;
	height: 22px;
	background-position: -400px -500px
}

.img_btn.mypage.question_lost {
	width: 103px;
	height: 22px;
	background-position: -600px -500px
}

.img_btn.mypage.question_rent {
	width: 121px;
	height: 22px;
	background-position: -750px -500px
}

.img_btn.mypage.board_list {
	display: inline-block;
	width: 60px;
	height: 22px;
	background-position: -500px -500px
}

.img_btn.mypage.board_modify {
	display: inline-block;
	width: 68px;
	height: 30px;
	background-position: -550px -600px
}

.img_btn.mypage.board_delete {
	display: inline-block;
	width: 68px;
	height: 30px;
	background-position: -650px -600px
}

.img_btn.mypage.review_modify {
	display: inline-block;
	width: 18px;
	height: 18px;
	background-position: -350px -650px
}

.img_btn.mypage.review_delete {
	display: inline-block;
	width: 18px;
	height: 18px;
	background-position: -400px -650px
}

.img_btn.mypage.review_save {
	display: inline-block;
	width: 18px;
	height: 18px;
	background-position: -350px -700px
}

.img_btn.mypage.review_cancel {
	display: inline-block;
	width: 18px;
	height: 18px;
	background-position: -400px -700px
}

.mypage_menu {
	width: 970px;
	height: 110px;
	margin: 50px 0 62px
}

.mypage_menu li {
	position: relative;
	float: left;
	height: 110px
}

.mypage_menu li a {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png)
		0 0 no-repeat;
	display: block;
	width: 121px;
	height: 110px;
	overflow: hidden;
	text-indent: -9999px
}

.mypage_menu li a.col1 {
	background-position: 0 0
}

.mypage_menu li a.col1:hover, .mypage_menu li a.col1:active,
	.mypage_menu li a.col1.active {
	background-position: 0 -150px
}

.mypage_menu li a.col2 {
	background-position: -121px 0
}

.mypage_menu li a.col2:hover, .mypage_menu li a.col2:active,
	.mypage_menu li a.col2.active {
	background-position: -121px -150px
}

.mypage_menu li a.col3 {
	background-position: -242px 0
}

.mypage_menu li a.col3:hover, .mypage_menu li a.col3:active,
	.mypage_menu li a.col3.active {
	background-position: -242px -150px
}

.mypage_menu li a.col4 {
	background-position: -363px 0
}

.mypage_menu li a.col4:hover, .mypage_menu li a.col4:active,
	.mypage_menu li a.col4.active {
	background-position: -363px -150px
}

.mypage_menu li a.col5 {
	width: 122px;
	background-position: -484px 0
}

.mypage_menu li a.col5:hover, .mypage_menu li a.col5:active,
	.mypage_menu li a.col5.active {
	background-position: -484px -150px
}

.mypage_menu li a.col6 {
	background-position: -606px 0
}

.mypage_menu li a.col6:hover, .mypage_menu li a.col6:active,
	.mypage_menu li a.col6.active {
	background-position: -606px -150px
}

.mypage_menu li a.col7 {
	background-position: -727px 0
}

.mypage_menu li a.col7:hover, .mypage_menu li a.col7:active,
	.mypage_menu li a.col7.active {
	background-position: -727px -150px
}

.mypage_menu li a.col8 {
	width: 122px;
	background-position: -848px 0
}

.mypage_menu li a.col8:hover, .mypage_menu li a.col8:active,
	.mypage_menu li a.col8.active {
	background-position: -848px -150px
}

.mypage_menu li .tooltip_area {
	position: absolute;
	background-color: #198591;
	padding: 10px 30px 10px 13px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	font-size: 12px;
	color: #fff;
	bottom: 120px;
	width: 220px;
	right: 0
}

.mypage_menu li .tooltip_area:after {
	top: 100%;
	left: 73%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-color: rgba(136, 183, 213, 0);
	border-top-color: #198591;
	border-width: 5px;
	margin-left: -5px
}

.mypage_menu li .tooltip_area button {
	position: absolute;
	top: 8px;
	right: 7px;
	background:
		url('http://image2.megabox.co.kr/mop/home/btns/btn_close.png') 5px
		-433px no-repeat;
	width: 25px;
	height: 21px
}

.point_exchange h2 {
	margin-bottom: 30px;
	font-weight: bold;
	font-size: 20px
}

.point_exchange .nav-tabs {
	height: 60px;
	background: none;
	border-bottom: 1px solid #e1e1e1
}

.point_exchange .nav-tabs li {
	font-weight: bold
}

.point_exchange .nav-tabs li.active a {
	color: #333
}

.point_exchange .nav-tabs li a {
	height: 60px;
	padding: 8px 25px;
	color: #535353;
	line-height: 22px
}

.point_exchange .nav-tabs li a strong {
	font-size: 18px
}

.point_exchange .strong_title {
	font-weight: bold;
	font-size: 18px
}

.point_exchange .txt {
	padding-top: 8px;
	font-size: 12px;
	color: #666
}

.point_exchange .point_txt {
	font-weight: bold;
	color: #535353
}

.point_exchange .point_txt span {
	color: #503396
}

.point_exchange .select_wrap {
	padding: 10px 0
}

.point_exchange .select_wrap .bootstrap-select {
	margin-right: 7px
}

.point_exchange .select_wrap button {
	margin-left: 5px
}

.point_exchange .fa_line {
	padding-bottom: 30px;
	border-bottom: 1px solid #dcdcdc
}

.point_exchange .btn_point, .point_exchange .btn_disabled {
	width: 180px;
	height: 30px;
	font-weight: bold;
	font-size: 14px
}

.point_exchange .btn_point {
	color: #fff;
	background: #503396;
	border: 0
}

.point_exchange .strong_color_a {
	font-weight: bold
}

.point_exchange .strong_color_a:hover, .point_exchange .strong_color_a:focus
	{
	text-decoration: none
}

.point_exchange .point_tab1 .point_txt {
	padding-top: 18px
}

.point_exchange .point_tab1 .bottom {
	padding-top: 30px;
	margin-bottom: 85px
}

.point_exchange .point_tab1 .bottom button {
	width: 283px;
	margin-left: 15px
}

.point_exchange .point_tab2 .point_txt {
	padding-top: 18px
}

.point_exchange .txt {
	padding-bottom: 18px
}

.point_exchange .notic {
	border: 1px solid #ddd;
	padding: 10px 10px 0 10px;
	background-color: #f9f9f9;
	margin-top: 10px
}

.point_exchange .arrow {
	padding-top: 0;
	font-size: 18px
}

.point_exchange .arrow strong:first-child {
	padding-right: 28px;
	margin-right: 12px;
	color: #535353;
	background: url(http://image2.megabox.co.kr/mop/home/point_arrow.png)
		right center no-repeat
}

.mypage_membership_wrap {
	position: relative
}

.mypage_membership_wrap .text_grade {
	position: absolute;
	top: -27px;
	right: 0;
	white-space: nowrap
}

.mypage_membership_wrap .text_grade strong {
	display: inline-block;
	font-size: 18px;
	color: #333;
	vertical-align: middle
}

.mypage_membership_wrap .text_grade img {
	margin-top: 2px;
	display: inline-block;
	vertical-align: middle
}

.mypage_membership_wrap .card_point_wrap {
	border-top: 3px solid #503396;
	overflow: hidden;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_point.jpg) 0 0
		repeat-y
}

.mypage_membership_wrap .card_point_wrap div.point {
	width: 322px;
	float: left;
	padding: 0 2px
}

.mypage_membership_wrap .card_point_wrap div.point ul li {
	position: relative;
	overflow: hidden
}

.mypage_membership_wrap .card_point_wrap div.point ul li strong {
	font-size: 14px;
	display: block;
	float: left;
	color: #333;
	height: 54px;
	line-height: 54px
}

.mypage_membership_wrap .card_point_wrap div.point ul li strong.point {
	color: #503396;
	float: right;
	text-align: right
}

.mypage_membership_wrap .card_point_wrap div.point ul li strong.point.big
	{
	font-size: 24px
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row1 {
	background-color: #e1e1e1
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row1>strong {
	height: 45px;
	margin-left: 22px;
	line-height: 45px
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row1>strong.point
	{
	margin: 0 24px 0 0
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row2,
	.mypage_membership_wrap .card_point_wrap div.point ul li.row3 {
	margin: 0 24px 0 22px;
	border-bottom: 1px solid #ccc
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row4 {
	margin: 0 24px 0 22px;
	height: 82px
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row4 span {
	position: absolute;
	top: 41px;
	left: 0;
	display: block;
	font-size: 12px;
	color: #666;
	line-height: 14px
}

.mypage_membership_wrap .card_point_wrap div.point ul li.row4 button {
	position: absolute;
	top: 41px;
	right: 0;
	display: block
}

.mypage_membership_wrap .card_point_wrap .card {
	position: relative;
	width: 648px;
	float: left;
	padding: 30px 24px 0 31px
}

.mypage_membership_wrap .card_point_wrap .card .caption caption {
	margin-bottom: 9px;
	text-align: left;
	font-size: 13px;
	font-weight: 700
}

.mypage_membership_wrap .icon_list.mypage.membership {
	margin-bottom: 66px
}

.mypage_membership_wrap .icon_list.mypage.membership dt {
	font-size: 14px;
	margin-bottom: 10px
}

.mypage_membership_wrap .icon_list.mypage.membership dt button {
	display: inline-block
}

.mypage_membership_wrap .icon_list.mypage.membership dd {
	margin-bottom: 1px;
	color: #666
}

.mypage_membership_wrap .icon_list.mypage.membership dd strong.point_notice
	{
	display: inline-block;
	width: 90px;
	color: #333
}

.mypage_membership_wrap .mypage_box_wrap {
	padding: 25px 20px;
	border: 5px solid #f0f0f0
}

.mypage_membership_wrap .mypage_box_wrap div.search_date {
	padding: 25px 0 12px 25px;
	border: 5px solid #e1e1e1
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div {
	margin-bottom: 13px
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div label {
	font-size: 13px;
	display: block;
	float: left;
	width: 90px;
	margin-bottom: 0;
	line-height: 30px;
	height: 30px
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div .range {
	overflow: hidden
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div .range li {
	float: left
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div input {
	width: 103px;
	height: 30px;
	line-height: 30px;
	border-right: none
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div span {
	color: #666;
	margin: 0 3px
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div.row2 {
	position: relative
}

.mypage_membership_wrap .mypage_box_wrap div.search_date div .datepicker
	{
	top: 28px !important;
	left: 90px !important
}

.mypage_membership_wrap .mypage_box_wrap div.search_date span.search_date_text
	{
	float: left;
	display: block;
	height: 30px;
	line-height: 30px;
	font-size: 13px;
	color: #666
}

.mypage_membership_wrap .mypage_box_wrap .point_info {
	margin: 17px 0;
	font-size: 13px
}

.mypage_membership_wrap .mypage_box_wrap .point_info span {
	display: inline-block;
	color: #666
}

.mypage_membership_wrap .mypage_box_wrap .point_info strong {
	display: inline-block
}

.mypage_membership_wrap .tab-content.mypage_booking_info {
	padding: 10px 0 10px 9px;
	border: 1px solid #e1e1e1;
	border-top: none
}

.mypage_membership_wrap .tab-content.mypage_booking_info .mypage_box_wrap
	{
	padding-top: 18px;
	padding-bottom: 18px
}

.modal-dialog.mypage {
	width: 653px
}

td.mypage_booking_title {
	padding: 14px 0 13px 0;
	text-align: left;
	cursor: pointer
}

td.mypage_booking_title img {
	display: inline-block;
	margin-right: 30px;
	width: 52px;
	height: 73px;
	border: 1px solid #cfcfcf
}

td.mypage_booking_title span {
	display: inline-block;
	width: 260px;
	vertical-align: middle
}

.mypage_booking_detail {
	width: 100%;
	font-size: 12px
}

.mypage_booking_detail .ex_tx {
	margin-top: 20px;
	font-size: 13px;
	line-height: 18px;
	color: #333;
	margin-bottom: 55px;
	display: block
}

.mypage_booking_detail .ex_tx strong {
	display: block;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/sub_title_popup.png)
		left -202px no-repeat;
	font-size: 0;
	letter-spacing: -999px;
	color: transparent;
	width: 80px;
	height: 16px;
	margin-bottom: 10px
}

.mypage_booking_detail .data_table.vertical th, .mypage_booking_detail .data_table.vertical td
	{
	border-bottom: 1px solid #e1e1e1;
	color: #666
}

.mypage_booking_detail .data_table.vertical th {
	background-color: #f8f8f8;
	padding-left: 30px
}

.mypage_booking_detail .data_table.vertical td {
	padding: 10px 20px;
	line-height: 16px
}

.mypage_btn {
	position: relative;
	top: 2px
}

.cash_receipt .modal-dialog {
	width: 404px
}

.cash_receipt .modal-dialog .modal-header {
	padding: 13px 11px;
	text-align: center
}

.cash_receipt .modal-dialog .modal-header .popup_title {
	width: auto;
	height: auto;
	font-size: 18px;
	background: none;
	text-indent: 0
}

.cash_receipt .modal-dialog .modal-body {
	padding: 0 26px;
	font-size: 12px
}

.cash_receipt .modal-dialog .modal-body .color_c {
	color: #ccc
}

.cash_receipt .modal-dialog .modal-body .cont_top {
	padding: 17px 26px;
	margin: 0 -26px;
	border-bottom: 1px solid #e5e5e5
}

.cash_receipt .modal-dialog .modal-body .cont label {
	font-weight: normal
}

.cash_receipt .modal-dialog .modal-footer {
	padding: 15px 14px 18px;
	text-align: center;
	font-size: 12px
}

.cash_receipt .modal-dialog .modal-footer p {
	text-align: left
}

.cash_receipt .modal-dialog .close {
	display: block;
	position: absolute;
	top: 15px;
	right: 16px;
	width: 17px;
	height: 17px;
	text-indent: -3000px;
	opacity: 1;
	background:
		url('http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png')
		-510px -460px no-repeat
}

.cash_receipt.details .cont_top dt {
	padding-left: 0
}

.cash_receipt.details .cont_top dt, .cash_receipt.details .cont_top dd {
	float: left;
	padding-left: 20px
}

.cash_receipt.details .cont_top .last {
	position: relative
}

.cash_receipt.details .cont_top .last:before {
	content: "";
	position: absolute;
	top: 2px;
	left: 9px;
	width: 1px;
	height: 12px;
	background: #e1e1e1
}

.cash_receipt.details .cont_1 {
	margin: 15px 0
}

.cash_receipt.details .cont_1 li {
	line-height: 20px
}

.cash_receipt.issue .cont_top {
	padding: 10px 26px
}

.cash_receipt.issue .cont_1 {
	margin-top: 10px
}

.cash_receipt.issue .cont_1 label {
	padding-right: 15px
}

.cash_receipt.issue .cont_1 dt, .cash_receipt.issue .cont_1 dd {
	height: 33px;
	line-height: 33px
}

.cash_receipt.issue .cont_1 dt {
	width: 60px;
	float: left
}

.cash_receipt.issue .cont_1 .input_txt {
	width: 270px
}

.cash_receipt.issue .cont_1 .help_txt {
	padding-left: 60px;
	line-height: 22px;
	font-size: 11px;
	color: #666;
	letter-spacing: -1px
}

.cash_receipt.issue .cont_1 .iradio_minimal {
	margin-right: 5px
}

.cash_receipt.issue .modal-footer {
	margin-top: 6px
}

.cash_receipt.issue .modal-footer p {
	padding: 0 0 15px 15px
}

.shopping_de_popup h3.popup_title>.h3_title.popup02 {
	background-position: 0 -850px
}

.shopping_de_popup h4>.h4_title.mypage.popup0201 {
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/sub_title.png) 0
		-899px no-repeat
}

.shopping_de_popup .pop_close {
	position: absolute;
	right: 13px;
	top: 12px;
	width: 18px;
	height: 18px;
	background:
		url(http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png)
		no-repeat -510px -460px
}

.shopping_de_popup .modal-body {
	padding: 20px 0
}

.shopping_de_popup .mypage_booking_detail {
	padding: 0 20px;
	overflow: auto;
	max-height: 600px
}

.mypage_booking_poster {
	position: absolute;
	top: 46px;
	right: 20px
}

.mypage_booking_poster img {
	width: 150px;
	height: 214px
}

button.about_cvc {
	background: none;
	padding: 0;
	border: none;
	text-decoration: underline;
	font-size: 12px;
	color: #666
}

.coupon_util_area {
	text-align: right;
	margin-bottom: 10px;
	font-size: 13px
}

.coupon_add_input {
	position: relative;
	height: 60px;
	padding: 16px 0 14px 288px;
	border-top: 2px solid #503396;
	border-bottom: 2px solid #e1e1e1
}

.coupon_add_input label, .coupon_add_input input, .coupon_add_input span
	{
	display: block;
	margin-right: 2px;
	float: left;
	height: 26px;
	line-height: 26px
}

.coupon_add_input input {
	width: 67px
}

.coupon_add_input label {
	font-weight: normal;
	margin-right: 30px
}

.coupon_add_input p.info {
	position: absolute;
	top: 42px;
	left: 594px;
	width: 294px;
	height: 52px;
	overflow: hidden;
	text-indent: -9999px;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png)
		0 -450px no-repeat
}

.megabox_discount_add .coupon_add_input {
	padding-left: 250px
}

.megabox_discount_add .form-style .form-table {
	border-top: 0
}

.megabox_discount_add .form-style .form-table .border0 {
	border-top: 0
}

.megabox_discount_add .form-style .form-table th label {
	line-height: 42px
}

.megabox_discount_wrap {
	padding: 41px 0 22px 225px;
	border-bottom: 2px solid #d2d2d2
}

.megabox_discount_wrap span {
	float: left;
	margin-right: 66px
}

.megabox_discount_wrap .right strong, .megabox_discount_wrap .right dl {
	width: 316px
}

.megabox_discount_wrap .right strong {
	display: inline-block;
	margin: -5px 0 14px;
	font-weight: 500;
	font-size: 20px
}

.megabox_discount_wrap .right dl {
	display: inline-block;
	font-size: 14px;
	border-top: 1px solid #dcdcdc
}

.megabox_discount_wrap .right dl dt, .megabox_discount_wrap .right dl dd
	{
	padding: 15px 0
}

.megabox_discount_wrap .right dl dt {
	float: left;
	width: 106px
}

.megabox_discount_wrap .right dl dd {
	padding-left: 106px;
	color: #7a7a7a
}

.text-center .btn_mega_register {
	width: 123px !important;
	font-weight: 500
}

#about_cvc {
	display: block;
	position: absolute;
	top: 10px;
	left: 180px
}

.personal_info_last {
	position: absolute;
	top: 205px;
	right: 0;
	text-align: right
}

.personal_info_last span {
	margin-right: 16px;
	display: inline-block;
	height: 22px;
	line-height: 22px;
	color: #666;
	font-size: 12px
}

.personal_quit h5 {
	margin: 0 0 10px 25px;
	color: #503396
}

.personal_quit dl {
	padding: 22px 25px;
	border-bottom: 1px solid #d2d2d2
}

.personal_quit dl.first {
	border-top: 2px solid #503396
}

.personal_quit dl.last {
	border-bottom-width: 2px
}

.personal_quit dl dt {
	margin-bottom: 14px;
	font-size: 13px
}

.personal_quit dl dd {
	margin-bottom: 9px;
	font-size: 13px;
	color: #666
}

.personal_quit dl dd * {
	vertical-align: middle
}

.personal_quit dl dd>i {
	color: #198591
}

.personal_quit label {
	font-weight: normal;
	margin: 0
}

.board_view>div.contents.mypage_question {
	margin-bottom: 0;
	padding: 30px 0 30px 200px;
	border-bottom-width: 2px
}

.board_view>div.contents.mypage_question>.question {
	padding-left: 30px;
	padding-bottom: 50px;
	font-size: 12px
}

.board_view>div.contents.mypage_question>.answer {
	padding-top: 30px;
	padding-left: 30px;
	border-top: 1px solid #dcdcdc;
	font-size: 12px;
	line-height: 18px
}

.board_view>div.contents.mypage_question>.answer strong.title {
	display: block;
	margin-bottom: 10px;
	font-size: 12px;
	color: #198591
}

.board_view>div.contents.mypage_event {
	padding: 30px 0 40px;
	margin: 0;
	text-align: center
}

.mypage_review li {
	overflow: hidden;
	padding: 10px 0;
	border-bottom: 1px solid #e1e1e1;
	clear: both
}

.mypage_review li>div {
	float: left;
	height: 100%
}

.mypage_review li>div.col1 {
	width: 77px
}

.mypage_review li>div.col1 img {
	display: block;
	width: 52px;
	height: 73px;
	border: 1px solid #cfcfcf
}

.mypage_review li>div.col2 {
	width: 243px;
	padding-top: 16px
}

.mypage_review li>div.col2 p.title>span {
	vertical-align: middle
}

.mypage_review li>div.col2 p.title>strong {
	display: inline-block;
	font-size: 14px;
	color: #333;
	vertical-align: middle
}

.mypage_review li>div.col2 .small_star {
	margin-top: 5px;
	margin-left: 30px;
	display: block;
	position: relative;
	width: 80px;
	height: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 -32px
		no-repeat
}

.mypage_review li>div.col2 .small_star .fill {
	position: absolute;
	width: 80px;
	height: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 -46px
		no-repeat
}

.mypage_review li>div.col3 {
	position: relative;
	width: 580px
}

.mypage_review li>div.col3>div {
	width: 100%
}

.mypage_review li>div.col3>div p {
	display: block;
	margin-top: 15px;
	font-size: 13px;
	line-height: 24px;
	word-break: break-all
}

.mypage_review li>div.col3>div p.sub {
	margin-top: 0;
	padding-left: 18px;
	font-size: 12px;
	color: #666;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png)
		0 -754px no-repeat
}

.mypage_review li>div.col3>div textarea {
	width: 100%;
	height: 62px;
	border: 1px solid #e1e1e1;
	background-color: #f2f2f2;
	margin-top: 6px
}

.mypage_review li>div.col4 {
	padding-top: 26px;
	width: 70px;
	text-align: right
}

.mypage_review_no {
	height: 400px;
	width: 100%;
	overflow: hidden;
	text-indent: -99999px;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/img_moviestory_review.jpg)
		50% 50% no-repeat
}

.btn_more {
	width: 80px;
	height: 22px;
	background:
		url(http://image2.megabox.co.kr/mop/home/mypage/btn_more.png)
}

.myseen_txt {
	font-size: 12px
}

.myseen_txt a {
	color: #503396;
	text-decoration: underline
}

.myseen_txt.bFont {
	font-size: 14px
}

button.myseen {
	padding: 8px 32px;
	position: absolute;
	bottom: 0;
	right: 0
}

.movielist_util_wrap.msm {
	width: 75%;
	height: 45px;
	padding: 30px 0 0
}

.mypage_seenmovie {
	border-top: 1px solid #d9d9d9;
	width: 75%
}

.mypage_seenmovie>li {
	height: 150px;
	padding: 10px 0;
	overflow: hidden;
	border-bottom: 1px solid #e1e1e1;
	clear: both;
	position: relative
}

.mypage_seenmovie>li .leftImg {
	float: left
}

.mypage_seenmovie>li .leftImg img {
	width: 90px
}

.mypage_seenmovie>li .rightInfo {
	float: left;
	padding: 7px 0
}

.mypage_seenmovie>li .rightInfo .age_m {
	margin-bottom: 6px
}

.mypage_seenmovie>li .rightInfo strong {
	font-size: 19px
}

.mypage_seenmovie>li .rightInfo .myStar {
	margin-left: 40px;
	height: 15px
}

.mypage_seenmovie>li .rightInfo .myStar .text {
	font-size: 11px;
	display: inline-block;
	vertical-align: text-top;
	padding-right: 7px
}

.mypage_seenmovie>li .rightInfo .myStar .small_star {
	display: inline-block;
	position: relative;
	width: 80px;
	height: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 -32px
		no-repeat
}

.mypage_seenmovie>li .rightInfo .myStar .small_star .fill {
	position: absolute;
	width: 80px;
	height: 14px;
	background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 -46px
		no-repeat
}

.mypage_seenmovie>li .btnArea {
	position: absolute;
	right: 20px;
	bottom: 20px
}

.mypage_seenmovie>li .btnArea button {
	font-size: 13px;
	line-height: 29px;
	height: 30px;
	padding: 0 10px;
	text-align: center
}

.mypage_seenmovie>li .btnArea button.btn_see {
	color: #503396;
	border: 1px solid #503396;
	background-color: #fff
}

.mypage_seenmovie>li .btnArea button.btn_write {
	color: #646464;
	border: 1px solid #646464;
	background-color: #fff
}

.mypage_seenmovie>li .btnDelete {
	position: absolute;
	right: 10px;
	top: 10px
}

.mypage_seenmovie a {
	color: #333
}

.mypage_seenmovie a:hover, .mypage_seenmovie a:focus {
	text-decoration: none
}

.mypage_seenmovie.empty li {
	text-align: center;
	line-height: 120px
}

.badge_realview {
	width: 58px;
	background:
		url('http://image2.megabox.co.kr/mop/home/mypage/badge_realView.png')
		0 0 no-repeat
}

.v_line_wt {
	border-right: 1px solid #fff;
	height: 16px !important;
	width: 14px;
	position: absolute;
	top: 12px
}
/*# sourceMappingURL=theme.css.map */
</style>


</head>
<body>

	<div class="showhim">
		HOVER ME
		<div class="showme">hai</div>
	</div>


	<a href="javascript:;"
		onclick="MovieTimeDatas.nextStepInit('014026',
								'014026',
								'1372',
								'01',
								'1관',
								'2018-08-17',
								'14:30',
								'4',
								'',
								'N')"
		title="영화예매하기"> <span class="hover_time" style="display: none;">14:30~16:57</span>

	</a>




	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html>