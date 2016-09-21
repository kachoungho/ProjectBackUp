drop table subject;

insert into subject
values('0991068', '이종상', 'm', '890418-1241916', '멀티미디어공학')

--여기서 과목코드 ( sub_code 생성조건.)
--EX) COM1101   ( 전공 과목 )					|			--KYA0201	( 교양 과목 ) 
-- com == 학과 이름								|			--KYA == 교양과목이라는 뜻
-- 11 == 1학년 1학기								|			--02 == 교양 과목은 3가지 종류가 있다. 그것에 대한 인덱스 "01, 02, 03" 이 있음
-- 01 == 과목 Index								|			--01 == 과목 Index.

create table subject(
	sub_code  varchar(10) not null,
	sub_name varchar(10) not null,
	professor varchar(10) not null,
	sub_time varchar(10) not null,
	
	constraint subject_pk primary key (sub_code)
);

select * from student;

insert into subject
values('0991068', '이종상', 'm', '890418-1241916', '멀티미디어공학')


