CREATE TABLE member(
    member_id NUMBER(5) 
    CONSTRAINT member_id_pk PRIMARY KEY,
    member_name VARCHAR2(50) 
    CONSTRAINT member_name_nn NOT NULL,
    member_email VARCHAR2(50) 
    CONSTRAINT member_email_nn NOT NULL,
    member_mobile VARCHAR(20) 
    CONSTRAINT member_mobile_nn NOT NULL,
    member_type VARCHAR2(10) 
    CONSTRAINT member_type_nn NOT NULL --카카오 연동 / 
);


CREATE TABLE notice(
    notice_id number(10) 
    CONSTRAINT notice_id_pk PRIMARY KEY,
    royal_name varchar2(20) 
    CONSTRAINT royal_name_nn NOT NULL,
    notice_title varchar2(100) 
    CONSTRAINT notice_title_nn NOT NULL, 
    notice_content varchar2(4000) 
    CONSTRAINT notice_content_nn NOT NULL,
    notice_date date DEFAULT DATE 
);

SElect *from royal_inner;