SQL> select avg(sal) from emp;

  AVG(SAL)
----------
2073.21429

SQL> select avg(sal) from emp where job='MANAGER';

  AVG(SAL)
----------
2758.33333

SQL> select sum(sal) from emp;

  SUM(SAL)
----------
     29025

SQL> select sum(sal) from emp where job='MANAGER';

  SUM(SAL)
----------
      8275

SQL> select min(sal) from emp;

  MIN(SAL)
----------
       800

SQL> select max(sal) from emp;

  MAX(SAL)
----------
      5000

SQL> select max(sal) from emp where job='CLERK';

  MAX(SAL)
----------
      1300

SQL> select min(sal) from emp where job='CLERK';

  MIN(SAL)
----------
       800


SQL> select max(sal) "max salary", min(sal) "min salary" , avg(sal) "average salary", sum(sal) "total salary" from emp ;

max salary min salary average salary total salary
---------- ---------- -------------- ------------
      5000        800     2073.21429        29025




SQL> select max(sal) "max salary", min(sal) "min salary" , avg(sal) "average salary", sum(sal) "total salary" from emp where job='CLERK';

max salary min salary average salary total salary
---------- ---------- -------------- ------------
      1300        800         1037.5         4150



SQL> select count(ename) from emp;

COUNT(ENAME)
------------
          14



SQL> select count(ename) from emp  group by deptno;

COUNT(ENAME)
------------
           6
           5
           3

SQL> select count(*) from emp where job='MANAGER';

  COUNT(*)
----------
         3

SQL> select count(ename), avg(sal) from emp group by deptno;

COUNT(ENAME)   AVG(SAL)
------------ ----------
           6 1566.66667
           5       2175
           3 2916.66667

SQL> select sum(sal) from emp group by deptno;

  SUM(SAL)
----------
      9400
     10875
      8750

SQL> select max(sal) from emp group by deptno;

  MAX(SAL)
----------
      2850
      3000
      5000

SQL> select deptno , max(sal) from emp group by deptno;

    DEPTNO   MAX(SAL)
---------- ----------
        30       2850
        20       3000
        10       5000

SQL> select count(ename) from emp where comm is null;

COUNT(ENAME)
------------
          11

SQL> select count(*) from emp where comm is null;

  COUNT(*)
----------
        11

SQL> select count(*) from emp where comm is not null;

  COUNT(*)
----------
         3

SQL> select avg(sal) "average salary" from emp group by job;

average salary
--------------
        1037.5
          1400
          5000
    2758.33333
          3000

SQL> select job, avg(sal) "average salary" from emp group by job;

JOB       average salary
--------- --------------
CLERK             1037.5
SALESMAN            1400
PRESIDENT           5000
MANAGER       2758.33333
ANALYST             3000

SQL> select job,min(sal) " min salary" , max(sal) "max salary" ,sum(sal) "total salary" , avg(sal) "average salary" from emp group by job;

JOB        min salary max salary total salary average salary
--------- ----------- ---------- ------------ --------------
CLERK             800       1300         4150         1037.5
SALESMAN         1250       1600         5600           1400
PRESIDENT        5000       5000         5000           5000
MANAGER          2450       2975         8275     2758.33333
ANALYST          3000       3000         6000           3000

SQL>
SQL> set pagesize 2000;
SQL> set linesize 2000;
SQL> select count(empno) "no of employees" , avg(sal) "average salary" from emp group by deptno and order by count(empno) desc;
select count(empno) "no of employees" , avg(sal) "average salary" from emp group by deptno and order by count(empno) desc
                                                                                           *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select count(empno) "no of employees" , avg(sal) "average salary" from emp group by deptno  order by count(empno) desc;

no of employees average salary
--------------- --------------
              6     1566.66667
              5           2175
              3     2916.66667

SQL> select deptno , count(empno) "no of employees" , avg(sal) "average salary" from emp group by deptno  order by count(empno) desc;

    DEPTNO no of employees average salary
---------- --------------- --------------
        30               6     1566.66667
        20               5           2175
        10               3     2916.66667

SQL> select count(job) "no of unique jobs" from emp;

no of unique jobs
-----------------
               14

SQL> select count(job) "no of unique jobs" from emp where job=distinct;
select count(job) "no of unique jobs" from emp where job=distinct
                                                         *
ERROR at line 1:
ORA-00936: missing expression


SQL> select count(job) "no of unique jobs" from emp where job is distinct;
select count(job) "no of unique jobs" from emp where job is distinct
                                                            *
ERROR at line 1:
ORA-00908: missing NULL keyword


SQL> select count(distinct job) "no of unique jobs" from emp;

no of unique jobs
-----------------
                5

