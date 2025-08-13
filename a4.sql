select ename,empno,deptno from emp where ename='BLAKE';

ENAME           EMPNO     DEPTNO
---------- ---------- ----------
BLAKE            7698         30

SQL> select ename from emp where mgr is null;

ENAME
----------
KING

SQL> select empno,ename,sal , (sal+sal*0.15) "salary increased" from emp;

     EMPNO ENAME             SAL salary increased
---------- ---------- ---------- ----------------
      7369 SMITH             800              920
      7499 ALLEN            1600             1840
      7521 WARD             1250           1437.5
      7566 JONES            2975          3421.25
      7654 MARTIN           1250           1437.5
      7698 BLAKE            2850           3277.5
      7782 CLARK            2450           2817.5
      7788 SCOTT            3000             3450
      7839 KING             5000             5750
      7844 TURNER           1500             1725
      7876 ADAMS            1100             1265
      7900 JAMES             950           1092.5
      7902 FORD             3000             3450
      7934 MILLER           1300             1495

14 rows selected.

SQL> select empno,ename,sal , round(sal+sal*0.15) "salary increased" from emp;

     EMPNO ENAME             SAL salary increased
---------- ---------- ---------- ----------------
      7369 SMITH             800              920
      7499 ALLEN            1600             1840
      7521 WARD             1250             1438
      7566 JONES            2975             3421
      7654 MARTIN           1250             1438
      7698 BLAKE            2850             3278
      7782 CLARK            2450             2818
      7788 SCOTT            3000             3450
      7839 KING             5000             5750
      7844 TURNER           1500             1725
      7876 ADAMS            1100             1265
      7900 JAMES             950             1093
      7902 FORD             3000             3450
      7934 MILLER           1300             1495

14 rows selected.

SQL> select ename,job from emp where ename length=5;
select ename,job from emp where ename length=5
                                      *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select ename,job from emp where length(ename)=5;

ENAME      JOB
---------- ---------
SMITH      CLERK
ALLEN      SALESMAN
JONES      MANAGER
BLAKE      MANAGER
CLARK      MANAGER
SCOTT      ANALYST
ADAMS      CLERK
JAMES      CLERK

8 rows selected.

SQL>
SQL> select ename from emp where ename not like "F%":
  2  ;
select ename from emp where ename not like "F%":
                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select ename from emp where ename not like "F%";
select ename from emp where ename not like "F%"
                                           *
ERROR at line 1:
ORA-00904: "F%": invalid identifier


SQL> select ename from emp where ename not like 'F%';

ENAME
----------
SMITH
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
SCOTT
KING
TURNER
ADAMS
JAMES
MILLER

13 rows selected.

SQL> select ename from emp where ename like '%L__';

ENAME
----------
ALLEN
MILLER

SQL> select ename from emp where ename like '%N';

ENAME
----------
ALLEN
MARTIN

SQL> select ename ,job from emp where length(ename) =5 and ename like 'S%';

ENAME      JOB
---------- ---------
SMITH      CLERK
SCOTT      ANALYST

SQL> select ename ,job from emp where length(ename) =5 and ename like '_A%';

ENAME      JOB
---------- ---------
JAMES      CLERK

SQL> select ename ,job from emp where length(ename) =5 and ename like '%S';

ENAME      JOB
---------- ---------
JONES      MANAGER
ADAMS      CLERK
JAMES      CLERK

SQL> select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename like in ('J%','A%','M%');
select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename like in ('J%','A%','M%')
                                                                                                    *
ERROR at line 1:
ORA-00936: missing expression


SQL> select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename in like  ('J%','A%','M%');
select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename in like  ('J%','A%','M%')
                                                                                                  *
ERROR at line 1:
ORA-00936: missing expression


SQL> select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename  like ('J%','A%','M%');
select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename  like ('J%','A%','M%')
                                                                                                          *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> select initcap(ename) "employee name" , length(ename) as "length of name" from emp where ename like 'J%' or ename like 'A%' or ename like 'M%';

employee n length of name
---------- --------------
Allen                   5
Jones                   5
Martin                  6
Adams                   5
James                   5
Miller                  6

6 rows selected.

SQL> select initcap(ename) "employee name" , length(ename) "length of name" from emp where ename like 'J%' or ename like 'A%' or ename like 'M%';

employee n length of name
---------- --------------
Allen                   5
Jones                   5
Martin                  6
Adams                   5
James                   5
Miller                  6

6 rows selected.

SQL> select initcap(ename) as  "employee name" , length(ename) as "length of name" from emp where ename like 'J%' or ename like 'A%' or ename like 'M%';

employee n length of name
---------- --------------
Allen                   5
Jones                   5
Martin                  6
Adams                   5
James                   5
Miller                  6

6 rows selected.

SQL> select initcap(ename)  "employee name" , length(ename)  "length of name" from emp where ename like 'J%' or ename like 'A%' or ename like 'M%';

employee n length of name
---------- --------------
Allen                   5
Jones                   5
Martin                  6
Adams                   5
James                   5
Miller                  6

