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

--//////////////////  1. 교수 DB /////////////////////////////////////////////////////////

insert into employee 
values('30001', '아이유', '1234', '컴퓨터공학', 'iu1004@kosta.com', '010-1004-1004');

insert into employee 
values('30002', '경리', '1234', '컴퓨터공학', 'g_r_love@kosta.com', '010-5654-1027');

insert into employee 
values('30003', '이도연', '1234', '컴퓨터공학', 'happydoyeon@kosta.com', '010-1234-0001');

insert into employee 
values('30004', '김아랑', '1234', '인문학과', 'arang@kosta.com', '010-1111-1111');

insert into employee 
values('30005', '박보검', '1234', '인문학과', 'bogum@kosta.com', '010-9999-1234');

insert into employee 
values('30006', '이준기', '1234', '인문학과', 'lee4444@kosta.com', '010-4444-4444');

insert into employee 
values('30007', '강하늘', '1234', '시각디자인학과', 'kang@kosta.com', '010-3443-1541');

insert into employee 
values('30008', '최여진', '1234', '시각디자인학과', 'choi88@kosta.com', '010-8765-1242');

insert into employee 
values('30009', '이성경', '1234', '시각디자인학과', 'sungkyung@kosta.com', '010-3342-2231');

--//////////////////  2. 직원 DB /////////////////////////////////////////////////////////

insert into employee 
values('40001', '호날두', '1234', '교직원', 'cr7@kosta.com', '010-3453-1233');

insert into employee 
values('40002', '토레스', '1234', '교직원', 'Fernando09@kosta.com', '010-2222-3334');

insert into employee 
values('40003', '테베즈', '1234', '교직원', 'tevez88@kosta.com', '010-8989-2304');
