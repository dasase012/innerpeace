create table consultation_history(
	no		int 	not null  primary key,
	reg_date	date	not null,
	subject VARCHAR2(400) not null,
    writer	varchar2(20) not null,
	content varchar2(3000) not null,
	pwd		varchar2(4)	not null
);