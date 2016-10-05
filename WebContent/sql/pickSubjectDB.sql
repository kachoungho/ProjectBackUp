select * from picksubject;
drop table picksubject;

delete from picksubject where sub_code = 'COM107';

create table picksubject(
	stu_num varchar(10) not null,
	sub_code  varchar(10) not null,
	sub_name varchar(50) not null,
	sub_hakjum varchar(10) not null,
	emp_name varchar(10) not null,
	sub_time varchar(10) not null,
	
	constraint picksubject_pk primary key (stu_num, sub_code)
);

select  STUDENTS.MAJOR, STUDENTS.STU_NAME, picksubject.*
		from STUDENTS join picksubject
		on STUDENTS.STU_NUM = picksubject.stu_num
		where major = '컴퓨터공학' ;
		