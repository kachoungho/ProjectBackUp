drop table members;
select * from members; 




create table members(
	mem_num  varchar(10) not null,
	mem_name varchar(10) not null,
	mem_pwd varchar(15) not null,
	
	constraint members_pk primary key (mem_num)
);

--//////////////////  1. ���� DB /////////////////////////////////////////////////////////



insert into members 
values('30001', '������', '1234');

insert into members 
values('30002', '�渮', '1234');

insert into members 
values('30003', '�̵���', '1234');

insert into members 
values('30004', '��ƶ�', '1234');

insert into members 
values('30005', '�ں���', '1234');

insert into members 
values('30006', '���ر�', '1234');

insert into members 
values('30007', '���ϴ�', '1234');

insert into members 
values('30008', '�ֿ���', '1234');

insert into members 
values('30009', '�̼���', '1234');

--//////////////////  2. ���� DB /////////////////////////////////////////////////////////

insert into members 
values('40001', 'ȣ����', '1234');

insert into members 
values('40002', '�䷹��', '1234');

insert into members
values('40003', '�׺���', '1234');

--//////////////////  3. �л� DB /////////////////////////////////////////////////////////

insert into MEMBERS
values('090001','������','1234');

insert into MEMBERS
values('110001','����ȣ','1234');

insert into MEMBERS
values('040001','�ǿ���','1234');

insert into MEMBERS
values('030001','�輼��','1234');

insert into MEMBERS
values('116035','�ֻ��','1234');