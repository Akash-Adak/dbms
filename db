
SQL*Plus: Release 11.1.0.7.0 - Production on Wed Aug 6 14:44:03 2025

Copyright (c) 1982, 2008, Oracle.  All rights reserved.

Enter user-name: cse@cse2023
Enter password:

Connected to:
Oracle Database 11g Enterprise Edition Release 11.1.0.7.0 - Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> set pagesize 2000
SQL> set linesize 2000
SQL> select ename,empno from emp where job='ANALYST';

ENAME           EMPNO
---------- ----------
SCOTT            7788
FORD             7902

SQL> select ename from emp whose sal between 2000 and 3000;
select ename from emp whose sal between 2000 and 3000
                            *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select ename from emp where sal between 2000 and 3000;

ENAME
----------
JONES
BLAKE
CLARK
SCOTT
FORD

SQL> select ename from emp where sal <= 800;

ENAME
----------
SMITH

SQL> select ename from emp where sal in (800, 1600 , 2450);

ENAME
----------
SMITH
ALLEN
CLARK

SQL> select ename from emp where job in ('CLERK','SALESMAN','ANALYST');

ENAME
----------
SMITH
ALLEN
WARD
MARTIN
SCOTT
TURNER
ADAMS
JAMES
FORD
MILLER

10 rows selected.

SQL> select ename from emp where job or ('CLERK','SALESMAN','ANALYST');
select ename from emp where job or ('CLERK','SALESMAN','ANALYST')
                                *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select ename from emp where job= 'CLERK' or 'SALESMAN' or 'ANALYST';
select ename from emp where job= 'CLERK' or 'SALESMAN' or 'ANALYST'
                                                       *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select ename from emp where job in ('CLERK','SALESMAN','ANALYST');

ENAME
----------
SMITH
ALLEN
WARD
MARTIN
SCOTT
TURNER
ADAMS
JAMES
FORD
MILLER

10 rows selected.

SQL> select ename from emp where job='CLERK' or job='SALESMAN' or job='ANALYST';

ENAME
----------
SMITH
ALLEN
WARD
MARTIN
SCOTT
TURNER
ADAMS
JAMES
FORD
MILLER

10 rows selected.

SQL> select ename from emp where comm is not null;

ENAME
----------
ALLEN
WARD
MARTIN

SQL> select ename from emp where ename[0]='F';
select ename from emp where ename[0]='F'
                                 *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select ename from emp where ename like 'F%';

ENAME
----------
FORD

SQL> select ename from emp where ename like '_I%';

ENAME
----------
KING
MILLER

SQL> select ename,deptno from emp where empno=7566;

ENAME          DEPTNO
---------- ----------
JONES              20

SQL> select ename from emp where empno in (7369,7521,7839,7934,7788);

ENAME
----------
SMITH
WARD
SCOTT
KING
MILLER

SQL> select ename from emp where sal >=2000 and <= 3000;
select ename from emp where sal >=2000 and <= 3000
                                           *
ERROR at line 1:
ORA-00936: missing expression


SQL> select ename from emp where sal >=2000 and < = 3000;
select ename from emp where sal >=2000 and < = 3000
                                           *
ERROR at line 1:
ORA-00936: missing expression


SQL> select ename from emp where sal >=2000 and sal < = 3000;

ENAME
----------
JONES
BLAKE
CLARK
SCOTT
FORD

SQL> select * from emp where deptno is not in (10,30,40);
select * from emp where deptno is not in (10,30,40)
                                      *
ERROR at line 1:
ORA-00908: missing NULL keyword


SQL> select * from emp where deptno not in (10,30,40);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

SQL> select ename, sal from emp where sal not in (1500,2850);

ENAME             SAL
---------- ----------
SMITH             800
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
CLARK            2450
SCOTT            3000
KING             5000
ADAMS            1100
JAMES             950
FORD             3000
MILLER           1300

12 rows selected.

SQL> select ename, sal from emp where sal > 2000 and comm is null;

ENAME             SAL
---------- ----------
JONES            2975
BLAKE            2850
CLARK            2450
SCOTT            3000
KING             5000
FORD             3000

