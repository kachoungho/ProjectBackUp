drop table student;

create table student(
	stu_num  varchar(10) not null,
	stu_name varchar(10) not null,
	stu_pwd varchar(15) not null,
	stu_sex char(3) not null,
	stu_jumin varchar(15) not null,
	major varchar(30) not null,
	subMajor varchar(30),
	grade char(5) default '1',
	address varchar(30),
	tel varchar(15),
	home_tel varchar(15),
	
	constraint student_pk primary key (stu_num)
);

select * from student;

insert into STUDENT(stu_num, stu_name, stu_pwd, stu_sex, stu_jumin, major) 
values('0991068', '이종상', '1234','m', '890418-1241916', '멀티미디어공학');


