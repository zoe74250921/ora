<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

* {
	margin: 0px;
	padding: 0px;
}

header {
	width: 1140px;
	height: 120px;
	margin: 0 auto;
	font-family: 'NEXON Lv1 Gothic Low OTF';
	border: solid 1px red;
}

#logo {
	float: left; 
	margin: 20px 0 0 20px;
}

#top {
	margin: 30px 20px 0 0;
	font-size: 16px;
	float: right;
	text-align: right;   
}

#top li {
		display: inline;
		margin-left: 18px;
}

#login {
	font-size: 14px;
	text-align: right;
}
   
h2 {
	border: solid 1px orange;
	padding: 20px;
	width: 120px;
	margin: 40px auto;
	color: #88bea6;
	text-align: center;
	font-family: 'NEXON Lv1 Gothic Low OTF';
}

#contents {
	width: 1100px;
	height: 700px;
	margin: 20px auto;
	font-family: 'NEXON Lv1 Gothic Low OTF';
	font-size: 12pt;
	border: solid 1px yellow;
}

.option {
	font-family: 'NEXON Lv1 Gothic Low OTF';
	font-size: 12pt;
}

.button {
	text-align: center;
	font-family: 'NEXON Lv1 Gothic Low OTF';
	size: 13pt;
}


footer {
	width: 100%;
	height: 150px;
	margin-top: 30px;
	font-family: 'NEXON Lv1 Gothic Low OTF';
	border: solid 1px green;
}

#footer_box {
	width: 1140px;
	height: 150px;
	margin: 0 auto;
	text-align: center;
}

#footer_icon{
	margin: 0 auto;
}

#address {
	margin: 10px 0 0 0;
	font-size: 11px;
	list-style-type: none;
}


</style>
</head>
<body>

 <header>
      <div id="logo">
         <img src='img/logo.png' height="100">
      </div>
      <div id="login">
         summer님의 마이페이지
         <img src="img/myIcon.png" height="40">
         &nbsp;&nbsp;
      </div>
      <ul id="top">
      	<li>오늘의 라이딩</li>
      	<li>자전거 길</li>
      	<li>후기게시판</li>
      	<li>번개게시판</li>
      	<li>정보게시판</li>
      </ul>
   </header>
   
	<h2>공지사항</h2>
	<hr>
	<section id="contents">
		<form action="insertNoticeOk.do" method="post">
			<select class="option" name="code_value" size="1">
	     		<option value="0">전체</option>
	     		<c:forEach var="c" items="${category }">
	     			<option value="${c.code_value }">${c.code_name }</option>
	     		</c:forEach>
	        </select>
	        <br>
			<br>
			<input type="hidden" name="n_no" value="${n_no }">
			글 제목  <input type="text" name="n_title" size="50" placeholder="제목을 입력하세요">
			<br>
			<br>
			<textarea rows="30" cols="154" name="n_content" placeholder="내용을 입력하세요"></textarea>
			<br>
			<br>
			<div class="button">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
			</div>
		</form>
	</section>	

   <footer>
      <div id='footer_box'>
            <div id="footer_icon" >
               <img src='img/instagram.png' height="50px">
               <img src='img/facebook.png' height="50px">
               <img src='img/twitter.png' height="50px">
               <ul id="address">
                  <li>04108 | 서울시 마포구 백범로 23 구프라자 3층</li>
                  <li>TEL: 02-707-1480 | Email: ora@bit.com</li>
                  <li>COPYRIGHT (C)2020 오늘의 라이딩 ALL RIGHTS RESERVED</li>
               </ul>
            </div>
            
         </div>
   </footer>
</body>
</html>