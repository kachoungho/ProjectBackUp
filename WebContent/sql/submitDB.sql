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
values ('1','COM208', '30001', '�ڷᱸ�� ����', '�ڷᱸ���� ������ �����ؿ�����.');
insert into submit values ('2','COM208', '30001', '�ڷᱸ�� ����222', '222�ڷᱸ���� ������ �����ؿ�����.');
insert into submit(emp_name, sub_name, submit_title, submit_content) values ('�渮', '�����ͺ��̽�', 'DBMS', 'DBMS�� ���Ͽ�');
