<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center">전과 지원서</h1>
<table border="1px" border-collapse="collapse" border-style="solid" border-spacing="0" align="center">
  <tr>
    <td rowspan="2">전과 지원자</td>
    <td>성명</td>
    <td>생년월일</td>
    <td>학번</td>
    <td>연락처</td>
    <td>현소속 학과</td>
    <td>주‧야</td>
    <td>총힉점</td>
  </tr>
  <tr>
    <td>${"성명"}</td>
    <td>${"생년월일"}</td>
    <td>${"학번"}</td>
    <td>${"연락처"}</td>
    <td>${"현소속 학과"}</td>
    <td>${"주‧야"}</td>
    <td>${"총학점"}</td>
  </tr>
  <tr>
    <td>변경사유</td>
    <td colspan="7"></td>
  </tr>
  <tr>
    <td>전과 희망 학과명</td>
    <td colspan="4">
    	<input type="text" name="전과 희망 학과명">
    	<input type="radio" name="주야구분" value="주" checked="checked">주
		<input type="radio" name="주야구분" value="야" >야
    </td>
    <td colspan="3">※ 주‧야간 해당란에 체크 </td>
  </tr>
</table>
</body>
</html>