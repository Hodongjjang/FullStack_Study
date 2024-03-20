-- 16_��������.sql

/*
    # ���Ἲ
    
    - ������ ���� ����
    - �����͸� ���Ծ��� ���·� �ùٸ��� �����ϴ� ��
    - �����͸� �ùٸ��� �����ϱ� ���ؼ��� �پ��� ������ ���Ἲ�� �������Ѿ� �Ѵ�
    - �����ͺ��̽����� �پ��� ���Ἲ���� ��Ű�� ���� ����ϴ� ���� ���������̴�

    # ��ü ���Ἲ
    
    - ���̺��� �����ʹ� �ݵ�� �ϳ��� ���� ������ �� �־�� �Ѵ�
    - �� �ุ ������ �� ���� �����ʹ� ��ü ���Ἲ�� �������̴�
    - DB������ ������ ��ü ���Ἲ�� ��Ű�� ���ؼ� �⺻Ű(PK) ���������� ����Ѵ�
    
    # ���� ���Ἲ
    
    - ���� ���迡 �ִ� �����ʹ� ��ȿ�� �����͸� �����ؾ� �Ѵ�
    - DB������ �������� ���� ���Ἲ�� ��Ű�� ���� �ܷ�Ű(FK) ���������� ����Ѵ�
    
    # ������ ���Ἲ
    
    - �ϳ��� ������(�÷�)�� �����ϴ� ��ü���� ��� ���� Ÿ���̾�� �Ѵ�
    - DB������ �÷� Ÿ���� �����Ͽ� �ش� �÷��� ������ ���Ἲ�� �����Ѵ�
    
    # ������ ���Ἲ
    
    - �����Ͱ� ��Ȯ��, �ϰ���, ��ȿ���� �����ϴ� ��
    - CHECK ���� ���ǰ� NOT NULL ���������� ���� ������ ���Ἲ�� ������ �� �ִ�
    
    # DB�� ���� ���ǵ�
    
    - UNIQUE : �ش� �����ο� �ߺ��Ǵ� ���� ������� �ʴ´� (null ���)
    - NOT NOULL : �ش� �����ο� null�� ������� �ʴ´�
    - PRIMARY KEY : �⺻Ű, NOT NULL + UNIQUE, �� ���̺� �� �ϳ��� ���� ����
    - FOREIGN KEY : �ܷ�Ű, �ش� �������� �ܷ�Ű�� ����.
                    ��� �÷��� �������� �����ؾ��Ѵ�.
                    �⺻Ű �Ǵ� UNIQUE ���������� ������ �÷��� ������ �� �ִ�.
    - CHECK : ���ϴ� ������ ���� �����Ͽ� �ش� ������ �����ϴ� ��ü�� �߰� ����                
    
*/

/*
    # ������ ��ųʸ�(Data Dictionary)
    
    - �����Ϳ� ���� ������ (������ ����, ��Ÿ ������)
    - ���� DB�� ��Ȳ�� ����, DB�� �˾Ƽ� �����ϴ� ������
    - DB����ڴ� ������ ��ųʸ��� ���� ������ �� ����
    
    # ������ ��ųʸ� ��(Data Dictionary View)
    
    - ������ ��ųʸ��� ����ڰ� Ȯ���� �� �ְԲ� �����ϴ� ��(View)
        * ��(View) - DB ������Ʈ �� �ϳ��� ��ü �������� �Ϻθ� ���� ���� ���·� 
                    ��ȸ�� �� �ִ� �̴� ���̺� (���� ���̺��� �κ� ����)
    
    - �տ� user_�� ���̸� ���� ���� DB������ ������ ��ųʸ��� Ȯ���� �� �ִ�
    - �տ� all_�� ���̸� ��ü ������ ������ ��ųʸ��� Ȯ���� �� �ִ�
*/
--  ��� ������ �� �� �ִ� ������ ��ųʸ� ��
SELECT * FROM all_users;

-- ���� ������ ���̺� ����� �� �� �ִ� ������ ��ųʸ� ��
SELECT * FROM user_tables;

-- ��� ������ ���̺� ����� �� �� �ִ� ������ ��ųʸ� ��
SELECT * FROM all_tables;

-- ���� ������ �����ϴ� �������� ����
SELECT * FROM user_constraints;
SELECT * FROM user_constraints WHERE table_name = 'EMPLOYEES';

-- ��� ������ �����ϴ� �������� ����
SELECT * FROM all_constraints;

/*
    # CONSTRAINT_TYPE
    
    - P : Primary Key
    - R : References (Foreign Key)
    - U : Unique
    - C : Check, NOT NULL
*/

/*
    1. ���̺� ������ ���ÿ� �������� �߰��ϱ�
    
    - ���̺� ������ �÷���� �÷�Ÿ�� �ڿ� ���������� �߰��� �� �ִ�
    - ������ �߰�/����/������ ���������� ������ �޴´�
    - �������� �̸��� �������� ������ ����Ŭ���� ������ �ڵ� �̸��� ����Ѵ�
       (� �߸����ؼ� ���������� �����ߴ��� �˱� ���������)
    - "�÷��� �÷�Ÿ�� CONSTRAINT �������Ǹ� ��������Ÿ��"�� ���� 
      ���� ������ �̸��� ���� ������ �� �ִ�
    -  �� �����ο� �������� ���������� ������ �� �ִ�
       
*/

CREATE TABLE coffee (
    coffee_id    NUMBER(4) PRIMARY KEY,
    coffee_name  VARCHAR2(40) NOT NULL UNIQUE,
    coffee_pirce NUMBER(5) CHECK ( coffee_price >= 0 ),
    coffee_size  CHAR(1) CHECK ( coffee_size IS NOT NULL
                                AND coffee_size IN ( 'T', 'G', 'V' ) )
);

INSERT INTO coffee VALUES(1, '�Ƹ޸�ī��', 1500, null);
INSERT INTO coffee VALUES(2, '�Ƹ޸�ī��(T)', 1200, 'T');
INSERT INTO coffee VALUES(3, '�Ƹ޸�ī��(L)', 1200, 'L');

SELECT * FROM coffee;
SELECT * FROM user_constraints;

DROP TABLE Coffee;
PURGE recyclebin;

CREATE TABLE coffee(
    coffee_id NUMBER(4) -- SYS000��� ���� ������ �������Ǹ��� ����� �� �ִ�
        CONSTRAINT coffee_id_pk PRIMARY KEY,
    coffee_name VARCHAR(40)
        CONSTRAINT coffee_name_UK UNIQUE
        CONSTRAINT coffee_name_nn NOT NULL,
    coffee_price NUMBER(5)
        CONSTRAINT coffee_price_positive CHECK(coffee_price >= 0)
        CONSTRAINT cooffee_price_nn NOT NULL,
    coffee_size CHAR(1)
        CONSTRAINT coffee_size_nn NOT NULL
        CONSTRAINT coffee_size_chk CHECK(coffee_size IN('T', 'G', 'V'))
);

SELECT * FROM user_constraints WHERE table_name = 'COFFEE';

INSERT INTO coffee VALUES(1, 'Americano', 2000, 'T');
INSERT INTO coffee VALUES(2, 'Caffe Latte', 2300, 'T');
INSERT INTO coffee VALUES(1, 'ī���', 2500, 'A');
INSERT INTO coffee VALUES(1, 'ī���', -2500, 'V');

SELECT * FROM coffee;








