drop table sungjuk;
select * from sungjuk;

select sub_gradeValue from sungjuk where stu_num= '110001';

update sungjuk set sub_grade = ?, sub_gradevalue = ? "
					+ "where sub_code = ? and stu_num = ? and sj_grade = ? and sj_term = ?


create table sungjuk(
	stu_num  varchar(10) not null,
	sj_year varchar(10) not null,
	sj_grade varchar(10) not null,
	sj_term varchar(40) not null,
	sub_grade varchar(5) not null,
	sub_gradeValue float(10) not null,
	sub_code  varchar(10) not null,
	sub_name varchar(50) not null,
	sub_hakjum number(10) not null,
	emp_name varchar(10) not null
	);
--/////////////// 090001 이종상 2009년 1학기 /////////////////////////////
insert into sungjuk values('090001','2009','1','1','A','4.5','COM101','C언어프로그래밍','3','아이유');
insert into sungjuk values('090001','2009','1','1','B','3.5','COM104', '컴퓨터구조', '3', '아이유');
insert into sungjuk values('090001','2009','1','1','D','2.5','COM105', '확률과통계', '3', '경리');
insert into sungjuk values('090001','2009','1','1','C','2.5','COM106', '프로그래밍개론', '3', '이도연');
insert into sungjuk values('090001','2009','1','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('090001','2009','1','1','C','2.5','KYO105', '요가의세계', '2', '최여진');
--/////////////// 110001 가충호 2011년 1학기 /////////////////////////////
insert into sungjuk values('110001','2011','1','1','A','4.5','COM101','C언어프로그래밍','3','아이유');
insert into sungjuk values('110001','2011','1','1','A','4.5','COM104', '컴퓨터구조', '3', '아이유');
insert into sungjuk values('110001','2011','1','1','A','4.5','COM105', '확률과통계', '3', '경리');
insert into sungjuk values('110001','2011','1','1','A','4.5','COM106', '프로그래밍개론', '3', '이도연');
insert into sungjuk values('110001','2011','1','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('110001','2011','1','1','B','3.5','KYO104', '수영의이해', '2', '경리');
--/////////////// 090001 이종상 2009년 2학기 /////////////////////////////
insert into sungjuk values('090001','2009','1','2','B','3.5','COM108', 'HTML실습', '3', '아이유');
insert into sungjuk values('090001','2009','1','2','C','2.5','COM104', '컴퓨터구조', '3', '아이유');
insert into sungjuk values('090001','2009','1','2','B','3.5','KYO107', '당구의이해', '2', '박보검');
insert into sungjuk values('090001','2009','1','2','A','4.5','COM102', 'C언어프로그래밍', '3', '경리');
insert into sungjuk values('090001','2009','1','2','A','4.5','KYO203', 'Job Interview Success', '2', '아이유');
insert into sungjuk values('090001','2009','1','2','A','4.5','KYO201', '취업영어700', '2', '김아랑');
--/////////////// 110001 가충호 2011년 2학기 /////////////////////////////
insert into sungjuk values('110001','2011','1','2','A','4.5','COM108', 'HTML실습', '3', '아이유');
insert into sungjuk values('110001','2011','1','2','A','4.5','COM104', '컴퓨터구조', '3', '아이유');
insert into sungjuk values('110001','2011','1','2','A','4.5','KYO107', '당구의이해', '2', '박보검');
insert into sungjuk values('110001','2011','1','2','A','4.5','COM102', 'C언어프로그래밍', '3', '경리');
insert into sungjuk values('110001','2011','1','2','A','4.5','KYO203', 'Job Interview Success', '2', '아이유');
insert into sungjuk values('110001','2011','1','2','B','3.5','KYO201', '취업영어700', '2', '김아랑');
--/////////////// 090001 이종상 2010년 1학기 /////////////////////////////
insert into sungjuk values('090001','2010','2','1','A','4.5','COM201', 'JAVA프로그래밍', '3', '아이유');
insert into sungjuk values('090001','2010','2','1','A','4.5','COM204', '객체지향프로그래밍', '3', '아이유');
insert into sungjuk values('090001','2010','2','1','B','3.5','COM206', '이산수학', '3', '이도연');
insert into sungjuk values('090001','2010','2','1','B','3.5','KYO102', '골프의이해', '2', '강하늘');
insert into sungjuk values('090001','2010','2','1','B','3.5','KYO105', '요가의세계', '2', '최여진');
insert into sungjuk values('090001','2010','2','1','B','3.5','KYO201', '취업영어850', '2', '이성경');
--/////////////// 110001 가충호 2012년 1학기 /////////////////////////////
insert into sungjuk values('110001','2012','2','1','A','4.5','COM201', 'JAVA프로그래밍', '3', '아이유');
insert into sungjuk values('110001','2012','2','1','A','4.5','COM204', '객체지향프로그래밍', '3', '아이유');
insert into sungjuk values('110001','2012','2','1','B','3.5','COM206', '이산수학', '3', '이도연');
insert into sungjuk values('110001','2012','2','1','B','3.5','KYO102', '골프의이해', '2', '강하늘');
insert into sungjuk values('110001','2012','2','1','A','4.5','KYO105', '요가의세계', '2', '최여진');
insert into sungjuk values('110001','2012','2','1','A','4.5','KYO201', '취업영어850', '2', '이성경');
--/////////////// 090001 이종상 2010년 2학기 /////////////////////////////
insert into sungjuk values('090001','2010','2','2','A','4.5','COM207', '창의적공학설계', '3', '아이유');
insert into sungjuk values('090001','2010','2','2','C','2.5','COM208', '자료구조', '3', '아이유');
insert into sungjuk values('090001','2010','2','2','B','3.5','COM205', '선형대수', '3', '경리');
insert into sungjuk values('090001','2010','2','2','B','3.5','KYO206', '영어로세상읽기', '2', '김아랑');
insert into sungjuk values('090001','2010','2','2','A','4.5','KYO202','Travel English', '2', '박보검');
insert into sungjuk values('090001','2010','2','2','B','3.5','KYO207', '미국현대시', '2', '경리');
--/////////////// 110001 가충호 2012년 2학기 /////////////////////////////
insert into sungjuk values('110001','2012','2','2','A','4.5','COM207', '창의적공학설계', '3', '아이유');
insert into sungjuk values('110001','2012','2','2','B','3.5','COM208', '자료구조', '3', '아이유');
insert into sungjuk values('110001','2012','2','2','B','3.5','COM205', '선형대수', '3', '경리');
insert into sungjuk values('110001','2012','2','2','A','4.5','KYO206', '영어로세상읽기', '2', '김아랑');
insert into sungjuk values('110001','2012','2','2','A','4.5','KYO202','Travel English', '2', '박보검');
insert into sungjuk values('110001','2012','2','2','B','3.5','KYO207', '미국현대시', '2', '경리');
--/////////////// 110001 가충호 2015년 1학기 /////////////////////////////
insert into sungjuk values('110001','2015','3','1','A','4.5','COM404', 'Android프로그래밍', '3', '아이유');
insert into sungjuk values('110001','2015','3','1','B','3.5','COM405', '빅데이터프로그래밍', '3', '경리');
insert into sungjuk values('110001','2015','3','1','B','3.5','COM307', '데이터통신', '3', '이도연');
insert into sungjuk values('110001','2015','3','1','B','3.5','KYO304', '취업상식테마', '2', '강하늘');
insert into sungjuk values('110001','2015','3','1','A','4.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('110001','2015','3','1','B','3.5','KYO301', '창업으로세상읽기', '2', '박보검');

--/////////////// 110001 가충호 2015년 2학기 /////////////////////////////
insert into sungjuk values('110001','2015','3','2','A','4.5','COM308', '웹기초프로그래밍', '3', '아이유');
insert into sungjuk values('110001','2015','3','2','B','3.5','COM301', '운영체제', '3', '아이유');
insert into sungjuk values('110001','2015','3','2','A','4.5','COM305', '데이터베이스', '3', '경리');
insert into sungjuk values('110001','2015','3','2','A','4.5','COM306', '서버프로그래밍', '3', '이도연');
insert into sungjuk values('110001','2015','3','2','A','4.5','KYO202','Travel English', '2', '박보검');
insert into sungjuk values('110001','2015','3','2','B','3.5','KYO207', '미국현대시', '2', '경리');

--/////////////////////////////////////////////////////////////////////////////////////////////////////////

--/////////////// 030001 김세종 2009년 1학기 /////////////////////////////
insert into sungjuk values('030001','2009','1','1','A','4.5','DES101', '드로잉기법', '3', '강하늘');
insert into sungjuk values('030001','2009','1','1','B','3.5','DES102', '디자인발상', '3', '최여진');
insert into sungjuk values('030001','2009','1','1','D','2.5','DES103', '조형실험', '3', '이성경');
insert into sungjuk values('030001','2009','1','1','C','2.5','DES104', '디자인컨셉', '3', '강하늘');
insert into sungjuk values('030001','2009','1','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('030001','2009','1','1','C','2.5','KYO105', '요가의세계', '2', '최여진');
--/////////////// 116035 최상경 2011년 1학기 /////////////////////////////
insert into sungjuk values('116035','2011','1','1','A','4.5','DES101', '드로잉기법', '3', '강하늘');
insert into sungjuk values('116035','2011','1','1','B','3.5','DES102', '디자인발상', '3', '최여진');
insert into sungjuk values('116035','2011','1','1','D','2.5','DES103', '조형실험', '3', '이성경');
insert into sungjuk values('116035','2011','1','1','C','2.5','DES104', '디자인컨셉', '3', '강하늘');
insert into sungjuk values('116035','2011','1','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('116035','2011','1','1','C','2.5','KYO105', '요가의세계', '2', '최여진');
--/////////////// 030001 김세종 2009년 2학기 /////////////////////////////
insert into sungjuk values('030001','2009','1','2','B','3.5','DES105', '디자인사', '3', '이성경');
insert into sungjuk values('030001','2009','1','2','C','2.5','DES106', '디자인비평', '3', '최여진');
insert into sungjuk values('030001','2009','1','2','B','3.5','KYO107', '당구의이해', '2', '박보검');
insert into sungjuk values('030001','2009','1','2','A','4.5','DES107', '공간디자인론', '3', '강하늘');
insert into sungjuk values('030001','2009','1','2','A','4.5','DES108', '기초컴퓨터디자인', '3', '이성경');
insert into sungjuk values('030001','2009','1','2','A','4.5','KYO201', '취업영어700', '2', '김아랑');
--/////////////// 116035 최상경 2011년 2학기 /////////////////////////////
insert into sungjuk values('116035','2011','1','2','B','3.5','DES105', '디자인사', '3', '이성경');
insert into sungjuk values('116035','2011','1','2','C','2.5','DES106', '디자인비평', '3', '최여진');
insert into sungjuk values('116035','2011','1','2','B','3.5','KYO107', '당구의이해', '2', '박보검');
insert into sungjuk values('116035','2011','1','2','A','4.5','DES107', '공간디자인론', '3', '강하늘');
insert into sungjuk values('116035','2011','1','2','A','4.5','DES108', '기초컴퓨터디자인', '3', '이성경');
insert into sungjuk values('030001','2011','1','2','A','4.5','KYO201', '취업영어700', '2', '김아랑');

--/////////////// 030001 김세종 2010년 1학기 /////////////////////////////
insert into sungjuk values('030001','2010','2','1','A','4.5','DES202', '공간조형실험', '3', '최여진');
insert into sungjuk values('030001','2010','2','1','A','4.5','DES203', '2D애니메이션', '3', '이성경');
insert into sungjuk values('030001','2010','2','1','B','3.5','DES204', '시나리오', '3', '강하늘');
insert into sungjuk values('030001','2010','2','1','B','3.5','KYO102', '골프의이해', '2', '강하늘');
insert into sungjuk values('030001','2010','2','1','B','3.5','KYO105', '요가의세계', '2', '최여진');
insert into sungjuk values('030001','2010','2','1','B','3.5','KYO201', '취업영어850', '2', '이성경');
--/////////////// 116035 최상경 2012년 1학기 /////////////////////////////
insert into sungjuk values('116035','2012','2','1','A','4.5','DES202', '공간조형실험', '3', '최여진');
insert into sungjuk values('116035','2012','2','1','A','4.5','DES203', '2D애니메이션', '3', '이성경');
insert into sungjuk values('116035','2012','2','1','B','3.5','DES204', '시나리오', '3', '강하늘');
insert into sungjuk values('116035','2012','2','1','B','3.5','KYO102', '골프의이해', '2', '강하늘');
insert into sungjuk values('116035','2012','2','1','B','3.5','KYO105', '요가의세계', '2', '최여진');
insert into sungjuk values('116035','2012','2','1','B','3.5','KYO201', '취업영어850', '2', '이성경');
--/////////////// 030001 김세종 2010년 2학기 /////////////////////////////
insert into sungjuk values('030001','2010','2','2','A','4.5','DES207', '입체조형', '3', '최여진');
insert into sungjuk values('030001','2010','2','2','C','2.5','DES205', '컴퓨터그래픽스', '3', '최여진');
insert into sungjuk values('030001','2010','2','2','B','3.5','DES208', '영상연출', '3', '이성경');
insert into sungjuk values('030001','2010','2','2','B','3.5','KYO206', '영어로세상읽기', '2', '김아랑');
insert into sungjuk values('030001','2010','2','2','A','4.5','KYO202','Travel English', '2', '박보검');
insert into sungjuk values('030001','2010','2','2','B','3.5','KYO207', '미국현대시', '2', '경리');
--/////////////// 116035 최상경 2012년 2학기 /////////////////////////////
insert into sungjuk values('116035','2012','2','2','A','4.5','DES207', '입체조형', '3', '최여진');
insert into sungjuk values('116035','2012','2','2','C','2.5','DES205', '컴퓨터그래픽스', '3', '최여진');
insert into sungjuk values('116035','2012','2','2','B','3.5','DES208', '영상연출', '3', '이성경');
insert into sungjuk values('116035','2012','2','2','B','3.5','KYO206', '영어로세상읽기', '2', '김아랑');
insert into sungjuk values('116035','2012','2','2','A','4.5','KYO202','Travel English', '2', '박보검');
insert into sungjuk values('116035','2012','2','2','B','3.5','KYO207', '미국현대시', '2', '경리');

--/////////////// 030001 김세종 2015년 1학기 /////////////////////////////
insert into sungjuk values('030001','2015','3','1','A','4.5','DES301', '실내디자인', '3', '강하늘');
insert into sungjuk values('030001','2015','3','1','B','3.5','DES302', '영상예술론', '3', '최여진');
insert into sungjuk values('030001','2015','3','1','B','3.5','DES304', '웹애니메이션', '3', '강하늘');
insert into sungjuk values('030001','2015','3','1','B','3.5','KYO304', '취업상식테마', '2', '강하늘');
insert into sungjuk values('030001','2015','3','1','A','4.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('030001','2015','3','1','B','3.5','KYO301', '창업으로세상읽기', '2', '박보검');
--/////////////// 116035 최상경 2015년 1학기 /////////////////////////////
insert into sungjuk values('116035','2015','3','1','A','4.5','DES301', '실내디자인', '3', '강하늘');
insert into sungjuk values('116035','2015','3','1','B','3.5','DES302', '영상예술론', '3', '최여진');
insert into sungjuk values('116035','2015','3','1','B','3.5','DES304', '웹애니메이션', '3', '강하늘');
insert into sungjuk values('116035','2015','3','1','B','3.5','KYO304', '취업상식테마', '2', '강하늘');
insert into sungjuk values('116035','2015','3','1','A','4.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('116035','2015','3','1','B','3.5','KYO301', '창업으로세상읽기', '2', '박보검');
--/////////////// 030001 김세종 2015년 2학기 /////////////////////////////
insert into sungjuk values('030001','2015','3','2','A','4.5','DES305', '전시공간디자인', '3', '최여진');
insert into sungjuk values('030001','2015','3','2','A','4.5','DES306', '영상제작프로젝트', '3', '이성경');
insert into sungjuk values('030001','2015','3','2','A','4.5','DES308', '환경디자인', '3', '이성경');
insert into sungjuk values('030001','2015','3','2','B','3.5','DES307', '프레젠테이션기법', '3', '최여진');
insert into sungjuk values('030001','2015','3','2','B','3.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('030001','2015','3','2','B','3.5','KYO302', '취업성공전략', '2', '이도연');
--/////////////// 116035 최상경 2015년 2학기 /////////////////////////////
insert into sungjuk values('116035','2015','3','2','A','4.5','DES305', '전시공간디자인', '3', '최여진');
insert into sungjuk values('116035','2015','3','2','A','4.5','DES306', '영상제작프로젝트', '3', '이성경');
insert into sungjuk values('116035','2015','3','2','A','4.5','DES308', '환경디자인', '3', '이성경');
insert into sungjuk values('116035','2015','3','2','B','3.5','DES307', '프레젠테이션기법', '3', '최여진');
insert into sungjuk values('116035','2015','3','2','B','3.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('116035','2015','3','2','B','3.5','KYO302', '취업성공전략', '2', '이도연');

--/////////////////////////////////////////////////////////////////////////////////////////////////////////

--/////////////// 040001 권옥경 2009년 1학기 /////////////////////////////
insert into sungjuk values('040001','2009','1','1','A','4.5','HUM101', '고전시가론', '3', '김아랑');
insert into sungjuk values('040001','2009','1','1','B','3.5','HUM102', '고전명작읽기', '3', '박보검');
insert into sungjuk values('040001','2009','1','1','D','2.5','HUM103','인문학개론', '3', '이준기');
insert into sungjuk values('040001','2009','1','1','C','2.5','HUM104','현대시의이해', '3', '김아랑');
insert into sungjuk values('040001','2009','1','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('040001','2009','1','1','C','2.5','KYO105', '요가의세계', '2', '최여진');

--/////////////// 040001 권옥경 2009년 2학기 /////////////////////////////
insert into sungjuk values('040001','2009','2','1','A','4.5','HUM108', '사회학', '3', '박보검');
insert into sungjuk values('040001','2009','2','1','B','3.5','HUM106', '기초중국어', '3', '이준기');
insert into sungjuk values('040001','2009','2','1','C','2.5','HUM107', '기초일본어', '3', '김아랑');
insert into sungjuk values('040001','2009','2','1','C','2.5','DES104', '디자인컨셉', '3', '강하늘');
insert into sungjuk values('040001','2009','2','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('040001','2009','2','1','C','2.5','KYO105', '요가의세계', '2', '최여진');

--/////////////// 040001 권옥경 2010년 1학기 /////////////////////////////
insert into sungjuk values('040001','2010','2','1','A','4.5','HUM201', '인간공학개론', '3', '김아랑');
insert into sungjuk values('040001','2010','2','1','B','3.5','HUM202', '대중매체와문학', '3', '박보검');
insert into sungjuk values('040001','2010','2','1','D','2.5','HUM203', '역사와문화', '3', '이준기');
insert into sungjuk values('040001','2010','2','1','C','2.5','HUM204', '인터넷정보활용', '3', '김아랑');
insert into sungjuk values('040001','2010','2','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('040001','2010','2','1','C','2.5','KYO105', '요가의세계', '2', '최여진');

--/////////////// 040001 권옥경 2010 2학기 /////////////////////////////
insert into sungjuk values('040001','2010','2','2','A','4.5','HUM205', '정보사회의이해', '3', '박보검');
insert into sungjuk values('040001','2010','2','2','B','3.5','HUM303', '언어와정보', '3', '이준기');
insert into sungjuk values('040001','2010','2','2','D','2.5','HUM304', '음성학', '3', '김아랑');
insert into sungjuk values('040001','2010','2','2','C','2.5','HUM306', '고급중국어', '3', '이준기');
insert into sungjuk values('040001','2010','2','2','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('040001','2010','2','2','C','2.5','KYO105', '요가의세계', '2', '최여진');

--/////////////// 040001 권옥경 2011년 1학기 /////////////////////////////
insert into sungjuk values('040001','2011','3','1','A','4.5','HUM308', '한국사회의이해', '3', '박보검');
insert into sungjuk values('040001','2011','3','1','B','3.5','HUM305', '문예창작연습', '3', '박보검');
insert into sungjuk values('040001','2011','3','1','D','2.5','HUM302', '전자문서관리론', '3', '박보검');
insert into sungjuk values('040001','2011','3','1','C','2.5','HUM306', '고급중국어', '3', '이준기');
insert into sungjuk values('040001','2011','3','1','A','4.5','KYO103', '배드민턴의이해', '2', '이준기');
insert into sungjuk values('040001','2011','3','1','C','2.5','KYO105', '요가의세계', '2', '최여진');

--/////////////// 040001 권옥경 2011년 2학기 /////////////////////////////
insert into sungjuk values('040001','2011','3','2','A','4.5','HUM401', '역사연구론', '3', '김아랑');
insert into sungjuk values('040001','2011','3','2','B','3.5','HUM402', '현대사회의문제', '3', '박보검');
insert into sungjuk values('040001','2011','3','2','D','2.5','HUM403', '자료구분론', '3', '이준기');
insert into sungjuk values('040001','2011','3','2','C','2.5','HUM404', '음성학', '3', '김아랑');



--/////////////// 090001 이종상 여름계절학기 /////////////////////////////
insert into sungjuk values('090001','2015','2','3','B','3.5','KYO304', '취업상식테마', '2', '강하늘');
insert into sungjuk values('090001','2015','2','3','A','4.5','KYO306', '인성소양교육', '2', '경리');
--/////////////// 090001 이종상 겨울계절학기 /////////////////////////////
insert into sungjuk values('090001','2015','2','4','B','3.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('090001','2015','2','4','B','3.5','KYO302', '취업성공전략', '2', '이도연');

--/////////////// 110001 가충호 여름계절학기 /////////////////////////////
insert into sungjuk values('110001','2015','3','3','B','3.5','KYO304', '취업상식테마', '2', '강하늘');
insert into sungjuk values('110001','2015','3','3','A','4.5','KYO306', '인성소양교육', '2', '경리');
--/////////////// 110001 가충호 겨울계절학기 /////////////////////////////
insert into sungjuk values('110001','2015','3','4','B','3.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('110001','2015','3','4','B','3.5','KYO302', '취업성공전략', '2', '이도연');

--/////////////// 040001 권옥경 여름계절학기 /////////////////////////////
insert into sungjuk values('040001','2015','3','3','B','3.5','KYO304', '취업상식테마', '2', '강하늘');
insert into sungjuk values('040001','2015','3','3','A','4.5','KYO306', '인성소양교육', '2', '경리');
--/////////////// 040001 권옥경 겨울계절학기 /////////////////////////////
insert into sungjuk values('040001','2015','3','4','B','3.5','KYO306', '인성소양교육', '2', '경리');
insert into sungjuk values('040001','2015','3','4','B','3.5','KYO302', '취업성공전략', '2', '이도연');
