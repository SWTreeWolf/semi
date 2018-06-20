select * from departments
select * from tab

select a.* from (
select * from employees
where rownum<=5
order by employee_id asc)a
where rownum<=5
