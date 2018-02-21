drop table consultation_history;
create table consultation_history(
	no		int 	not null  primary key,
	reg_date	date	not null,
	subject VARCHAR2(400) not null,
    writer	varchar2(20) not null,
	content varchar2(3000) not null,
	pwd		varchar2(4)	not null
);
drop table member;
create table member(
    id varchar2(50) primary key,
    name varchar2(50) not null,
    pwd varchar2(10) not null,
    gender varchar2(10) not null,
    birthdate varchar2(50) not null,
    tel varchar2(15) not null,
    email varchar2(30) ,
    con_past varchar2(10) ,
    con_date varchar2(50) ,
    con_cat varchar2(50),
    position varchar2(50) not null,    
    regdate date not null
);