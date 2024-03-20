-- 데이터베이스에서 사용하는 주석

-- 현재 데이터베이스의 테이블 목록 보기
SELECT * FROM tabs; 
-- 현재 데이터베이스의 계정 목록 보기
SELECT * FROM all_users; 

-- 연습용 계정 HR 잠금 해제하기
ALTER USER hr ACCOUNT UNLOCK;
-- 연습용 계정 HR 비밀번호 변경하기
ALTER USER hr IDENTIFIED BY 1234;