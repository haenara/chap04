
    create table tbl_dept (
       deptno number(10,0) not null,
        dname varchar2(255 char),
        loc varchar2(255 char),
        primary key (deptno)
    );

    create table tbl_emp (
       empno number(10,0) not null,
        comm number(19,2),
        deptno number(10,0),
        ename varchar2(255 char),
        gender varchar2(255 char),
        hiredate date,
        job varchar2(255 char),
        mgr number(10,0),
        sal number(19,2),
        primary key (empno)
    );

    create table tbl_members (
       uid varchar2(255 char) not null,
        uname varchar2(255 char),
        upw varchar2(255 char),
        primary key (uid)
    );
