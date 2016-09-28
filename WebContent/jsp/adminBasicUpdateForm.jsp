<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<c:if test="${ check == 0 }">
      <meta  http-equiv="Refresh"  content="0; url=/FirstProject/adminBasic.do?mem_num=${mem_num}">
</c:if>   

<c:if test="${ check == 1 }">
   <script type="text/javascript">
   <!--
         alert("수정 실패!!");
         history.go(-1);
   -->      
   </script>
</c:if>