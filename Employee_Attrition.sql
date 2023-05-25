select EducationField,MonthlyIncome,
case when MonthlyIncome <1000 then 'Under 1k'
	 when MonthlyIncome <5000 then 'Under 5k'
     when MonthlyIncome <10000 then 'Under 10k'
     else 'More than 10k'
     end as 'salary category'
     from employee_attrition;
     
select MonthlyIncome from employee_attrition
order by MonthlyIncome desc
limit 2,1;

select count(Age) from  employee_attrition
group by Age;

select * from employee_attrition
 where mod(Age,2)=0 
 order by Age desc;
 
 select * from employee_attrition
 where mod(Age,2)=1 
 order by Age desc;
 
 select * from employee_attrition
 where Age=(select min(Age)
 from employee_attrition);
 
 select* from employee_attrition
 where Age=(select max(Age)
 from employee_attrition);
 
 select Department from employee_attrition
 where Department like'___a%';
 
 select EducationField,JobRole,Gender from employee_attrition
 where Gender='Male';
 
 select * from employee_attrition
 where DailyRate is null;
 

