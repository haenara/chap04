
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
        gender number(10,0),
        hiredate timestamp,
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

    create table tbl_dept (
       deptno integer not null,
        dname varchar(255),
        loc varchar(255),
        primary key (deptno)
    ) engine=InnoDB;

    create table tbl_emp (
       empno integer not null,
        comm decimal(19,2),
        deptno integer,
        ename varchar(255),
        gender varchar(255),
        hiredate date,
        job varchar(255),
        mgr integer,
        sal decimal(19,2),
        primary key (empno)
    ) engine=InnoDB;

    create table tbl_members (
       uid varchar(255) not null,
        uname varchar(255),
        upw varchar(255),
        primary key (uid)
    ) engine=InnoDB;

    create table tbl_profile (
       fno bigint not null auto_increment,
        current bit not null,
        fname varchar(255),
        primary key (fno)
    ) engine=InnoDB;

    create table tbl_dept (
       deptno number(10,0) not null,
        dname varchar2(255 char),
        loc varchar2(255 char),
        primary key (deptno)
    );

    create table tbl_dept_tbl_emp (
       MyDept_deptno number(10,0) not null,
        emps_empno number(10,0) not null
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
        dept_deptno number(10,0),
        primary key (empno)
    );

    create table tbl_members (
       uid varchar2(255 char) not null,
        uname varchar2(255 char),
        upw varchar2(255 char),
        primary key (uid)
    );

    create table tbl_dept (
       deptno integer not null,
        dname varchar(255),
        loc varchar(255),
        primary key (deptno)
    ) engine=InnoDB;

    create table tbl_emp (
       empno integer not null,
        comm decimal(19,2),
        ename varchar(255),
        gender varchar(255),
        hiredate date,
        job varchar(255),
        sal decimal(19,2),
        deptno integer,
        mgr integer,
        primary key (empno)
    ) engine=InnoDB;

    create table tbl_members (
       id varchar(255) not null,
        pw varchar(255),
        uname varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table tbl_profile (
       fno bigint not null auto_increment,
        curr bit not null,
        fname varchar(255),
        primary key (fno)
    ) engine=InnoDB;

    alter table tbl_emp 
       add constraint FKi7oweqfp7jnfmu9u18gb191dl 
       foreign key (deptno) 
       references tbl_dept (deptno);

    alter table tbl_emp 
       add constraint FK40s7ax4ribn767fneuqeu8s41 
       foreign key (mgr) 
       references tbl_emp (empno);