6 rows selected.

SQL> select * from emp where job not like 'CL%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO         PF
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

10 rows selected.

SQL> select ename from emp where sal > 2500;

ENAME
----------
JONES
BLAKE
SCOTT
KING
FORD

SQL> select ename from emp where sal > 2500 and job='MANAGER';

ENAME
----------
JONES
BLAKE

SQL> select ename from emp where sal > 1000 and job in ('CLERK','SALESMAN');

ENAME
----------
ALLEN
WARD
MARTIN
TURNER
ADAMS
MILLER

6 rows selected.

SQL> select ename,lpad(sal,15,$) "salary" from emp ;
select ename,lpad(sal,15,$) "salary" from emp
                         *
ERROR at line 1:
ORA-00911: invalid character


SQL> select ename,lpad(sal,15,'$') "salary" from emp ;

ENAME      salary
---------- ---------------
SMITH      $$$$$$$$$$$$800
ALLEN      $$$$$$$$$$$1600
WARD       $$$$$$$$$$$1250
JONES      $$$$$$$$$$$2975
MARTIN     $$$$$$$$$$$1250
BLAKE      $$$$$$$$$$$2850
CLARK      $$$$$$$$$$$2450
SCOTT      $$$$$$$$$$$3000
KING       $$$$$$$$$$$5000
TURNER     $$$$$$$$$$$1500
ADAMS      $$$$$$$$$$$1100
JAMES      $$$$$$$$$$$$950
FORD       $$$$$$$$$$$3000
MILLER     $$$$$$$$$$$1300

14 rows selected.

SQL> select ename,sal,lpad(sal,15,'$') "salary" from emp ;

ENAME             SAL salary
---------- ---------- ---------------
SMITH             800 $$$$$$$$$$$$800
ALLEN            1600 $$$$$$$$$$$1600
WARD             1250 $$$$$$$$$$$1250
JONES            2975 $$$$$$$$$$$2975
MARTIN           1250 $$$$$$$$$$$1250
BLAKE            2850 $$$$$$$$$$$2850
CLARK            2450 $$$$$$$$$$$2450
SCOTT            3000 $$$$$$$$$$$3000
KING             5000 $$$$$$$$$$$5000
TURNER           1500 $$$$$$$$$$$1500
ADAMS            1100 $$$$$$$$$$$1100
JAMES             950 $$$$$$$$$$$$950
FORD             3000 $$$$$$$$$$$3000
MILLER           1300 $$$$$$$$$$$1300

14 rows selected.

SQL> select ename,sal,rpad(sal,10,'x') "salary" from emp ;

ENAME             SAL salary
---------- ---------- ----------
SMITH             800 800xxxxxxx
ALLEN            1600 1600xxxxxx
WARD             1250 1250xxxxxx
JONES            2975 2975xxxxxx
MARTIN           1250 1250xxxxxx
BLAKE            2850 2850xxxxxx
CLARK            2450 2450xxxxxx
SCOTT            3000 3000xxxxxx
KING             5000 5000xxxxxx
TURNER           1500 1500xxxxxx
ADAMS            1100 1100xxxxxx
JAMES             950 950xxxxxxx
FORD             3000 3000xxxxxx
MILLER           1300 1300xxxxxx

14 rows selected.

SQL> select round(15,19,1) "format" from dual;
select round(15,19,1) "format" from dual
                   *
ERROR at line 1:
ORA-00939: too many arguments for function


SQL> select round(15.19,1) "format" from dual;

    format
----------
      15.2

SQL> select sqrt(5) "squar root" from dual;

squar root
----------
2.23606798

SQL> select sqrt(25) "squar root" from dual;

squar root
----------
         5

SQL> select abs(-19) "absolute value" from dual;

absolute value
--------------
            19

SQL> select pow(5,2) "power" from dual;
select pow(5,2) "power" from dual
       *
ERROR at line 1:
ORA-00904: "POW": invalid identifier


SQL> select power(5,2) "power" from dual;

     power
----------
        25

SQL> select lower('AKASH') "lowercase" from dual;

lower
-----
akash

SQL> select upper('Akash') "lowercase" from dual;

lower
-----
AKASH

SQL> select substring('Akash',0,3) "lowercase" from dual;
select substring('Akash',0,3) "lowercase" from dual
       *
ERROR at line 1:
ORA-00904: "SUBSTRING": invalid identifier


SQL> select substr('Akash',0,3) "lowercase" from dual;

low
---
Aka

SQL> select substr('Akash',3,length('Akash')) "lowercase" from dual;

low
---
ash

SQL> select ltrim('AKASH','A') from dual;

LTRI
----
KASH

SQL> select ltrim('AKASH','H') from dual;

LTRIM
-----
AKASH

SQL> select rtrim('AKASH','H') from dual;

RTRI
----
AKAS

SQL> select trim('HELLH','H') from dual;
select trim('HELLH','H') from dual
                   *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> select trim('H' from 'HELLH') from dual;

TRI
---
ELL

SQL> select replace('HELLH','E','S') from dual;

REPLA
-----
HSLLH

