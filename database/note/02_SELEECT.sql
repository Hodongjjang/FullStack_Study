-- 02_SELECT.sql

/*
    # SELECT �÷��� FROM ���̺��;
    
    - ���ϴ� ���̺��� ���ϴ� �÷��� ��ȸ�� �� �ִ� ������
    - ���� �÷��� ��ȸ �� ���� , �� ����Ѵ�
    - �÷��� �ڸ��� *�� ���°��� ��� �÷��� �ǹ��Ѵ�
    - �÷���� ���̺���� ��ҹ��ڸ� �������� �ʴ´�
    - �������� ��ҹ��ڸ� �������� �ʴ´�
    
    # DATE
    
    - ��¥ �� �ð� �����͸� ������ �� �ִ� �÷� Ÿ�� 
*/
DESC countries;
DESC employees;

SELECT
    *
FROM
    employees;

-- # �÷� AS�� �̿��� �ش� �÷��� �̸��� ���ϴ� �̸����� �����Ͽ� ��ȸ�� �� �ִ�
SELECT
    first_name AS �̸�,
    salary     AS ����
FROM
    employees;

-- # �÷��� ��� �����ڸ� Ȱ���Ͽ� �� �÷��� ����� ����� ��ȸ�� �� �ִ�
SELECT
    salary     AS "�� ��ġ!!",
    salary * 2 AS "�� ��ġ!!!",
    salary * 3 AS "�� ��ġ!!!",
    first_name AS "�̸�"
FROM
    employees;
    
-- # �÷������� ����� �� �ִ�
SELECT * FROM employees;

SELECT
    employee_id,
    first_name,
    job_id,
    commission_pct * salary AS "�Ǵ� Ŀ�̼�"
FROM
    employees;
    
-- # NVL(column, value) �Լ�
--  - ����� �� �ش� �÷� ���� null�� ��� ��� ����� ���� ������ �ش�
SELECT
    employee_id,
    first_name,
    job_id,
    nvl(commission_pct, 0) * salary AS "�Ǵ� Ŀ�̼�"
FROM
    employees;
    
-- # �÷��� �̾�ٿ��� ����ϱ�
SELECT first_name || ' ' || last_name AS full_name FROM employees;
SELECT first_name || ':' || salary AS "name:salary" FROM employees;   
SELECT salary || '/' ||  nvl(commission_pct, 0) AS "salary" FROM employees;

-- # SELECT DISTINCT : �� �����͸� �ѹ����� ��ȸ�Ѵ�(���������� �ִ� �� ��ȸ)
SELECT DISTINCT job_id FROM employees;
SELECT DISTINCT department_id FROM employees;
SELECT DISTINCT first_name FROM employees;

-- ����1 : ��� ������� ���/Ǯ����/��å/����/Ŀ�̼� �ݾ��� ��ȸ�� ������
SELECT * FROM employees;
SELECT
    employee_id AS "���",
    first_name || ' ' || last_name AS "Ǯ����",
    job_id AS "��å",
    salary * 12 AS "����",
    nvl(commission_pct, 0) * salary AS "Ŀ�̼� �ݾ�"
FROM
    employees;



SELECT
    country_name,
    country_id
FROM
    countries;

SELECT
    country_id,
    country_name
FROM
    countries;

SELECT
    *
FROM
    countries;

SELECT
    country_id,
    country_name
FROM
    countries;

SELECT
    country_id,
    country_name
FROM
    countries;

-- ����1 : ��� �μ�(departments)�� �μ���ȣ�� �μ����� ��ȸ�غ�����
SELECT
    department_id,
    department_name
FROM
    departments;
-- ����2 : ��� ���(employees)�� ���/�̸�/����/������� ��ȸ�غ�����]
SELECT
    *
FROM
    employees;

SELECT
    employee_id,
    first_name,
    salary,
    hire_date
FROM
    employees;