--���⼭ �����ڵ� ( sub_code ��������.)
--EX) COM101   ( ���� ���� )					|			--KYO201	( ���� ���� ) 
-- com == �а� �̸�								|			--KYO == ��������̶�� ��
-- 1 == 1�г� ���� 								|			--2 == ���� ������ 3���� ������ �ִ�. �װͿ� ���� �ε��� "1, 2, 3" �� ����
-- 01 == ���� Index								|			--01 == ���� Index.

--�ð��� ���� �ڵ�?? �̷��� �ؼ��ϼ���.
--EX) MON123     
--������ 123���� ��� ������ �ؼ�.
--ȭ���� 345���ø� TUE345 ��� ǥ�� �ϰڽ��ϴ礷��?
--���������� ��� 3�����̱⶧����.
--������ ��� 2�����̹Ƿ�                  TUE012
--                                        0���ô� ���� ġ��. 12���� ��¶�.
select * from subject;
drop table subject;

�ڵ� ����� ����. �����̸� �ð�.

create table subject(
	sub_code  varchar(10) not null,
	sub_name varchar(50) not null,
	sub_hakjum varchar(10) not null,
	emp_name varchar(10) not null,
	sub_time varchar(10) not null,
	
	constraint subject_pk primary key (sub_code)
);

--//////////////////// 1. ��ǻ�Ͱ��а� �������� /////////
--//////////////////////////// 1�г� ���� //////////////////
insert into subject values('COM101', 'C������α׷���', '3', '������', 'MON123');
insert into subject values('COM102', 'C������α׷���', '3', '�渮', 'TUE123');
insert into subject values('COM103', 'C������α׷���', '3', '�̵���', 'WED123');
insert into subject values('COM104', '��ǻ�ͱ���', '3', '������', 'MON567');
insert into subject values('COM105', 'Ȯ�������', '3', '�渮', 'TUE567');
insert into subject values('COM106', '���α׷��ְ���', '3', '�̵���', 'WED567');
insert into subject values('COM107', '��ǻ�ͱ���', '3', '�̵���', 'THU567');
insert into subject values('COM108', 'HTML�ǽ�', '3', '������', 'FRI567');
--//////////////////////////// 2�г� ���� //////////////////
insert into subject values('COM201', 'JAVA���α׷���', '3', '������', 'MON123');
insert into subject values('COM202', 'JAVA���α׷���', '3', '�渮', 'TUE123');
insert into subject values('COM203', 'JAVA���α׷���', '3', '�̵���', 'WED123');
insert into subject values('COM204', '��ü�������α׷���', '3', '������', 'MON567');
insert into subject values('COM205', '�������', '3', '�渮', 'TUE567');
insert into subject values('COM206', '�̻����', '3', '�̵���', 'WED567');
insert into subject values('COM207', 'â�������м���', '3', '�̵���', 'THU567');
insert into subject values('COM208', '�ڷᱸ��', '3', '������', 'FRI567');
--//////////////////////////// 3�г� ���� //////////////////
insert into subject values('COM301', '�ü��', '3', '������', 'MON123');
insert into subject values('COM302', '�ü��', '3', '�渮', 'TUE123');
insert into subject values('COM303', '�ü��', '3', '�̵���', 'WED123');
insert into subject values('COM304', '�����������α׷���', '3', '������', 'MON567');
insert into subject values('COM305', '�����ͺ��̽�', '3', '�渮', 'TUE567');
insert into subject values('COM306', '�������α׷���', '3', '�̵���', 'WED567');
insert into subject values('COM307', '���������', '3', '�̵���', 'THU567');
insert into subject values('COM308', '���������α׷���', '3', '������', 'FRI567');
--//////////////////////////// 4�г� ���� //////////////////
insert into subject values('COM401', '����������Ʈ', '3', '������', 'MON123');
insert into subject values('COM402', '����������Ʈ', '3', '�渮', 'TUE123');
insert into subject values('COM403', '����������Ʈ', '3', '�̵���', 'WED123');
insert into subject values('COM404', 'Android���α׷���', '3', '������', 'MON567');
insert into subject values('COM405', '���������α׷���', '3', '�渮', 'TUE567');
insert into subject values('COM406', '�Ӻ����ý���', '3', '�̵���', 'WED567');
insert into subject values('COM407', '��ǻ�ͺ���', '3', '�̵���', 'THU567');
insert into subject values('COM408', '��������α׷���', '3', '������', 'FRI567');