6 rows selected.

SQL> select ename from emp where deptno =20;

ENAME
----------
SMITH
JONES
SCOTT
ADAMS
FORD

SQL> select ename from emp where deptno =20 and job='CLERK';

ENAME
----------
SMITH
ADAMS

SQL> select ename from emp where job in ('CLERK','SALESMAN');

ENAME
----------
SMITH
ALLEN
WARD
MARTIN
TURNER
ADAMS
JAMES
MILLER

8 rows selected.

SQL> select ename from emp where deptno =10 or deptno=30 or deptno=40;

ENAME
----------
ALLEN
WARD
MARTIN
BLAKE
CLARK
KING
TURNER
JAMES
MILLER

9 rows selected.

SQL> select ename from emp where deptno in (10,30,40);

ENAME
----------
ALLEN
WARD
MARTIN
BLAKE
CLARK
KING
TURNER
JAMES
MILLER

9 rows selected.

SQL> select ename,deptno from emp where deptno in (10,30) and ename like 'a-z';

no rows selected

SQL> select ename,deptno from emp where deptno in (10,30) and ename like 'a%z';

no rows selected

SQL> select ename,sal from emp where deptno in (10,30) and sal >500;

ENAME             SAL
---------- ----------
ALLEN            1600
WARD             1250
MARTIN           1250
BLAKE            2850
CLARK            2450
KING             5000
TURNER           1500
JAMES             950
MILLER           1300

9 rows selected.

SQL> select ename,sal "employes and monthly salary"  from emp where deptno in (10,30) and sal >500;

ENAME      employes and monthly salary
---------- ---------------------------
ALLEN                             1600
WARD                              1250
MARTIN                            1250
BLAKE                             2850
CLARK                             2450
KING                              5000
TURNER                            1500
JAMES                              950
MILLER                            1300

9 rows selected.

SQL> select ename||sal "employes and monthly salary"  from emp where deptno in (10,30) and sal >500;

employes and monthly salary
--------------------------------------------------
ALLEN1600
WARD1250
MARTIN1250
BLAKE2850
CLARK2450
KING5000
TURNER1500
JAMES950
MILLER1300

9 rows selected.

SQL> select ename,deptno from emp where deptno in (10,30) and ename orderby ename;
select ename,deptno from emp where deptno in (10,30) and ename orderby ename
                                                               *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select ename,deptno from emp where deptno in (10,30) and order by ename;
select ename,deptno from emp where deptno in (10,30) and order by ename
                                                         *
ERROR at line 1:
ORA-00936: missing expression


SQL> select ename,deptno from emp where deptno in (10,30) and ename order by ;
select ename,deptno from emp where deptno in (10,30) and ename order by
                                                               *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select ename,deptno from emp where deptno in (10,30) order by ename;

ENAME          DEPTNO
---------- ----------
ALLEN              30
BLAKE              30
CLARK              10
JAMES              30
KING               10
MARTIN             30
MILLER             10
TURNER             30
WARD               30

9 rows selected.

SQL>  select ename||',' || sal "employes and monthly salary"  from emp where deptno in (10,30) and sal >1500;

employes and monthly salary
---------------------------------------------------
ALLEN,1600
BLAKE,2850
CLARK,2450
KING,5000

SQL>  select ename "employee" , sal "monthly salary"  from emp where deptno in (10,30) and sal >1500;

employee   monthly salary
---------- --------------
ALLEN                1600
BLAKE                2850
CLARK                2450
KING                 5000

SQL>  select ename , hiredate from emp  where hiredate='%1982';
 select ename , hiredate from emp  where hiredate='%1982'
                                                  *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected


SQL>  select ename , hiredate from emp  where hiredate='__-___-1982';
 select ename , hiredate from emp  where hiredate='__-___-1982'
                                                  *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected


SQL>  select ename , hiredate from emp  where hiredate like '%1982';

no rows selected

SQL>  select ename , hiredate from emp  where hiredate like '__-__-1982';

no rows selected

SQL>  select ename , hiredate from emp  where hiredate like '%82';

