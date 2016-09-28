drop table changeMajor;

select * from changeMajor;

create table changeMajor (
	stu_num  varchar(10) not null,
	stu_name varchar(10) not null,
	stu_grade varchar(10) not null,
	major varchar(30) not null,
	stu_birthday varchar(15) not null,
	stu_professor varchar(20) not null,
	stu_email varchar(30) not null,
	tel varchar(15) not null,
	change_major varchar(30),
	reason_why nvarchar2(1000)
);