drop table student;
select * from student;

create table student(
	stu_num  varchar(10) not null,
	stu_name varchar(10) not null,
	stu_pwd varchar(15) not null,
	stu_sex char(3) not null,
	stu_birthday varchar(15) not null,
	stu_state varchar(10) not null,	-- 휴복학 관련
	stu_professor varchar(10) not null,						--교수이름
	stu_email varchar(30),
	major varchar(30) not null,
	subMajor varchar(30),
	grade char(5) default '1',
	address varchar(50),
	tel varchar(15),
	home_tel varchar(15),
	

	constraint student_pk primary key (stu_num)
);

insert into STUDENT
values('090001', '이종상', '1234', '남', '1989-04-18', '재학', '아이유', 'spurs89@naver.com', '컴퓨터공학', 'none', '4', '경기도 용인시 수지구 꿈에그린빌', '031-534-3991', '010-2678-8904');

