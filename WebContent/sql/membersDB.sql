drop table members;
select * from members; 




create table members(
	mem_num  varchar(10) not null,
	mem_name varchar(10) not null,
	mem_pwd varchar(15) not null,
	
	constraint members_pk primary key (mem_num)
);

--//////////////////  1. 교수 DB /////////////////////////////////////////////////////////



insert into members 
values('30001', '아이유', '1234');

insert into members 
values('30002', '경리', '1234');

insert into members 
values('30003', '이도연', '1234');

insert into members 
values('30004', '김아랑', '1234');

insert into members 
values('30005', '박보검', '1234');

insert into members 
values('30006', '이준기', '1234');

insert into members 
values('30007', '강하늘', '1234');

insert into members 
values('30008', '최여진', '1234');

insert into members 
values('30009', '이성경', '1234');

--//////////////////  2. 직원 DB /////////////////////////////////////////////////////////

insert into members 
values('40001', '호날두', '1234');

insert into members 
values('40002', '토레스', '1234');

insert into members
values('40003', '테베즈', '1234');

--//////////////////  3. 학생 DB /////////////////////////////////////////////////////////

insert into MEMBERS
values('090001','이종상','1234');

insert into MEMBERS
values('110001','가충호','1234');

insert into MEMBERS
values('040001','권옥경','1234');

insert into MEMBERS
values('030001','김세종','1234');

insert into MEMBERS
values('116035','최상경','1234');