-- 02_SELECT.sql

/*
    # SELECT 컬럼명 FROM 테이블명;
    
    - 원하는 테이블의 원하는 컬럼을 조회할 수 있는 쿼리문
    - 여러 컬럼을 조회 할 때는 , 를 사용한다
    - 컬럼명 자리에 *를 쓰는것은 모든 컬럼을 의미한다
    - 컬럼명과 테이블명은 대소문자를 구분하지 않는다
    - 쿼리문도 대소문자를 구분하지 않는다
    
    # DATE
    
    - 날짜 및 시간 데이터를 저장할 수 있는 컬럼 타입 
*/
DESC countries;
DESC employees;

SELECT
    *
FROM
    employees;

-- # 컬럼 AS를 이용해 해당 컬럼의 이름을 원하는 이름으로 설정하여 조회할 수 있다
SELECT
    first_name AS 이름,
    salary     AS 월급
FROM
    employees;

-- # 컬럼에 산술 연산자를 활용하여 각 컬럼을 계산한 결과를 조회할 수 있다
SELECT
    salary     AS "한 달치!!",
    salary * 2 AS "두 달치!!!",
    salary * 3 AS "세 달치!!!",
    first_name AS "이름"
FROM
    employees;
    
-- # 컬럼끼리도 계산할 수 있다
SELECT * FROM employees;

SELECT
    employee_id,
    first_name,
    job_id,
    commission_pct * salary AS "건당 커미션"
FROM
    employees;
    
-- # NVL(column, value) 함수
--  - 계산할 때 해당 컬럼 값이 null인 경우 대신 사용할 값을 지정해 준다
SELECT
    employee_id,
    first_name,
    job_id,
    nvl(commission_pct, 0) * salary AS "건당 커미션"
FROM
    employees;
    
-- # 컬럼값 이어붙여서 출력하기
SELECT first_name || ' ' || last_name AS full_name FROM employees;
SELECT first_name || ':' || salary AS "name:salary" FROM employees;   
SELECT salary || '/' ||  nvl(commission_pct, 0) AS "salary" FROM employees;

-- # SELECT DISTINCT : 각 데이터를 한번씩만 조회한다(등장한적이 있는 값 조회)
SELECT DISTINCT job_id FROM employees;
SELECT DISTINCT department_id FROM employees;
SELECT DISTINCT first_name FROM employees;

-- 연습1 : 모든 사원들의 사번/풀네임/직책/연봉/커미션 금액을 조회해 보세요
SELECT * FROM employees;
SELECT
    employee_id AS "사번",
    first_name || ' ' || last_name AS "풀네임",
    job_id AS "직책",
    salary * 12 AS "연봉",
    nvl(commission_pct, 0) * salary AS "커미션 금액"
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

-- 연습1 : 모든 부서(departments)의 부서번호와 부서명을 조회해보세요
SELECT
    department_id,
    department_name
FROM
    departments;
-- 연습2 : 모든 사원(employees)의 사번/이름/월급/고용일을 조회해보세요]
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