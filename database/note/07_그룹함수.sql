-- 07_그룹함수.sql

/*
    #그룹함수
    - 원하는 컬럼을 기준으로 그룹을 묶어서 계산할 수 있는 함수들
    - 그룹을 묶을 때 기준이 되는 컬럼은 GROUP BY 절로 설정 할 수 있다
    - 그룹 함수를 사용하면 일반 컬럼은 함께 출력할 수 없다 
    - 그룹 함수를 사용하면 그룹 함수의 결과와 그룹의 기준이 되는 컬럼만 사용할 수 있다
    
*/

-- sum(column) : 해당 컬럼의 총합을 구해주는 그룹 함수
SELECT sum(SALARY) FROM employees;

-- 직책별 월급 총합
SELECT 
    sum(SALARY),
    job_id
FROM employees GROUP BY job_id;

-- 부서별 월급 총합
SELECT 
    sum(SALARY),
    department_id
FROM employees GROUP BY department_id;

-- avg(column) : 각 그룹의 해당 컬럼 평균값을 낼 수 있다
SELECT avg(salary), sum(salary), job_id FROM employees GROUP BY job_id;

-- count(column) : 해당 컬럼의 행의 개수를 구할 수 있다 (null값은 세지 않는다)
SELECT count(commission_pct) FROM employees;
SELECT department_id, count(commission_pct) FROM employees GROUP BY department_id;

-- max(column) : 그룹별 각 컬럼 최대값을 구할 수 있다
SELECT max(salary), job_id FROM employees GROUP BY job_id;

-- min(column) : 그룹별 각 컬럼 최소값을 구할 수 있다
SELECT min(salary), job_id FROM employees GROUP BY job_id;

-- 연습1: 각 직책별 평균 연봉을 구해보세요 (※월급 아님)

-- 연습2: 각 부서별로 가장 최근에 사원이 입사한 날짜와 가장 오래전 입사한 날짜를 조회해 보세요 

-- 연습1
select * from employees;
SELECT
    manager_ID,
    (avg(salary*12)||'$') AS "연봉평균"
FROM employees GROUP BY manager_ID;
      
-- 연습2      
    select * from employees;
    SELECT
    (select sysdate from dual) as "오늘",
        max(hire_date) AS "최근",
        min(hire_date) AS "오래됨",
        department_id
    FROM employees
    GROUP BY department_id;
    
  /*
    # HAVING
    
    - 그룹 함수로 묶어서 도출된 결과에 대해 조건을 조건을 적용하고 싶은 경우 사용하는 문법
    - WHERE절은 그룹으로 묶기 전 적용되기 때문에 
      그룹 함수의 결과는 WHERE절의 조건으로 사용할 수 없다

*/
-- ex) 평균 월급이 8000을 넘는 직책만 조회하고 싶을 때
SELECT AVG(salary) ,job_id FROM employees GROUP BY job_id Having avg(salary)>8000;

-- ex: 월급이 8000을 넘는 사원들의 직책별 평균월급

SELECt avg(salary),job_id From employees
Where salary > 8000 Group by job_id;

--연습1: 월급이 8천달러 이상인 사원이 3명이상인 부서만 출력해보세요

SELECT 
    department_id
FROM employees 
    where salary >=8000
    GROUP BY department_id  
    Having count(*)>=3;  
    

