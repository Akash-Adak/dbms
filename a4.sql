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


