

//반올림
select round(999.999,2) from dual;


//오라클 교재 95p
select ename, hiredate, months_between(to_date('04/05/31'),hiredate),1) ,
(to_date('04/05/31')-hiredate)/31 from emp where deptno=10;

select ename, hiredate, round(months_between(to_date('04/05/31'),hiredate),1),
round(((to_date('04/05/31')-hiredate)/31),1)
from emp where deptno=10;
//sysdate를 기준으로 돌아오는 일요일의 날짜
select sysdate,next_day(sysdate,'일') from dual;
//달의 마지막 날짜를 출력
select sysdate,last_day(sysdate) from dual;

//


 
//문제8 [ 형 변환 함수 퀴즈-날짜변환하기 1 ]
select studno, name, birthday 
from student
where to_char(birthday,'MM')='01';

//문제9 형변환2
select empno, ename, hiredate 
from emp
where to_char(hiredate,'MM') in ('01','02','03');


--숫자관련함수
