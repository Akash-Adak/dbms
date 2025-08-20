SQL> select * from dept;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO
        40 OPERATIONS     BOSTON

SQL> select ename,emp.deptno ,sal ,dname from emp,dept where emp.deptno=dept.deptno;

ENAME          DEPTNO        SAL DNAME
---------- ---------- ---------- --------------
SMITH              20        800 RESEARCH
ALLEN              30       1600 SALES
WARD               30       1250 SALES
JONES              20       2975 RESEARCH
MARTIN             30       1250 SALES
BLAKE              30       2850 SALES
CLARK              10       2450 ACCOUNTING
SCOTT              20       3000 RESEARCH
KING               10       5000 ACCOUNTING
TURNER             30       1500 SALES
ADAMS              20       1100 RESEARCH
JAMES              30        950 SALES
FORD               20       3000 RESEARCH
MILLER             10       1300 ACCOUNTING

14 rows selected.

SQL> select distinct job , loc from emp,dept where emp.deptno=dept.deptno=30;
select distinct job , loc from emp,dept where emp.deptno=dept.deptno=30
                                                                    *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select distinct job , loc from emp,dept where emp.deptno=30 and dept.deptno=30;

JOB       LOC
--------- -------------
SALESMAN  CHICAGO
MANAGER   CHICAGO
CLERK     CHICAGO

SQL> select distinct job , loc from emp,dept where emp.deptno=30;

JOB       LOC
--------- -------------
CLERK     DALLAS
SALESMAN  CHICAGO
SALESMAN  BOSTON
MANAGER   NEW YORK
CLERK     BOSTON
MANAGER   BOSTON
CLERK     NEW YORK
SALESMAN  DALLAS
MANAGER   CHICAGO
CLERK     CHICAGO
SALESMAN  NEW YORK
MANAGER   DALLAS

12 rows selected.

SQL> select distinct job , loc from emp,dept where emp.deptno=30 and dept.deptno=30;

JOB       LOC
--------- -------------
SALESMAN  CHICAGO
MANAGER   CHICAGO
CLERK     CHICAGO

SQL> select ename,emp.deptno,loc from emp,dept where comm is not null;

ENAME          DEPTNO LOC
---------- ---------- -------------
ALLEN              30 NEW YORK
ALLEN              30 DALLAS
ALLEN              30 CHICAGO
ALLEN              30 BOSTON
WARD               30 NEW YORK
WARD               30 DALLAS
WARD               30 CHICAGO
WARD               30 BOSTON
MARTIN             30 NEW YORK
MARTIN             30 DALLAS
MARTIN             30 CHICAGO
MARTIN             30 BOSTON

12 rows selected.

SQL> select ename,emp.deptno,loc from emp,dept where emp.deptno=dept.deptno and comm is not null;

ENAME          DEPTNO LOC
---------- ---------- -------------
MARTIN             30 CHICAGO
WARD               30 CHICAGO
ALLEN              30 CHICAGO

SQL> select ename,dname from emp,dept where emp.deptno=dept.deptno and ename like '%A%';

ENAME      DNAME
---------- --------------
CLARK      ACCOUNTING
ADAMS      RESEARCH
JAMES      SALES
BLAKE      SALES
MARTIN     SALES
WARD       SALES
ALLEN      SALES

7 rows selected.

SQL>  select ename,dname,loc from emp,dept where emp.deptno=dept.deptno and comm is not null;

ENAME      DNAME          LOC
---------- -------------- -------------
MARTIN     SALES          CHICAGO
WARD       SALES          CHICAGO
ALLEN      SALES          CHICAGO

SQL>  select ename,job,emp.deptno,dname from emp,dept where emp.deptno=dept.deptno and loc='DALLAS';

ENAME      JOB           DEPTNO DNAME
---------- --------- ---------- --------------
SMITH      CLERK             20 RESEARCH
JONES      MANAGER           20 RESEARCH
SCOTT      ANALYST           20 RESEARCH
ADAMS      CLERK             20 RESEARCH
FORD       ANALYST           20 RESEARCH

SQL>
