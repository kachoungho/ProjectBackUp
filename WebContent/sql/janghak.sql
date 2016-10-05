drop table janghak;
select * from janghak; 

create table janghak(
	stu_num  varchar(10) not null,
	jh_year varchar(10) not null,
	jh_term varchar(10) not null,
	jh_name varchar(40) not null,
	money_su number(30),
	money_ip number(30)
	);
	
--/////////////// 090001 이종상 /////////////////////////////
insert into janghak values('090001','2009','1','성적우수입학장학금','0','100000');
insert into janghak values('090001','2009','2','근로장학금','1800000','0');
insert into janghak values('090001','2010','1','성적우수장학금','3800000','0');
insert into janghak values('090001','2010','1','근로장학금','1800000','0');
insert into janghak values('090001','2010','2','근로장학금','1800000','0');
insert into janghak values('090001','2010','2','근로장학금(방중)','900000','0');
insert into janghak values('090001','2012','1','교육훈련지원금','58000','0');
--/////////////// 110001 가충호 /////////////////////////////
insert into janghak values('110001','2011','1','성적우수입학장학금','0','1000000');
insert into janghak values('110001','2011','1','성적우수장학금','3800000','0');
insert into janghak values('110001','2011','1','교육훈련지원금','70000','0');
insert into janghak values('110001','2011','2','성적우수장학금','3800000','0');
insert into janghak values('110001','2012','1','성적우수장학금','3800000','0');
insert into janghak values('110001','2012','2','성적우수장학금','3800000','0');
insert into janghak values('110001','2012','2','교육훈련지원금','110000','0');
insert into janghak values('110001','2015','1','근로장학금','1800000','0');
insert into janghak values('110001','2015','1','성적우수장학금','3800000','0');
--/////////////// 116035 최상경 /////////////////////////////
insert into janghak values('116035','2012','2','성적우수장학금','3800000','0');
insert into janghak values('116035','2012','2','교육훈련지원금','110000','0');
insert into janghak values('116035','2015','1','근로장학금','1800000','0');
insert into janghak values('116035','2015','1','성적우수장학금','3800000','0');
--/////////////// 116035 최상경 /////////////////////////////
insert into janghak values('116035','2012','2','성적우수장학금','3800000','0');
insert into janghak values('116035','2012','2','교육훈련지원금','110000','0');
--/////////////// 040001 권옥경 /////////////////////////////
insert into janghak values('040001','2004','1','KOSTA인재장학금','0','500000');
insert into janghak values('040001','2004','1','성적우수장학금','2800000','0');
insert into janghak values('040001','2005','1','교육훈련지원금','170000','0');
insert into janghak values('040001','2007','2','성적우수장학금','2800000','0');
--/////////////// 030001 김세종 /////////////////////////////
insert into janghak values('030001','2004','1','KOSTA인재장학금','0','500000');
insert into janghak values('030001','2004','1','성적우수장학금','2800000','0');
insert into janghak values('030001','2005','1','교육훈련지원금','170000','0');
insert into janghak values('030001','2007','2','성적우수장학금','2800000','0');
insert into janghak values('030001','2009','2','근로장학금','1800000','0');
insert into janghak values('030001','2010','1','성적우수장학금','3800000','0');


