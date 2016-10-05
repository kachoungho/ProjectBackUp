<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
관리자 개인정보
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/adminBasic.do">
├ 개인 정보 보기
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/adminBasicEdit.do">
└ 개인 정보 수정
</a>
</div>
</div><br><br>



<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
학 생 정 보
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/stuBasic.do?major=default">
├ 학생 정보 보기
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/stuGrade.do" >
├ 학생 성적 보기	
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/stuPickSubject.do?major=default">
└ 학생수강신청내역
</a>
</div>
</div><br><br>

<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
승인 페이지
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/absenceApprove.do">
├ 휴 학 승 인
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/returnApprove.do" >
├ 복 학 승 인	
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/majorApprove.do">
└ 전 과 승 인
</a>
</div>
</div><br><br>

<a class="btn btn-default5" href=#none onclick=this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';>
수 업 정 보
</a><DIV style='display:none'>
<a class="btn btn-default6" href="/FirstProject/adminLectureDateForm.do">
├ 강의 계획서 관리
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/adminLectureMaterial.do">
├ 강의 자료 관리
</a><br><p></p>
<a class="btn btn-default6" href="/FirstProject/adminSubmit.do">
└ 강의 과제물 관리
</a><br>
</DIV>