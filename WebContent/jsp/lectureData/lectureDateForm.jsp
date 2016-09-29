<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<link href="../view/mystyle.css" rel="stylesheet" type=text/css">
<title>게시판</title>
</head>
<body >
   <center>
      <b>현 학기 강의 계획서(수강과목  :  ${ count } 과목 ) </b><!-- 현학기 듣는 과목숫자. -->
		<br>
		<br>
		<br>
 
      <c:if test="${ count  == 0 } ">
         <table width="700" border="1" cellpadding="0" cellspacing="0">
            <tr>
               <td align="center">이번 학기에 수강중인 과목이 없습니다.</td>
            </tr>
         </table>
      </c:if>
      <c:if test="${count>0}">
         <table width="700" border="1" cellpadding="0" cellspacing="0"
            align="center">
            <tr height="30" >
               <td align="center" width="50">번 호</td>
               <td align="center" width="50">제 목</td>
               <td align="center" width="50">담당교수</td>
               <td align="center" width="50">학 년</td>
               <td align="center" width="50">학 점</td>

               <c:forEach var="list" items="${ list }" varStatus="status">
                  <tr height="30">
                     <td align="center" width="50">                           
                           <c:out value="${status.count }"></c:out></td>
                      <td width="250">
                         <!-- 상세보기 페이지 --> <a
                        href="lectureDateContents.do?sub_code=${ list.sub_code }">
                           ${ list.sub_name } </a> 
                           
                          </td>
                     <td align="center" width="100"> ${ list.emp_name }</a></td>
                     <td align="center" width="150">${list.sj_grade }</td><!--  -->
                     <td align="center" width="150">${list.sub_hakjum }</td><!--  -->
                  </tr>
               </c:forEach>
         </table>
</c:if>
   </center>
</body>
</html>