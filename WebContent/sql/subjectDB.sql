--여기서 과목코드 ( sub_code 생성조건.)
--EX) COM101   ( 전공 과목 )					|			--KYO201	( 교양 과목 ) 
-- com == 학과 이름								|			--KYO == 교양과목이라는 뜻
-- 1 == 1학년 과목 								|			--2 == 교양 과목은 3가지 종류가 있다. 그것에 대한 인덱스 "1, 2, 3" 이 있음
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

코드 과목명 학점. 교수이름 시간.

create table subject(
	sub_code  varchar(10) not null,
	sub_name varchar(50) not null,
	sub_hakjum varchar(10) not null,
	emp_name varchar(10) not null,
	sub_time varchar(10) not null,
	
	constraint subject_pk primary key (sub_code)
);

--//////////////////// 1. 컴퓨터공학과 전공과목 /////////
--//////////////////////////// 1학년 과목 //////////////////
insert into subject values('COM101', 'C언어프로그래밍', '3', '아이유', 'MON123');
insert into subject values('COM102', 'C언어프로그래밍', '3', '경리', 'TUE123');
insert into subject values('COM103', 'C언어프로그래밍', '3', '이도연', 'WED123');
insert into subject values('COM104', '컴퓨터구조', '3', '아이유', 'MON567');
insert into subject values('COM105', '확률과통계', '3', '경리', 'TUE567');
insert into subject values('COM106', '프로그래밍개론', '3', '이도연', 'WED567');
insert into subject values('COM107', '컴퓨터구조', '3', '이도연', 'THU567');
insert into subject values('COM108', 'HTML실습', '3', '아이유', 'FRI567');
--//////////////////////////// 2학년 과목 //////////////////
insert into subject values('COM201', 'JAVA프로그래밍', '3', '아이유', 'MON123');
insert into subject values('COM202', 'JAVA프로그래밍', '3', '경리', 'TUE123');
insert into subject values('COM203', 'JAVA프로그래밍', '3', '이도연', 'WED123');
insert into subject values('COM204', '객체지향프로그래밍', '3', '아이유', 'MON567');
insert into subject values('COM205', '선형대수', '3', '경리', 'TUE567');
insert into subject values('COM206', '이산수학', '3', '이도연', 'WED567');
insert into subject values('COM207', '창의적공학설계', '3', '이도연', 'THU567');
insert into subject values('COM208', '자료구조', '3', '아이유', 'FRI567');
--//////////////////////////// 3학년 과목 //////////////////
insert into subject values('COM301', '운영체제', '3', '아이유', 'MON123');
insert into subject values('COM302', '운영체제', '3', '경리', 'TUE123');
insert into subject values('COM303', '운영체제', '3', '이도연', 'WED123');
insert into subject values('COM304', '윈도우즈프로그래밍', '3', '아이유', 'MON567');
insert into subject values('COM305', '데이터베이스', '3', '경리', 'TUE567');
insert into subject values('COM306', '서버프로그래밍', '3', '이도연', 'WED567');
insert into subject values('COM307', '데이터통신', '3', '이도연', 'THU567');
insert into subject values('COM308', '웹기초프로그래밍', '3', '아이유', 'FRI567');
--//////////////////////////// 4학년 과목 //////////////////
insert into subject values('COM401', '졸업프로젝트', '3', '아이유', 'MON123');
insert into subject values('COM402', '졸업프로젝트', '3', '경리', 'TUE123');
insert into subject values('COM403', '졸업프로젝트', '3', '이도연', 'WED123');
insert into subject values('COM404', 'Android프로그래밍', '3', '아이유', 'MON567');
insert into subject values('COM405', '빅데이터프로그래밍', '3', '경리', 'TUE567');
insert into subject values('COM406', '임베디드시스템', '3', '이도연', 'WED567');
insert into subject values('COM407', '컴퓨터보안', '3', '이도연', 'THU567');
insert into subject values('COM408', '웹고급프로그래밍', '3', '아이유', 'FRI567');

