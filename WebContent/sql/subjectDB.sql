--여기서 과목코드 ( sub_code 생성조건.)
--EX) COM1101   ( 전공 과목 )					|			--KYA0201	( 교양 과목 ) 
-- com == 학과 이름								|			--KYA == 교양과목이라는 뜻
-- 11 == 1학년 1학기								|			--02 == 교양 과목은 3가지 종류가 있다. 그것에 대한 인덱스 "01, 02, 03" 이 있음
-- 01 == 과목 Index								|			--01 == 과목 Index.

--시간에 관한 코드?? 이렇게 해석하세요.
--EX) MON123     
--월요일 123교시 라는 뜻으로 해석.
--화요일 345교시면 TUE345 라고 표기 하겠습니당ㅇㅈ?
--전공과목일 경우 3학점이기때문에.
--교양일 경우 2학점이므로                  TUE012
--                                        0교시는 없다 치고. 12교시 라는뜻.

select * from subject;
drop table subject;

insert into subject
values('0991068', '이종상', 'm', '890418-1241916', '멀티미디어공학')
코드 과목명 학점. 교수이름 시간.

create table subject(
	sub_code  varchar(10) not null,
	sub_name varchar(10) not null,
	sub_hakjum varchar(10) not null,
	emp_name varchar(10) not null,
	sub_time varchar(10) not null,
	
	constraint subject_pk primary key (sub_code)
);


