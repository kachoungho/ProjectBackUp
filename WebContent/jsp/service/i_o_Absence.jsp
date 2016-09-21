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
<h1 style="text-align:center">휴학신청서</h1>
<table border="1px" border-collapse="collapse" border-style="solid" border-spacing="0" align="center">
  <tr>
    <td>학번/학년</td>
    <td>${"학번"}</td>
    <td>${"학년"}</td>
    <td>성명</td>
    <td>${"성명"}</td>
  </tr>
  <tr>
    <td>소         속</td>
    <td colspan="2">${"소속"}</td>
    <td>전공</td>
    <td>${"전공"}</td>
  </tr>
  <tr>
    <td>주민등록번호</td>
    <td colspan="2">${"주민등록번호"}</td>
    <td>휴학구분</td>
    <td>
    	<input type="radio" name="휴학구분" value="일반휴학" checked="checked">일반휴학
		<input type="radio" name="휴학구분" value="군휴학" >군휴학
    </td>
  </tr>
  <tr>
    <td>복학예정학기</td>
    <td colspan="2"><input type="text" name="복학 예정 학기"></td> 
    <td>이수학기</td>
    <td>${"이수학기"}</td>
  </tr>
  <tr>
    <td>이동전화번호</td>
    <td colspan="2">${"이동전화번호" }</td>
    <td>국적</td>
    <td>${"국적" }</td>
  </tr>

</table>
</body>
</html>