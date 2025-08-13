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
