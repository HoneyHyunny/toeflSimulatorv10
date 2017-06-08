<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>  
 <%@ page import="javax.sql.*,javax.naming.*" %>     


<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>Admin</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-144-precomposed.png" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="bootstrap.min.css" />

		<!-- 나눔고딕 웹 폰트 적용 -->
		<style>
			body,html,.main-display-area,.col-md-5 {
 		  	height:100%;
			}
		</style>
</head>
<body>
	<div class="main-display-area">
       <div class="col-md-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                	${s_id} 님, <br>환영합니다!<br>
                </h3>
            </div>
            <div class="panel-body">
                <div class="list-group">
                    <a href="http://soledot.com" class="list-group-item" target="info1">결제 정보</a> 
                    <a href="test2.jsp" class="list-group-item" target="info2">응시 정보</a> 
                    <a href="test1.jsp" class="list-group-item" target="info3">회원 정보</a> 
					<a href="http://hs.inven.co.kr/" class="list-group-item" target="info4">1</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">2</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">3</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">4</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">5</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">6</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">7</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">8</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">9</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">10</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">11</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">12</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">13</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">14</a>
					<a href="http://www.auction.co.kr/" class="list-group-item" target="info4">15</a>                    
 
                </div>
            </div>
        </div>
        <!--<iframe src='subject.html' id="subject" name='subject' width="100%" height="100%" seamless="seamless" frameborder="1" align="left"></iframe>-->
    </div>
    <div class="col-md-5">
    	<a href="http://soledot.com" class="btn btn-block" id="openBtn" width="120%">링크: 결제 정보</a>
        <iframe src="" id="info1" class="iframe" name="info1" width="105%" height="95%" seamless=""></iframe>
    </div>
    <div class="col-md-5">
    	<a href="Test_List.jsp" class="btn btn-block" id="openBtn" width="120%">링크: 응시 정보</a>
      	<iframe src="" id="info2" class="iframe" name="info2" width="105%" height="95%" seamless=""></iframe>
    </div>
    <div class="col-md-5">
    	<a href="Member_List.jsp" class="btn btn-block" id="openBtn" width="120%">링크: 회원 정보</a>
        <iframe src="" id="info3" class="iframe" name="info3" width="105%" height="95%" seamless=""></iframe>
    </div>
    <div class="col-md-5">
    	<a href="http://hs.inven.co.kr/" class="btn btn-block" id="openBtn" width="120%">링크: 관리자 관리</a>
      	<iframe src="" id="info4" class="iframe" name="info4" width="105%" height="95%" seamless=""></iframe>
    </div>
 </div>
</body>
</html>