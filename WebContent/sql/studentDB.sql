drop table students;
select * from students;

create table students(
   stu_num  varchar(10) not null,
   stu_name varchar(10) not null,
   stu_pwd varchar(15) not null,
   stu_sex char(3) not null,
   stu_birthday varchar(15) not null,
   stu_state varchar(30) not null,   -- 휴복학 관련
   stu_professor varchar(10) not null,                  --교수이름
   stu_email varchar(30),
   major varchar(30) not null,
   subMajor varchar(30),
   grade varchar(5) default '1',
   term varchar(5),
   address varchar(100),
   tel varchar(15),
   home_tel varchar(15),
   

   constraint students_pk primary key (stu_num)
);



insert into STUDENTS
values('090001', '이종상', '1234', '남', '1989-04-18', '재학', '아이유', 'spurs89@naver.com', '컴퓨터공학', 'none', '2','2', '경기도 용인시 수지구 꿈에그린빌', '010-2678-8904', '031-534-3991');

insert into STUDENTS
values('110001', '가충호', '1234', '남', '1992-07-18', '재학', '경리', 'kachounghoa@naver.com', '컴퓨터공학', '인문학', '3','2', '개미도 가늘군 만지면 부러지리', '010-6666-8345', '032-833-3177');

insert into STUDENTS 
values('040001', '권옥경', '1234', '여', '1985-05-09', '재학', '김아랑', 'okmove_85@naver.com', '인문학과', 'none', '3','2', '경상북도 봉화군 명호면', '010-5548-4716', '054-672-4567' );

insert into STUDENTS 
values('116035', '최상경', '1234', '남', '1992-02-25', '재학', '경리', 'skch0122@naver.com', '시각디자인학과', '인문학과', '3','2', '용인시 수지구 죽전동', '010-6665-6373', '031-885-3177' );

insert into STUDENTS
values('030001', '김세종', '1234', '남', '1984-05-07', '재학', '이성경', 'tpwhd84@naver.com', '시각디자인학과', 'none', '3','2', '경기도 용인시 수지구 성복동 버들치마을', '010-5013-4292', '031-8405-8405');