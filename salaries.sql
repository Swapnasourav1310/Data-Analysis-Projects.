select * from salaries;

select EmployeeName,JobTitle from salaries;

select count(*) from salaries;

select count(distinct(JobTitle)) from salaries;

select JobTitle,OvertimePay from salaries where OvertimePay >=50000 order by OvertimePay desc;

select avg(BasePay) as "Avg Base Pay" from salaries;

select EmployeeName,TotalPay from salaries order by TotalPay desc limit 10;

select EmployeeName,(BasePay+OvertimePay+OtherPay)/3  as "Avg_bp_ot_op" from salaries;

select EmployeeName, JobTitle from salaries where JobTitle like "%Manager%";

select EmployeeName, JobTitle from salaries where JobTitle <> "%Manager%";

select EmployeeName,TotalPay from salaries where TotalPay between 50000 and 75000;

select * from salaries where BasePay < 50000 or TotalPay >100000;

select * from salaries where TotalPayBenefits between 125000 and 150000 and JobTitle like "%Director%";

select * from salaries order by TotalPayBenefits desc;

select JobTitle, avg (BasePay) as AVGBASEPAY from salaries  group by JobTitle having avg(BasePay) >= 100000 order by AVGBASEPAY desc;

alter table salaries
drop column Notes;
select * from salaries;

update salaries
set BasePay = BasePay * 1.1
where JobTitle like "%Manager%";

select * from salaries
where OvertimePay =0;

delete from salaries
where OvertimePay =0;


