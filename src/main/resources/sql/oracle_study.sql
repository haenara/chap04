select * from tbl_dept;

select * from tbl_emp;

insert into tbl_dept
select * from dept;


insert into tbl_emp
(comm, deptno, empno, ename, gender, hiredate, job, mgr, sal)
select comm, deptno, empno, ename, gender, hiredate, job, mgr, sal from emp;



insert into tbl_profile
    (fno, fname, curr)
    values
    (10,"user01_profile",1);
    
    select * from tbl_profile;

