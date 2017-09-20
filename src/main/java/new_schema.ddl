
    create table tbl_dept (
       deptno number(10,0) not null,
        dname varchar2(255 char),
        loc varchar2(255 char),
        primary key (deptno)
    );

    create table tbl_emp (
       empno number(10,0) not null,
        comm number(19,2),
        ename varchar2(255 char),
        gender varchar2(255 char),
        hiredate date,
        job varchar2(255 char),
        mgr number(10,0),
        sal number(19,2),
        deptno number(10,0),
        primary key (empno)
    );

    alter table tbl_emp 
       add constraint FKi7oweqfp7jnfmu9u18gb191dl 
       foreign key (deptno) 
       references tbl_dept;
