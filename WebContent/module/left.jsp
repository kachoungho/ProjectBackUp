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
학 적 관 리
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/basic.do?mem_num=${mem_num}" >
학 적 조 회
</a><br>
└ <a class="btn btn-default" href="/FirstProject/basicEdit.do?mem_num=${mem_num}">
정 보 수 정
</a>
</div>
</div><br>



<a class="btn btn-default" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
성 적 관 리
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/currentGrade.do?mem_num=${mem_num}">
성 적 조 회(금학기)
</a><br>
└ <a class="btn btn-default" href="/FirstProject/gradeView.do?mem_num=${mem_num}" >
성 적 조 회(누 적)
</a>
</div>
</div><br>



<a class="btn btn-default" href="/FirstProject/pickSubject.do?mem_num=${mem_num}" >
수 강 신 청
</a><DIV style='display:none'>
</div>
</div><br>



<a class="btn btn-default" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
신 청 서 비 스
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/i_o_Absence.do?mem_num=${mem_num}" >
휴 학 신 청
</a><br>
├ <a class="btn btn-default" href="/FirstProject/g_b_School.do?mem_num=${mem_num}" >
복 학 신 청
</a><br>
└ <a class="btn btn-default" href="/FirstProject/c_Major.do?mem_num=${mem_num}">
전 과 신 청
</a>
</div>
</div><br>



<a class="btn btn-default" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
강 의 자 료 실
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/lectureDate.do?mem_num=${mem_num}" >
강 의 계 획 서
</a><br>
├ <a class="btn btn-default" href="/FirstProject/program_Select.do?mem_num=${mem_num}" >
강 의 자 료
</a><br>
└ <a class="btn btn-default" href="/FirstProject/submit.do?mem_num=${mem_num}" >
과 제 물 제 출
</a>
</div>
</div><br>



<a class="btn btn-default" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
계 절 학 기
</a><DIV style='display:none'>
├ <a class="btn btn-default" href="/FirstProject/seasonSubjcet.do?mem_num=${mem_num}">
계절학기수강신청
</a><br>
└ <a class="btn btn-default" href="/FirstProject/seasonGrade.do?mem_num=${mem_num}">
계절학기성적조회
</a>
</div>
</div><br>