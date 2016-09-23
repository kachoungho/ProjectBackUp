<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.btn-default {
	text-align: left;
	font-family: '1훈고딕굴림';'
	color: black;
	font-size: 20px;
	margin-top: 10px;
}
</style>
<a class="btn btn-default" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
관리자 개인정보
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/adminBasic.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}" >
개인 정보 보기
</a><br>
└ <a class="btn btn-default" href="/FirstProject/adminEdit.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">
개인 정보 수정
</a>
</div>
</div><br>



<a class="btn btn-default" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
학 생 정 보
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/stuBasic.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}" >
학생 정보 보기
</a><br>
├ <a class="btn btn-default" href="/FirstProject/stuGrade.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}" >
학생 성적 보기	
</a><br>
└ <a class="btn btn-default" href="/FirstProject/stuPickSubject.do?mem_num=${mem_num}&mem_name=${mem_name}&result=${result}">
학생 수강신청 내역
</a>
</div>
</div><br>