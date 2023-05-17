
   
   
   create table Department
   (
   deptid int primary key,
   dname varchar(20),
   deptdesc varchar(20)
   );
   
   
   create table Manager
   (
   Mgrid int primary key,
   mname varchar(20),
   contactno int,
   salary double(9,2),
   deptno int,
   constraint fk foreign key(deptno) references Department(deptid) on delete cascade 
   );
   
   create table emp
   (
   EmpId int, 
   name varchar(20), 
   address varchar(20), 
   email varchar(20) not null unique, 
   contactno unique, 
   Hiredate date,
   mgrid int, 
   salary double(9,2), 
   deptid int, 
   job varchar(20),
   constraint primary key (empid,deptid),
   constraint fk foreign key(deptno) references Department(deptid) on delete cascade 
    constraint fk foreign key(mgrid) references Manager(mgrid) on delete cascade 
   )
