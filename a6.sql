SQL> select to_char(12345.67,'$99,999.00') from dual;

TO_CHAR(123
-----------
 $12,345.67

SQL> select to_char(hiredate,'month DD YY) from emp;
ERROR:
ORA-01756: quoted string not properly terminated


SQL> select to_char(hiredate,'month DD YY') from emp;

TO_CHAR(HIREDAT
---------------
december  17 80
february  20 81
february  22 81
april     02 81
september 28 81
may       01 81
june      09 81
december  09 82
november  17 81
september 08 81
january   12 83
december  03 81
december  03 81
january   23 82

14 rows selected.






SQL> select to_char(hiredate,'DD-MM-YY') from emp;

TO_CHAR(
--------
17-12-80
20-02-81
22-02-81
02-04-81
28-09-81
01-05-81
09-06-81
09-12-82
17-11-81
08-09-81
12-01-83
03-12-81
03-12-81
23-01-82

14 rows selected.




SQL> select to_date('01-01-2017','MM-DD-YY') from emp;

TO_DATE('
---------
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17

14 rows selected.

SQL> select to_date('01-01-2017','MM-DD-YY') from emp;

TO_DATE('
---------
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17
01-JAN-17

14 rows selected.

SQL> select to_date('01-01-2017','MM-DD-YY') from dual
  2  ;p
  3  ;
;p
*
ERROR at line 2:
ORA-00911: invalid character


SQL> select to_date('01-01-2017','MM-DD-YY') from dual;

TO_DATE('
---------
01-JAN-17




SQL> select to_date(hiredate,'DD-MM-YY') from emp;

TO_DATE(H
---------
17-DEC-80
20-FEB-81
22-FEB-81
02-APR-81
28-SEP-81
01-MAY-81
09-JUN-81
09-DEC-82
17-NOV-81
08-SEP-81
12-JAN-83
03-DEC-81
03-DEC-81
23-JAN-82

14 rows selected.

SQL> select sysdate from dual;

SYSDATE
---------
20-AUG-25




SQL> select months_between('20 AUG 2025','20 MAY 2025') from dual;

MONTHS_BETWEEN('20AUG2025','20MAY2025')
---------------------------------------
                                      3

SQL> select next_day(sysdate,'FRIDAY') from dual;

NEXT_DAY(
---------
22-AUG-25



SQL> select add_months(sysdate,4) from dual;

ADD_MONTH
---------
20-DEC-25

SQL> select last_day(sysdate) from dual;

LAST_DAY(
---------
31-AUG-25