--//////////////////// 2.인문학과 전공과목 /////////
--//////////////////////////// 1학년 과목 //////////////////
insert into subject values('HUM101', '고전시가론', '3', '김아랑', 'MON123');
insert into subject values('HUM102', '고전명작읽기', '3', '박보검', 'TUE123');
insert into subject values('HUM103', '인문학개론', '3', '이준기', 'WED123');
insert into subject values('HUM104', '현대시의이해', '3', '김아랑', 'MON567');
insert into subject values('HUM105', '현대소설의이해', '3', '박보검', 'TUE567');
insert into subject values('HUM106', '기초중국어', '3', '이준기', 'WED567');
insert into subject values('HUM107', '기초일본어', '3', '김아랑', 'THU567');
insert into subject values('HUM108', '사회학', '3', '박보검', 'FRI567');
--//////////////////////////// 2학년 과목 //////////////////
insert into subject values('HUM201', '인간공학개론', '3', '김아랑', 'MON123');
insert into subject values('HUM202', '대중매체와문학', '3', '박보검', 'TUE123');
insert into subject values('HUM203', '역사와문화', '3', '이준기', 'WED123');
insert into subject values('HUM204', '인터넷정보활용', '3', '김아랑', 'MON567');
insert into subject values('HUM205', '정보사회의이해', '3', '박보검', 'TUE567');
insert into subject values('HUM206', '중국어회화', '3', '이준기', 'WED567');
insert into subject values('HUM207', '일본어회화', '3', '김아랑', 'THU567');
insert into subject values('HUM208', '정보학개론', '3', '박보검', 'FRI567');
--//////////////////////////// 3학년 과목 //////////////////
insert into subject values('HUM301', '역사산책', '3', '김아랑', 'MON123');
insert into subject values('HUM302', '전자문서관리론', '3', '박보검', 'TUE123');
insert into subject values('HUM303', '언어와정보', '3', '이준기', 'WED123');
insert into subject values('HUM304', '음성학', '3', '김아랑', 'MON567');
insert into subject values('HUM305', '문예창작연습', '3', '박보검', 'TUE567');
insert into subject values('HUM306', '고급중국어', '3', '이준기', 'WED567');
insert into subject values('HUM307', '고급일본어', '3', '김아랑', 'THU567');
insert into subject values('HUM308', '한국사회의이해', '3', '박보검', 'FRI567');
--//////////////////////////// 4학년 과목 //////////////////
insert into subject values('HUM401', '역사연구론', '3', '김아랑', 'MON123');
insert into subject values('HUM402', '현대사회의문제', '3', '박보검', 'TUE123');
insert into subject values('HUM403', '자료구분론', '3', '이준기', 'WED123');
insert into subject values('HUM404', '음성학', '3', '김아랑', 'MON567');
insert into subject values('HUM405', '웹콘텐츠구축론', '3', '박보검', 'TUE567');
insert into subject values('HUM406', '데이터베이스이용론', '3', '이준기', 'WED567');
insert into subject values('HUM407', '기록정보봉사론', '3', '김아랑', 'THU567');
insert into subject values('HUM408', '과학기술정보론', '3', '박보검', 'FRI567');

