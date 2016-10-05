<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
학 적 관 리
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/basic.do">
├ 학 적 조 회
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/basicEdit.do">
└ 정 보 수 정
</a>
</div>
</div><br><br>



<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
성 적 관 리
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/currentGrade.do">
├ 성적 조회(금학기)
</a><br><p></p>
 <a class="btn btn-default6" href="/FirstProject/gradeView.do?sj_grade=1&sj_term=1" >
└ 성적 조회(누 적)
</a>
</div>
</div><br><br>



<a class="btn btn-default5" href="/FirstProject/pickSubject.do?grade=1&major_sel=default">
수 강 신 청
</a><DIV style='display:none'>
</div>
</div><br><br>



<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
신 청 서 비 스
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/i_o_Absence.do">
├ 휴 학 신 청
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/g_b_School.do">
├ 복 학 신 청
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/c_Major.do">
└ 전 과 신 청
</a>
</div>
</div><br><br>



<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
강 의 자 료 실
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/lectureDate.do">
├ 강 의 계 획 서
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/lectureListForm.do">
├ 강 의 자 료
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/stuSubmitListForm.do">
└ 과 제 물 제 출
</a>
</div>
</div><br><br>



<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
계 절 학 기
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/seasonSubjcet.do">
├ 계절학기수강신청
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/seasonGrade.do?sj_grade=3&sj_term=3">
└ 계절학기성적조회
</a>
</div>
</div><br>