SQL> select * from emp where job='MANAGER' order by hiredate desc;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO         PF
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20

SQL> select job, min(sal) "min" , max(sal) "max" , avg(sal) "average" , sum(sal) "total sal" from emp group by job;

JOB              min        max    average  total sal
--------- ---------- ---------- ---------- ----------
CLERK            800       1300     1037.5       4150
SALESMAN        1250       1600       1400       5600
PRESIDENT       5000       5000       5000       5000
MANAGER         2450       2975 2758.33333       8275
ANALYST         3000       3000       3000       6000

SQL> select ename from emp order by deptno aesc sal desc;
select ename from emp order by deptno aesc sal desc
                                      *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select ename from emp order by deptno aces sal desc;
select ename from emp order by deptno aces sal desc
                                      *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select * from emp order by deptno asce sal desc;
select * from emp order by deptno asce sal desc
                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select * from emp order by deptno , sal desc;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO         PF
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500                    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

14 rows selected.

SQL> select min(ename) "first" , max(ename) "last"  from emp order by ename;

first      last
---------- ----------
ADAMS      WARD

SQL> select avg(sal) "average", max(sal) "max" , min(sal) "min" from emp where job='SALESMAN';

   average        max        min
---------- ---------- ----------
      1400       1600       1250

SQL> select count(empno) "total no of employee" from emp where deptno=30;

total no of employee
--------------------
                   6

SQL> select sum(sal) "total", max(sal) "max" , min(sal) "min" from emp where job='SALESMAN';

     total        max        min
---------- ---------- ----------
      5600       1600       1250

SQL> select count(empno) " no of employee" , job from emp grtoup by job;
select count(empno) " no of employee" , job from emp grtoup by job
                                                            *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select count(empno) " no of employee" , job from emp group by job;

 no of employee JOB
--------------- ---------
              4 CLERK
              4 SALESMAN
              1 PRESIDENT
              3 MANAGER
              2 ANALYST

SQL> select avg(sal) "average" ,job from emp where job != 'MANAGER';
select avg(sal) "average" ,job from emp where job != 'MANAGER'
                           *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> select avg(sal) "average" , job from emp where job != 'MANAGER';
select avg(sal) "average" , job from emp where job != 'MANAGER'
                            *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> select job, avg(sal) "average salary" from emp where job != 'MANAGER';
select job, avg(sal) "average salary" from emp where job != 'MANAGER'
       *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> select job, avg(sal) "average salary" from emp group by job  where job != 'MANAGER';
select job, avg(sal) "average salary" from emp group by job  where job != 'MANAGER'
                                                             *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select job, avg(sal) "average salary" from emp group by job  having job != 'MANAGER';

JOB       average salary
--------- --------------
CLERK             1037.5
SALESMAN            1400
PRESIDENT           5000
ANALYST             3000

SQL> select job from emp where count(job) > 2;
select job from emp where count(job) > 2
                          *
ERROR at line 1:
ORA-00934: group function is not allowed here


SQL> select job from emp group by job having count(job
  2  ) >2;

JOB
---------
CLERK
SALESMAN
MANAGER

SQL> select job from emp group by job having count(empno) > 2;

JOB
---------
CLERK
SALESMAN
MANAGER

SQL> select deptno from emp where sum(sal) > 7000;
select deptno from emp where sum(sal) > 7000
                             *
ERROR at line 1:
ORA-00934: group function is not allowed here


SQL> select deptno from emp where group by deptno having sum(sal) > 7000;
select deptno from emp where group by deptno having sum(sal) > 7000
                             *
ERROR at line 1:
ORA-00936: missing expression


SQL> select deptno from emp  group by deptno having sum(sal) > 7000;

    DEPTNO
----------
        30
        20
        10

SQL> select deptno , avg(sal) from emp  group by deptno having sum(sal) > 7000;

    DEPTNO   AVG(SAL)
---------- ----------
        30 1566.66667
        20       2175
        10 2916.66667

SQL> select deptno , sum(sal) from emp  group by deptno having sum(sal) > 7000;

    DEPTNO   SUM(SAL)
---------- ----------
        30       9400
        20      10875
        10       8750

SQL> select deptno  from emp  group by deptno having count(empno) < 5;

    DEPTNO
----------
        10

SQL> select deptno  from emp  group by deptno having comm is null;
select deptno  from emp  group by deptno having comm is null
                                                *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> select deptno  from emp  group by deptno having sum(comm) is null;

    DEPTNO
----------
        20
        10

SQL> select extract(year from hiredate) , count(empno) from emp group by extract(year from hiredate);

EXTRACT(YEARFROMHIREDATE) COUNT(EMPNO)
------------------------- ------------
                     1982            2
                     1983            1
                     1980            1
                     1981           10

SQL>
