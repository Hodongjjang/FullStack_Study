SELECT * FROM tabs;

CREATE TABLE myboard(
    board_id NUMBER(5) CONSTRAINT myboard_id_pk PRIMARY KEY,
    board_title VARCHAR2(100) CONSTRAINT myboard_title_nn NOT NULL,
    board_content VARCHAR2(1000) CONSTRAINT myboard_content_nn NOT NULL,
    board_password VARCHAR2(64),
    board_writer VARCHAR2(20) CONSTRAINT myboard_writer_nn NOT NULL,
    view_count NUMBER(5) DEFAULT 0,
    write_date DATE DEFAULT sysdate
);

CREATE TABLE myreply(
    reply_id NUMBER(5) CONSTRAINT myreply_id_pk PRIMARY KEY,
    board_id NUMBER(5) CONSTRAINT myreply_board_id_fk REFERENCES myboard(board_id)
    ON DELETE SET NULL,
    reply_writer VARCHAR2(20),
    reply_content VARCHAR2(300),
    reply_password VARCHAR2(64),
    reply_good_count NUMBER(5) DEFAULT 0,
    reply_bad_count NUMBER(5) DEFAULT 0,
    reply_date DATE DEFAULT sysdate
);

CREATE SEQUENCE myboard_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE myreply_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE; 

SELECT * FROM myboard;

SELECT * FROM myreply;

