drop table temporary_absenceReturn;

select * from temporary_absenceReturn;

create table temporary_absenceReturn (
	stu_num  varchar(10) not null,
	stu_name varchar(10) not null,
	stu_grade varchar(10) not null,
	major varchar(30) not null,
	stu_birthday varchar(15) not null,
	stu_professor varchar(20) not null,
	stu_email varchar(30) not null,
	address varchar(100) not null,
	tel varchar(15) not null,
	absence varchar(20),
	return_semester varchar(20)
);