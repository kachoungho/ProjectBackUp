CREATE TABLE STUDENTS (
	stu_num varchar(30) not null,
	stu_pwd varchar(30) not null
);

drop table students;

SELECT * FROM STUDENTS;

INSERT INTO STUDENTS(stu_num, stu_pwd) VALUES('1160001', '11');		-- �л�
INSERT INTO STUDENTS VALUES('1160002', '22');		-- ����
