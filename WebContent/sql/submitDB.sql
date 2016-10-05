drop table submit;
select * from submit;
create table submit(
	submit_week varchar(5) not null,
	sub_code  varchar(10) not null,
	emp_num varchar(10) ,
	submit_title varchar(50) not null,
	submit_content nvarchar2(2000),
	stu_num varchar(30),	
	filename varchar2(100),
	filesize number(38),
	description varchar2(500)
);

delete from submit where submit_title='DBMS';

   constraint submit_pk primary key (sub_name)
insert into submit(submit_week, sub_code, emp_num, submit_title, submit_content ) 
values ('1','COM208', '30001', '자료구조 조사', '자료구조의 내용을 정리해오세요.');
insert into submit values ('2','COM208', '30001', '자료구조 조사222', '222자료구조의 내용을 정리해오세요.');
insert into submit(emp_name, sub_name, submit_title, submit_content) values ('경리', '데이터베이스', 'DBMS', 'DBMS에 관하여');
