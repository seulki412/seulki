
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
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
		<h1 class='page-header'>교수 상세 보기</h1>
		
		<!-- 조회결과를 출력하기 위한 표 시작 -->
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th class="info text-center" width="130">교수번호</th>
					<td>${prof.profno }</td>
				</tr>
				<tr>
					<th class="info text-center">이름</th>
					<td>${prof.name }</td>
				</tr>
				<tr>
					<th class="info text-center">아이디</th>
					<td>${prof.userid }</td>
				</tr>
				<tr>
					<th class="info text-center">직급</th>
					<td>${prof.position }</td>
				</tr>
				<tr>
					<th class="info text-center">급여</th>
					<td>${prof.sal }</td>
				</tr>
				<tr>
					<th class="info text-center">입사일</th>
					<td>${prof.hiredate }</td>
				</tr>
			</tbody>
		</table>
		<!--// 조회결과를 출력하기 위한 표 끝  -->
		
		<!-- 버튼 시작 -->
		<div class="text-center">
			<a href="${pageContext.request.contextPath}/school/ProfList.sc" class="btn btn-primary">목록</a>
			<a href="${pageContext.request.contextPath}/school/ProfAdd.sc" class="btn btn-info">추가</a>
			<a href="${pageContext.request.contextPath}/school/ProfEdit.sc?profno=${prof.profno }" 
			 class="btn btn-warning">수정</a>
			<a href="${pageContext.request.contextPath}/school/ProfDelete.sc?profno=${prof.profno }"
			 class="btn btn-danger">삭제</a>
		</div>
		<!--// 버튼 끝 -->
	</div>
</body>
</html>



