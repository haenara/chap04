
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