ENAME      HIREDATE
---------- ---------
SCOTT      09-DEC-82
MILLER     23-JAN-82

SQL>  select ename from emp like between '01-jan-81' and '31-dec-81';
 select ename from emp like between '01-jan-81' and '31-dec-81'
                       *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL>  select ename from emp  between '01-jan-81' and '31-dec-81';
 select ename from emp  between '01-jan-81' and '31-dec-81'
                        *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL>  select ename ,sal from emp where job='MANAGER' and hiredate like '%81';

ENAME             SAL
---------- ----------
JONES            2975
BLAKE            2850
CLARK            2450

SQL>  select ename from emp  hiredate not between '01-jan-81' and '31-dec-81';
 select ename from emp  hiredate not between '01-jan-81' and '31-dec-81'
                                 *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL>  select ename ,hiredate from emp where  hiredate not between '01-jan-81' and '31-dec-81';

ENAME      HIREDATE
---------- ---------
SMITH      17-DEC-80
SCOTT      09-DEC-82
ADAMS      12-JAN-83
MILLER     23-JAN-82

SQL>  select ename  from emp where  hiredate not between '01-jan-81' and '31-dec-81';

ENAME
----------
SMITH
SCOTT
ADAMS
MILLER

SQL>  select ename  from emp where  job is not 'MANAGER';
 select ename  from emp where  job is not 'MANAGER'
                                          *
ERROR at line 1:
ORA-00908: missing NULL keyword


SQL>  select * from emp where  hiredate not between '01-jan-81' and '31-dec-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

SQL>  select ename  from emp where  job = not 'MANAGER';
 select ename  from emp where  job = not 'MANAGER'
                                     *
ERROR at line 1:
ORA-00936: missing expression


SQL>  select ename  from emp where  job not in('MANAGER');

ENAME
----------
SMITH
ALLEN
WARD
MARTIN
SCOTT
KING
TURNER
ADAMS
JAMES
FORD
MILLER

11 rows selected.

SQL>  select * from emp where to_char( hiredate ,'YY)<>'81';
ERROR:
ORA-01756: quoted string not properly terminated


SQL>  select * from emp where to_char( hiredate ,'YY')<>'81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

SQL>  select * from emp where to_char( hiredate ,'YYYY')<>'1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

SQL>  select * from emp where to_char( hiredate ,'YYYY')<>'1981' and job='MANAGER';

no rows selected

SQL>  select ename,sal from emp where to_char( hiredate ,'YYYY')<>'1981' and job='MANAGER';

no rows selected

SQL>  select ename,sal from emp where to_char( hiredate ,'YYYY')'1981' and job='MANAGER';
 select ename,sal from emp where to_char( hiredate ,'YYYY')'1981' and job='MANAGER'
                                                           *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL>  select ename,sal from emp where to_char( hiredate ,'YYYY') '1981' and job='MANAGER';
 select ename,sal from emp where to_char( hiredate ,'YYYY') '1981' and job='MANAGER'
                                                            *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL>  select ename,sal from emp where to_char( hiredate ,'YYYY')= '1981' and job='MANAGER';

ENAME             SAL
---------- ----------
JONES            2975
BLAKE            2850
CLARK            2450

SQL>  select ename,sal ,comm from emp where comm is not null;

ENAME             SAL       COMM
---------- ---------- ----------
ALLEN            1600        300
WARD             1250        500
MARTIN           1250       1400

SQL>  select ename,sal ,comm from emp where comm is not null order by dsc sal;
 select ename,sal ,comm from emp where comm is not null order by dsc sal
                                                                     *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL>  select ename,sal ,comm from emp where comm is not null order by sal dsc;
 select ename,sal ,comm from emp where comm is not null order by sal dsc
                                                                     *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL>  select ename,sal ,comm from emp where comm is not null order by sal desc;

ENAME             SAL       COMM
---------- ---------- ----------
ALLEN            1600        300
MARTIN           1250       1400
WARD             1250        500

SQL> select ename from emp where ename like '--A%';

no rows selected

SQL> select ename from emp where ename like '__A%';

ENAME
----------
BLAKE
CLARK
ADAMS
