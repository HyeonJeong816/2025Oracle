select * from tab;
select * from professor;
select name, 'good morning~~' "Good" from professor;
select dname, q'[it's deptno:]' , deptno "dname and deptno" from dept;
select name , q'[good morning~~]' from professor;
select * from emp;
select deptno from emp;
select distinct deptno from emp;
연습문제1
select * from student;
select name||'''s ID:'||id||',weight is '||weight ||'kg' from student;
연습문제2
select * from emp;
select ename, job from emp;
select ename||'('||job||') , ' || ename||''''||job||'''' "name and job" from emp;
select ename, sal from emp;
연습문제3
select ename||'''s sal is $'||sal from emp;

--where사용
select empno,ename from emp where empno=7900;
select empno,ename,sal from emp where sal<1000;
select ename, sal, deptno from emp where deptno=10;
select ename, sal, sal+10 from emp where deptno=10;
select ename, sal, sal*1.1 from emp where deptno=20;
--날짜
select ename, hiredate from emp;
select ename, hiredate from emp where hiredate>='81-12-25';

--between
select empno, ename, sal from emp where sal between 2000 and 3000;
select empno, ename, sal from emp where sal>=2000 and sal<=3000;
--in
select empno, ename, deptno from emp where deptno in(10,20);
select empno,ename, sal from emp where sal like '1%';
select empno,ename, sal from emp where ename like 'A%';
--and,0r
select ename, hiredate, sal from emp where hiredate>'81-01-01' and sal>=2000;
select ename, hiredate, sal from emp where hiredate>'82-01-01' or sal>=2000;

--문제1
select distinct job from emp;
--2
select * from emp;
select ename, job from emp where deptno=30;
--3
select ename, hiredate from emp where hiredate='81-05-01';
--4
select ename,job,sal from emp where sal>=800;
--5
select ename,empno from emp where empno between 7500 and 7700;
--6
select ename,empno from emp where empno in(7900,7902); 
--7
select ename, sal, deptno from emp where sal>=1000
union
select ename, sal, deptno from emp where deptno=10;

select ename, sal, deptno from emp where sal>=1000
union all
select ename, sal, deptno from emp where deptno=10;