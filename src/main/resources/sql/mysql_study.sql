select * from tbl_emp;
commit;

update emp
	set gender = 'F'
	where gender = 'f';
	commit;

	
	
select * from tbl_dept;
select * from tbl_emp;
	
insert into tbl_dept
select * from dept;


insert into tbl_emp
(comm, deptno, empno, ename, gender, hiredate, job, mgr, sal)
select comm, deptno, empno, ename, gender, hiredate, job, mgr, sal from emp;







create table tbl_members (
       id varchar(255) not null auto_increment,
        pw varchar(255),
        uname varchar(255),
        primary key (id)
    ) engine=InnoDB
    
    
    insert into tbl_profile
    (fname, curr)
    values
    ("user01_profile",1);
    
    select * from tbl_profile;
    
     create table tbl_members (
       userid varchar(255) not null auto_increment,
        uname varchar(255),
        userpw varchar(255),
        primary key (userid)
    ) engine=InnoDB