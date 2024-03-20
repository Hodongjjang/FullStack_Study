-- 10_SELF JOIN.sql

/*
    
    # SELF JOIN
    
    - �ϳ��� ���̺��� �ڱ� �ڽ��� �÷��� JOIN�Ͽ� ���ϴ� �����͸� ���� ���
    - �ڱ� �ڽ� ���̺��� �⺻Ű�� �ܷ�Ű�� ��� ����ϴ� ���
        ex) employees�� manger_id�� employees_id�� �����ϴ� �ܷ�Ű�̴�
    - ���� ������ ��� ��� �÷��� �̸��� �����ϹǷ� ���̺���� �÷��� �տ� ���̺���� 
      �ݵ�� ����ؾ� �Ѵ�     

*/
SELECT
    *
FROM
    employees;

SELECT
    emp.first_name
    || ' '
    || emp.first_name AS "��� �̸�",
    mgr.last_name
    || ' '
    || mgr.last_name  AS "�Ŵ��� �̸�"
FROM
    employees emp,
    employees mgr
WHERE
    emp.manager_id = mgr.employee_id;
    
-- ����1: �Ŵ��� �̸��� e�� ���ԵǴ� ������� ��� ������ ��ȸ�غ�����
SELECT
    emp.*
FROM
    empolyees emp,
    empolyees mgr
WHERE
    emp.manager_id = mgr.employee_id;
AND LOWER(mgr.first_name)
LIKE '%e%'

-- ����2: ����ϴ� ����� 8�� �̻��� �Ŵ������� ������ ��ȸ�غ�����
-- Hint. group by, having, in
SELECT 
    * 
FROM 
empolyees
WHERE
    empolyee_id  IN(
    SELECT 
        manager_id
    FROM 
        empolyees 
    GROUP BY   
        manager_id 
    HAVIG COUNT(*) >= 8 ;
