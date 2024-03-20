ALTER TABLE notice ADD notice_view_count NUMBER(5) DEFAULT 0;

ALTER TABLE notice DROP COLUMN notice_view_count;

SELECT * FROM notice;