--//////////////////// 2.�ι��а� �������� /////////
--//////////////////////////// 1�г� ���� //////////////////
insert into subject values('HUM101', '�����ð���', '3', '��ƶ�', 'MON123');
insert into subject values('HUM102', '���������б�', '3', '�ں���', 'TUE123');
insert into subject values('HUM103', '�ι��а���', '3', '���ر�', 'WED123');
insert into subject values('HUM104', '�����������', '3', '��ƶ�', 'MON567');
insert into subject values('HUM105', '����Ҽ�������', '3', '�ں���', 'TUE567');
insert into subject values('HUM106', '�����߱���', '3', '���ر�', 'WED567');
insert into subject values('HUM107', '�����Ϻ���', '3', '��ƶ�', 'THU567');
insert into subject values('HUM108', '��ȸ��', '3', '�ں���', 'FRI567');
--//////////////////////////// 2�г� ���� //////////////////
insert into subject values('HUM201', '�ΰ����а���', '3', '��ƶ�', 'MON123');
insert into subject values('HUM202', '���߸�ü�͹���', '3', '�ں���', 'TUE123');
insert into subject values('HUM203', '����͹�ȭ', '3', '���ر�', 'WED123');
insert into subject values('HUM204', '���ͳ�����Ȱ��', '3', '��ƶ�', 'MON567');
insert into subject values('HUM205', '������ȸ������', '3', '�ں���', 'TUE567');
insert into subject values('HUM206', '�߱���ȸȭ', '3', '���ر�', 'WED567');
insert into subject values('HUM207', '�Ϻ���ȸȭ', '3', '��ƶ�', 'THU567');
insert into subject values('HUM208', '�����а���', '3', '�ں���', 'FRI567');
--//////////////////////////// 3�г� ���� //////////////////
insert into subject values('HUM301', '�����å', '3', '��ƶ�', 'MON123');
insert into subject values('HUM302', '���ڹ���������', '3', '�ں���', 'TUE123');
insert into subject values('HUM303', '��������', '3', '���ر�', 'WED123');
insert into subject values('HUM304', '������', '3', '��ƶ�', 'MON567');
insert into subject values('HUM305', '����â�ۿ���', '3', '�ں���', 'TUE567');
insert into subject values('HUM306', '����߱���', '3', '���ر�', 'WED567');
insert into subject values('HUM307', '����Ϻ���', '3', '��ƶ�', 'THU567');
insert into subject values('HUM308', '�ѱ���ȸ������', '3', '�ں���', 'FRI567');
--//////////////////////////// 4�г� ���� //////////////////
insert into subject values('HUM401', '���翬����', '3', '��ƶ�', 'MON123');
insert into subject values('HUM402', '�����ȸ�ǹ���', '3', '�ں���', 'TUE123');
insert into subject values('HUM403', '�ڷᱸ�з�', '3', '���ر�', 'WED123');
insert into subject values('HUM404', '������', '3', '��ƶ�', 'MON567');
insert into subject values('HUM405', '�������������', '3', '�ں���', 'TUE567');
insert into subject values('HUM406', '�����ͺ��̽��̿��', '3', '���ر�', 'WED567');
insert into subject values('HUM407', '������������', '3', '��ƶ�', 'THU567');
insert into subject values('HUM408', '���б��������', '3', '�ں���', 'FRI567');

