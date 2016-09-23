<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>
<table border="1" >
		<tr align="center">
			<td bgcolor="skyblue" width="100">구   분</td>
			<td bgcolor="skyblue" width="400">세 부 메 뉴</td>
			<td bgcolor="skyblue" width="200">주 요 기 능</td>
			<td bgcolor="skyblue" width="200">전 화 번 호</td>
		</tr>
		<tr align="center">
			<td rowspan="2">관리자 <br>개인정보</td>
			<td>개인 정보 보기</td>
			<td>개인 정보 확인</td>
			<td>031-0000-0001</td>
		</tr>
		<tr align="center">
			<td>개인 정보 수정</td>
			<td>개인 정보 수정</td>
			<td>031-0000-0001</td>
		</tr>
		
		<tr align="center">
			<td rowspan="3">학 생 정 보</td>
			<td>학생 정보 보기</td>
			<td>학생 개인 정보 보기</td>
			<td>031-0000-0002</td>
		</tr>
		<tr align="center">
			<td>학생 성적 보기</td>
			<td>전체 학생 성적 조회</td>
			<td>031-0000-0002</td>
		</tr>
		<tr align="center">
			<td>학생 수강신청 내역</td>
			<td>전체 학생 <br>수강신청 내역 조회</td>
			<td>031-0000-0002</td>
		</tr>
		
	</table>
</body>
</html>