--//////////////////// 3. 시각디자인학과 전공과목 /////////
--//////////////////////////// 1학년 과목 //////////////////
insert into subject values('DES101', '드로잉기법', '3', '강하늘', 'MON123');
insert into subject values('DES102', '디자인발상', '3', '최여진', 'TUE123');
insert into subject values('DES103', '조형실험', '3', '이성경', 'WED123');
insert into subject values('DES104', '디자인컨셉', '3', '강하늘', 'MON567');
insert into subject values('DES105', '디자인사', '3', '이성경', 'TUE567');
insert into subject values('DES106', '디자인비평', '3', '최여진', 'WED567');
insert into subject values('DES107', '공간디자인론', '3', '강하늘', 'THU567');
insert into subject values('DES108', '기초컴퓨터디자인', '3', '이성경', 'FRI567');
--//////////////////////////// 2학년 과목 //////////////////
insert into subject values('DES201', '공간디자인', '3', '강하늘', 'MON123');
insert into subject values('DES202', '공간조형실험', '3', '최여진', 'TUE123');
insert into subject values('DES203', '2D애니메이션', '3', '이성경', 'WED123');
insert into subject values('DES204', '시나리오', '3', '강하늘', 'MON567');
insert into subject values('DES205', '컴퓨터그래픽스', '3', '최여진', 'TUE567');
insert into subject values('DES206', '드로잉실습', '3', '이성경', 'WED567');
insert into subject values('DES207', '입체조형', '3', '최여진', 'THU567');
insert into subject values('DES208', '영상연출', '3', '이성경', 'FRI567');
--//////////////////////////// 3학년 과목 //////////////////
insert into subject values('DES301', '실내디자인', '3', '강하늘', 'MON123');
insert into subject values('DES302', '영상예술론', '3', '최여진', 'TUE123');
insert into subject values('DES303', '3D애니메이션', '3', '이성경', 'WED123');
insert into subject values('DES304', '웹애니메이션', '3', '강하늘', 'MON567');
insert into subject values('DES305', '전시공간디자인', '3', '최여진', 'TUE567');
insert into subject values('DES306', '영상제작프로젝트', '3', '이성경', 'WED567');
insert into subject values('DES307', '프레젠테이션기법', '3', '최여진', 'THU567');
insert into subject values('DES308', '환경디자인', '3', '이성경', 'FRI567');
--//////////////////////////// 4학년 과목 //////////////////
insert into subject values('DES401', '포트폴리오', '3', '강하늘', 'MON123');
insert into subject values('DES402', '현장실습', '3', '최여진', 'TUE123');
insert into subject values('DES403', '애니메이션제작', '3', '이성경', 'WED123');
insert into subject values('DES404', '타이포그래피', '3', '강하늘', 'MON567');
insert into subject values('DES405', '졸업프로젝트', '3', '최여진', 'TUE567');
insert into subject values('DES406', '모델링기법', '3', '이성경', 'WED567');
insert into subject values('DES407', '복합공간디자인', '3', '최여진', 'THU567');
insert into subject values('DES408', '사운드디자인', '3', '이성경', 'FRI567');


--//////////////////// 5. 교양과목  /////////
--//////////////////////////// 교양 1번 체육 //////////////////
insert into subject values('KYO101', '테니스의이해', '2', '박보검', 'THU012');
insert into subject values('KYO102', '골프의이해', '2', '강하늘', 'THU034');
insert into subject values('KYO103', '배드민턴의이해', '2', '이준기', 'FRI012');
insert into subject values('KYO104', '수영의이해', '2', '경리', 'FRI034');
insert into subject values('KYO105', '요가의세계', '2', '최여진', 'THU012');
insert into subject values('KYO106', '오리엔티어링', '2', '아이유', 'THU034');
insert into subject values('KYO107', '당구의이해', '2', '박보검', 'FRI012');
insert into subject values('KYO108', '필라테스', '2', '이도연', 'FRI034');
--//////////////////////////// 교양 2번 영어 //////////////////
insert into subject values('KYO201', '취업영어700', '2', '김아랑', 'THU012');
insert into subject values('KYO202', 'Travel English', '2', '박보검', 'THU034');
insert into subject values('KYO203', 'Job Interview Success', '2', '아이유', 'FRI012');
insert into subject values('KYO204', '취업영어850', '2', '이성경', 'FRI034');
insert into subject values('KYO205', '영국문학개관', '2', '이도연', 'THU012');
insert into subject values('KYO206', '영어로세상읽기', '2', '김아랑', 'THU034');
insert into subject values('KYO207', '미국현대시', '2', '경리', 'FRI012');
insert into subject values('KYO208', '기본영어회화', '2', '이도연', 'FRI034');
--//////////////////////////// 교양 2번 취업 //////////////////
insert into subject values('KYO301', '창업으로세상읽기', '2', '박보검', 'THU012');
insert into subject values('KYO302', '취업성공전략', '2', '이도연', 'THU034');
insert into subject values('KYO303', '프리젠테이션기법', '2', '김아랑', 'FRI012');
insert into subject values('KYO304', '취업상식테마', '2', '강하늘', 'FRI034');
insert into subject values('KYO305', '취업전략글쓰기', '2', '아이유', 'THU012');
insert into subject values('KYO306', '인성소양교육', '2', '경리', 'THU034');
insert into subject values('KYO307', '대학과지성', '2', '이성경', 'FRI012');
insert into subject values('KYO308', '실전면접준비', '2', '최여진', 'FRI034');


