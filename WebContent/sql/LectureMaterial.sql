drop table lectureMaterial;
select * from lectureMaterial;
create table lectureMaterial(
	submit_week varchar(5) not null,
	sub_code  varchar(10) not null,
	emp_num varchar(10) not null,
	submit_title varchar(50) not null,
	submit_content varchar(30),
	
	fileName varchar2(100),
	fileSize number(38),
	description varchar2(500)
);


delete from lectureMaterial where submit_title='DBMS';

insert into lectureMaterial values ('1','COM208', '30001', '�ڷᱸ��1��', '1��');
insert into lectureMaterial values ('2','COM208', '30001', '�ڷᱸ��2��', '22');
insert into lectureMaterial(emp_name, sub_name, submit_title, submit_content) values ('�渮', '�����ͺ��̽�', 'DBMS', 'DBMS�� ���Ͽ�');
