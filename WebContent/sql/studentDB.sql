drop table students;
select * from students;

create table students(
   stu_num  varchar(10) not null,
   stu_name varchar(10) not null,
   stu_pwd varchar(15) not null,
   stu_sex char(3) not null,
   stu_birthday varchar(15) not null,
   stu_state varchar(30) not null,   -- �޺��� ����
   stu_professor varchar(10) not null,                  --�����̸�
   stu_email varchar(30),
   major varchar(30) not null,
   subMajor varchar(30),
   grade varchar(5) default '1',
   term varchar(5),
   address varchar(100),
   tel varchar(15),
   home_tel varchar(15),
   

   constraint students_pk primary key (stu_num)
);



insert into STUDENTS
values('090001', '������', '1234', '��', '1989-04-18', '����', '������', 'spurs89@naver.com', '��ǻ�Ͱ���', 'none', '2','2', '��⵵ ���ν� ������ �޿��׸���', '010-2678-8904', '031-534-3991');

insert into STUDENTS
values('110001', '����ȣ', '1234', '��', '1992-07-18', '����', '�渮', 'kachounghoa@naver.com', '��ǻ�Ͱ���', '�ι���', '3','2', '���̵� ���ñ� ������ �η�����', '010-6666-8345', '032-833-3177');

insert into STUDENTS 
values('040001', '�ǿ���', '1234', '��', '1985-05-09', '����', '��ƶ�', 'okmove_85@naver.com', '�ι��а�', 'none', '3','2', '���ϵ� ��ȭ�� ��ȣ��', '010-5548-4716', '054-672-4567' );

insert into STUDENTS 
values('116035', '�ֻ��', '1234', '��', '1992-02-25', '����', '�渮', 'skch0122@naver.com', '�ð��������а�', '�ι��а�', '3','2', '���ν� ������ ������', '010-6665-6373', '031-885-3177' );

insert into STUDENTS
values('030001', '�輼��', '1234', '��', '1984-05-07', '����', '�̼���', 'tpwhd84@naver.com', '�ð��������а�', 'none', '3','2', '��⵵ ���ν� ������ ������ ����ġ����', '010-5013-4292', '031-8405-8405');