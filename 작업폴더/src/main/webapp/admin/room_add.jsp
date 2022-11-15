<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>My JSP Page</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class='page-header'>객실추가</h1>
		
		<!-- 추가를 위한 HTML 폼 시작 -->
		<form class="form-horizontal" method="post" action="/admin/AdminRoomAddOk.ad">
		  <div class="form-group">
		    <label for="r_id" class="col-sm-2 control-label">객실 아이디</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="r_id" name="r_id" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="r_type" class="col-sm-2 control-label">객실 종류</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="r_type" name="r_type" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="r_capacity" class="col-sm-2 control-label">수용 인원</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="r_capacity" name="r_capacity" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="r_price" class="col-sm-2 control-label">가격</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="r_price" name="r_price" />
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="r_img" class="col-sm-2 control-label">이미지</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="r_img" name="r_img" />
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-default">저장하기</button>
		    </div>
		  </div>
		</form>
		<!--// 추가를 위한 HTML 폼 끝  -->
	</div>
</body>
</html>



