select * from pickseason;
drop table pickseason;

delete from picksubject where sub_code = 'COM107';

create table pickseason(
	stu_num varchar(10) not null,
	sub_code  varchar(10) not null,
	sub_name varchar(50) not null,
	sub_hakjum varchar(10) not null,
	emp_name varchar(10) not null,
	sub_time varchar(10) not null,
	
	constraint pickseason_pk primary key (stu_num, sub_code)
);