--2장 단일행함수-문자열함수
select substr('abcde',3,2), substr('abcde',-3,2) , substr('abcde',-3,4) from dual;
--1번째 글자부터 확인하여 -가 3번째 나오는 위치 출력
select 'a-b-c-d' , instr('a-b-c-d','-',1,3) "instr" from dual;
select name, tel, instr(tel,'3'),profno from student where deptno1=101;

--LPAD: 왼쪽으로 특정 문자를 채움
--student 테이블에서 1 전공이 201 번인 학과 학생들의 id 를 총 10자리로 출력하되 왼쪽 빈 자리는 ‘*’ 기호로 채우세요. 80p
select name,id, lpad(id,10,'*') from student where deptno1=201;
select name,id, lpad(id,10,'123456') from student where deptno1=201;
select * from emp;
select ename,lpad(ename,9,'123456') from emp where deptno=20;
--emp 테이블을 사용하여 deptno가 10 번인 사원들의 사원이름을 총 9 바이트로 출력하되 빈 자리에는 해당 자리의 숫자로 채우세요.81p
select lpad(ename,9,'123456789') from emp where deptno=10;

--RPAD: 오른쪽으로 특정 문자를 채움
--emp 테이블에서 아래와 같이 deptno 가 10번인 사원들의 ename 을 10자리로 출력하되 오른쪽 빈자리에는 ‘-’ 로 채우세요.
select rpad(ename,10,'-') from emp where deptno=10;
--emp테이블에서 deptno가 10번인 사원들의 이름을 총 9자리로 출력하되 오른쪽 빈자리는 해당 자릿수에 해당하는 숫자가 출력되도록 출력
select rpad(ename,9,substr('123456789',lengthb(ename)+1)) from emp where deptno=10;
select substr('123456789',lengthb(ename)+1) from emp where deptno=10;
--Ltrim: 주어진 문자열에서 왼쪽의 특정문자 삭제
select ename from emp where deptno=10;
select ltrim(ename,'C') from emp where deptno=10;--문자열 대소문자 구분함
--rtrim: 주어진 문자열에서 오른쪽의 특정문자 삭제
select ename, rtrim(ename,'R') "RTRIM" from emp where deptno=10;
--replace함수: 주어진 문자열에서 A를 B로 치환함
select ename, replace(ename,substr(ename,1,2),'**') "REPLACE" from emp where deptno=10;
--퀴즈1 emp테이블에서 아라와 같이 20번 부서에 소속된 직원들의 이름과 2~3번째 글자만 '-'으로 변경해서 출력하세요.
select ename,replace(ename,substr(ename,2,2),'--') from emp where deptno=20;
--퀴즈2 student테이블에서 전공1(deptno1)dl 101번인 학생들의 이름과 주민등록번호를 출력하되 주민등록번호의 뒤 7자리는 '-/'로 표시되도록 출력하세요.
select jumin from student;
select name,jumin, replace(jumin, substr(jumin,7,7),'-/-/-/-') "replace" 
from student
where deptno1=101;
--퀴즈3  student 테이블에서 전공1이 102번인 학생들의 이름과 전화번호, 전호번호에서 국번 부분만 '*'처리하여 출력하세요.
--단, 모든 국번은 3자리로 간주합니다. ** REPLACE 퀴즈 3 ** 
select name,tel, replace(tel,substr(tel,5,3),'***') "replace" from student;
--퀴즈4 student 테이블에서 deptno1이 101번인 학과 학생들의 이름과 전화번호와 전화번호에서 지역번호와 
--국번을 제외한 나머지 번호를 *로 표시해서 출력하세요. ** REPLACE 퀴즈 4 **fffff
select name, tel, replace(tel,substr(tel,length(tel)-3,4),'****') "replace" 
from student
where deptno1=101;
