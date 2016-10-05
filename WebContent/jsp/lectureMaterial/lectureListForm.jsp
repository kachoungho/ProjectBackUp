<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<title>게시판</title>
</head>
<body >
   <center>
      <br>
	<table align="center">
		 <td id="th2" >현 학기 수강 중인 과목 (수강과목  :  ${ count } 과목 ) </td><!-- 현학기 듣는 과목숫자. -->
	 </table>
		<br>
		<br>
      <c:if test="${ count  == 0 } ">
         <table width="700">
            <tr>
               <td id="th2">이번 학기에 수강중인 과목이 없습니다.</td>
            </tr>
         </table>
      </c:if>
      <c:if test="${count>0}">
         <table width="700" align="center">
            <tr height="30" >
               <td id="th" align="center" width="50">번 호</td>
               <td id="th" align="center" width="50">제 목</td>
               <td id="th" align="center" width="50">담당교수</td>
               <td id="th" align="center" width="50">학 년</td>
               <td id="th" align="center" width="50">학 점</td>

               <c:forEach var="list" items="${ list }" varStatus="status">
                  <tr height="30">
                     <td id="th2" align="center" width="50">                           
                           <c:out value="${status.count }"></c:out></td>
                      <td id="th2" width="250">
                         <!-- 상세보기 페이지 --> <a
                        href="lectureMaterialListForm.do?sub_code=${ list.sub_code }&sub_name=${list.sub_name}">
                           ${ list.sub_name } </a> 
                          </td>
                     <td id="th2" align="center" width="100"> ${ list.emp_name }</a></td>
                     <td id="th2" align="center" width="150">${list.sj_grade }</td><!--  -->
                     <td id="th2" align="center" width="150">${list.sub_hakjum }</td><!--  -->
                  </tr>
               </c:forEach>
         </table>
</c:if>
   </center>
</body>
</html>