--//////////////////// 3. �ð��������а� �������� /////////
--//////////////////////////// 1�г� ���� //////////////////
insert into subject values('DES101', '����ױ��', '3', '���ϴ�', 'MON123');
insert into subject values('DES102', '�����ι߻�', '3', '�ֿ���', 'TUE123');
insert into subject values('DES103', '��������', '3', '�̼���', 'WED123');
insert into subject values('DES104', '����������', '3', '���ϴ�', 'MON567');
insert into subject values('DES105', '�����λ�', '3', '�̼���', 'TUE567');
insert into subject values('DES106', '�����κ���', '3', '�ֿ���', 'WED567');
insert into subject values('DES107', '���������η�', '3', '���ϴ�', 'THU567');
insert into subject values('DES108', '������ǻ�͵�����', '3', '�̼���', 'FRI567');
--//////////////////////////// 2�г� ���� //////////////////
insert into subject values('DES201', '����������', '3', '���ϴ�', 'MON123');
insert into subject values('DES202', '������������', '3', '�ֿ���', 'TUE123');
insert into subject values('DES203', '2D�ִϸ��̼�', '3', '�̼���', 'WED123');
insert into subject values('DES204', '�ó�����', '3', '���ϴ�', 'MON567');
insert into subject values('DES205', '��ǻ�ͱ׷��Ƚ�', '3', '�ֿ���', 'TUE567');
insert into subject values('DES206', '����׽ǽ�', '3', '�̼���', 'WED567');
insert into subject values('DES207', '��ü����', '3', '�ֿ���', 'THU567');
insert into subject values('DES208', '������', '3', '�̼���', 'FRI567');
--//////////////////////////// 3�г� ���� //////////////////
insert into subject values('DES301', '�ǳ�������', '3', '���ϴ�', 'MON123');
insert into subject values('DES302', '���󿹼���', '3', '�ֿ���', 'TUE123');
insert into subject values('DES303', '3D�ִϸ��̼�', '3', '�̼���', 'WED123');
insert into subject values('DES304', '���ִϸ��̼�', '3', '���ϴ�', 'MON567');
insert into subject values('DES305', '���ð���������', '3', '�ֿ���', 'TUE567');
insert into subject values('DES306', '��������������Ʈ', '3', '�̼���', 'WED567');
insert into subject values('DES307', '���������̼Ǳ��', '3', '�ֿ���', 'THU567');
insert into subject values('DES308', 'ȯ�������', '3', '�̼���', 'FRI567');
--//////////////////////////// 4�г� ���� //////////////////
insert into subject values('DES401', '��Ʈ������', '3', '���ϴ�', 'MON123');
insert into subject values('DES402', '����ǽ�', '3', '�ֿ���', 'TUE123');
insert into subject values('DES403', '�ִϸ��̼�����', '3', '�̼���', 'WED123');
insert into subject values('DES404', 'Ÿ�����׷���', '3', '���ϴ�', 'MON567');
insert into subject values('DES405', '����������Ʈ', '3', '�ֿ���', 'TUE567');
insert into subject values('DES406', '�𵨸����', '3', '�̼���', 'WED567');
insert into subject values('DES407', '���հ���������', '3', '�ֿ���', 'THU567');
insert into subject values('DES408', '���������', '3', '�̼���', 'FRI567');


--//////////////////// 5. �������  /////////
--//////////////////////////// ���� 1�� ü�� //////////////////
insert into subject values('KYO101', '�״Ͻ�������', '2', '�ں���', 'THU012');
insert into subject values('KYO102', '����������', '2', '���ϴ�', 'THU034');
insert into subject values('KYO103', '������������', '2', '���ر�', 'FRI012');
insert into subject values('KYO104', '����������', '2', '�渮', 'FRI034');
insert into subject values('KYO105', '�䰡�Ǽ���', '2', '�ֿ���', 'THU012');
insert into subject values('KYO106', '������Ƽ�', '2', '������', 'THU034');
insert into subject values('KYO107', '�籸������', '2', '�ں���', 'FRI012');
insert into subject values('KYO108', '�ʶ��׽�', '2', '�̵���', 'FRI034');
--//////////////////////////// ���� 2�� ���� //////////////////
insert into subject values('KYO201', '�������700', '2', '��ƶ�', 'THU012');
insert into subject values('KYO202', 'Travel English', '2', '�ں���', 'THU034');
insert into subject values('KYO203', 'Job Interview Success', '2', '������', 'FRI012');
insert into subject values('KYO204', '�������850', '2', '�̼���', 'FRI034');
insert into subject values('KYO205', '�������а���', '2', '�̵���', 'THU012');
insert into subject values('KYO206', '����μ����б�', '2', '��ƶ�', 'THU034');
insert into subject values('KYO207', '�̱������', '2', '�渮', 'FRI012');
insert into subject values('KYO208', '�⺻����ȸȭ', '2', '�̵���', 'FRI034');
--//////////////////////////// ���� 2�� ��� //////////////////
insert into subject values('KYO301', 'â�����μ����б�', '2', '�ں���', 'THU012');
insert into subject values('KYO302', '�����������', '2', '�̵���', 'THU034');
insert into subject values('KYO303', '���������̼Ǳ��', '2', '��ƶ�', 'FRI012');
insert into subject values('KYO304', '�������׸�', '2', '���ϴ�', 'FRI034');
insert into subject values('KYO305', '��������۾���', '2', '������', 'THU012');
insert into subject values('KYO306', '�μ��Ҿ米��', '2', '�渮', 'THU034');
insert into subject values('KYO307', '���а�����', '2', '�̼���', 'FRI012');
insert into subject values('KYO308', '���������غ�', '2', '�ֿ���', 'FRI034');


