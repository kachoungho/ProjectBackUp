drop table employee;
select * from employee; 

create table employee(
	emp_num  varchar(10) not null,
	emp_name varchar(10) not null,
	emp_pwd varchar(15) not null,
	major varchar(30) not null,
	emp_email varchar(30),
	tel varchar(15),
		
	constraint employee_pk primary key (emp_num)
);

--//////////////////  1. ���� DB /////////////////////////////////////////////////////////

insert into employee 
values('30001', '������', '1234', '��ǻ�Ͱ���', 'iu1004@kosta.com', '010-1004-1004');

insert into employee 
values('30002', '�渮', '1234', '��ǻ�Ͱ���', 'g_r_love@kosta.com', '010-5654-1027');

insert into employee 
values('30003', '�̵���', '1234', '��ǻ�Ͱ���', 'happydoyeon@kosta.com', '010-1234-0001');

insert into employee 
values('30004', '��ƶ�', '1234', '�ι��а�', 'arang@kosta.com', '010-1111-1111');

insert into employee 
values('30005', '�ں���', '1234', '�ι��а�', 'bogum@kosta.com', '010-9999-1234');

insert into employee 
values('30006', '���ر�', '1234', '�ι��а�', 'lee4444@kosta.com', '010-4444-4444');

insert into employee 
values('30007', '���ϴ�', '1234', '�ð��������а�', 'kang@kosta.com', '010-3443-1541');

insert into employee 
values('30008', '�ֿ���', '1234', '�ð��������а�', 'choi88@kosta.com', '010-8765-1242');

insert into employee 
values('30009', '�̼���', '1234', '�ð��������а�', 'sungkyung@kosta.com', '010-3342-2231');

--//////////////////  2. ���� DB /////////////////////////////////////////////////////////

insert into employee 
values('40001', 'ȣ����', '1234', '������', 'cr7@kosta.com', '010-3453-1233');

insert into employee 
values('40002', '�䷹��', '1234', '������', 'Fernando09@kosta.com', '010-2222-3334');

insert into employee 
values('40003', '�׺���', '1234', '������', 'tevez88@kosta.com', '010-8989-2304');
