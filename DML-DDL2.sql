--EXP 2
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
    create table student(
    roll_no int,
    name varchar(10),
    address varchar(10),
    age int);
    
    insert into student
    values (1,'Ram','Delhi',18),(2,'Ramesh','Gurgaon',18),(3,'Sujit','Rothak',20),(4,'Suresh','Delhi',18);
    
    create table course(
    course_id int, roll_no int);
    
    insert into course values(1,1),(2,2),(2,3),(3,4);
    DELETE t1 FROM student t1
INNER JOIN student t2
ON t1.name = t2.name
WHERE t1.id = t2.id;
    select * from student,course where student.roll_no = course.roll_no; 
    
    select student.roll_no,course_id,name,age
    from student left join course on student.roll_no = course.roll_no;
    
insert into DEPT values(10,"Accounting","New York");
insert into DEPT values(20,"Research","Dallas");
insert into DEPT values(30,"Sales","Chichago");
insert into DEPT values(40,"Operations","Boston");
insert into EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) 
values (7369,"SMITH","CLERK",7902,"1980-12-17",800,NULL,20),(7499,"ALLEN","SALESMAN",7698,"1981-02-20",1600,300,30);



insert into EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno)
 values (7521,"WARD","SALESMAN",7698,"1981-02-22",1250,300,30),(7566,"JONES","MANAGER",7839,"1981-04-02",2975,NULL,20),
		(7654,"MARTIN","SALESMAN",7698,"1981-07-28",1250,1400,30),(7698,"BLAKE","MANAGER",7839,"1981-05-01",2850,NULL,30),
        (7782,"CLARK","MANAGER",7839,"1981-06-09",2450,NULL,10),(7788,"SCOTT","ANALYST",7566,"1987-04-19",3000,NULL,20),
        (7839,"KING","PRESIDENT",NULL,"1981-11-17",5000,NULL,10),(7844,"TURNER","SALESMAN",7698,"1981-09-08",1500,0,30),
        (7876,"ADAMS","CLERK",7788,"1987-05-23",1100,NULL,20),(7900,"JAMES","CLERK",7698,"1981-12-03",950,NULL,30),
        (7902,"FORD","ANALYST",7566,"1981-12-03",3000,NULL,20),(7934,"MILLER","CLERK",7782,"1982-01-23",1300,NULL,10);
update EMP set COMM=500 where EMPNO=7521;
select * from EMP;
create table MANAGER(
mgr_id	int,
name varchar(30),
salary	int,
hiredate date);
select * from DEPT;
update DEPT set LOC="New York";
insert into MANAGER select mgr ,ename ,sal,hiredate from EMP where JOB="MANAGER" ;
select ename,sal from emp;
select NAME FROM EMP WHERE empno=7788;
create table DEPT1 as select DEPTNO , DNAME , LOC FROM DEPT;
select * from DEPT1;
 select NAME,job FROM EMP;
 select distinct name,job,empno,hiredate from emp order by salary desc;

 select distinct empno,dname,dept.deptno from dept left join emp on emp.deptno = dept.deptno;
  
  SELECT distinct e1.name AS employee_name, e2.name AS manager_name
FROM emp e1
Left JOIN emp e2
ON e1.mgr = e2.empno and e2.job='manager';

create table salegrade

select * from manager;
 select distinct empno,name,dept.deptno from dept join emp on emp.deptno = dept.deptno;