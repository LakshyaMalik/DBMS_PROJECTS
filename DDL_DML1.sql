EXP 1
create table DEPT(
     DEPTNO int,
     DNAME varchar(100),
     LOC varchar(100));
 
   create table EMP(
     EMPNO int,
     ENAME varchar(100),
     JOB char(100),
     MGR int,
     HIREDATE varchar(10),
     SAL INT,
     COMM INT,
     DEPTNO INT
    );

INSERT INTO DEPT VALUES (1,"Lakshya","Kota"),(2,"Vidhi","Kota"),(3,"XYz","HJb");
INSERT INTO EMP VALUES (1,"Lakshya","Senior Solutions Architect",20,"2025/5/25","2500000",NULL,26),(2,"Vidhi","HR Manager",9,"26/4/2025",1600000,6000000,35),(3,"Reet","Architect",65,"26/7/2025",2000000,NULL,25);

SELECT * FROM DEPT;
SELECT * FROM EMP;

DESC DEPT;
DESC EMP;

select distinct DNAME from assignment_1.DEPT;

ALTER TABLE DEPT
ADD COMNT char(25),
ADD MISCEL char(25);

select * FROM DEPT;

ALTER TABLE DEPT
modify LOC varchar(115);

ALTER TABLE DEPT
DROP COMNT;
select * FROM DEPT;

ALTER TABLE DEPT
DROP MISCEL;
select * FROM DEPT; 

ALTER TABLE DEPT
RENAME DEPT12;
-- TRUNCATED THE TABLE 
TRUNCATE TABLE DEPT12;
DESC DEPT12; select * from DEPT12;

ALTER TABLE DEPT12 COMMENT = 'New table comment'; 
SHOW FULL COLUMNS from DEPT12;

DROP TABLE DEPT12;
SHOW TABLES;

