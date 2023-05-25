-- 1.Select all columns for all patients.
 select * from insurance;
-- 2. Display the average charge amount for patients in each region.
 select region, avg(charges) as charges from insurance group by region;
-- 3. Select the maximum and minimum BMI values in the table.
select max(bmi) as max_bmi,min(bmi) as min_bmi from insurance;
-- 4. Select the age and BMI for patients with a BMI between 40 and 50.
select age, bmi from insurance where bmi between 40 and 50;
-- 5. Select the number of smokers in each region.
select region,count(sex) from insurance where smoker= "yes" group by region;
-- 6. What is the average charges amount for patients who are smokers.
select avg(charges) as avg_charge from insurance  where smoker like "%yes%";
-- 7.Retrieve all patients who have a BMI greater than the average BMI of patients who are smokers.
select * from insurance where smoker = "yes" and bmi >(select avg(bmi) from insurance where smoker = "yes");
select avg(bmi) from insurance where smoker ="yes";
-- 8. Select the average charges amount for patients in each age group.
select 
	case when age < 18 then "Under 18"
    when age between 18 and 30 then "18-30"
    when age between 31 and 50 then "31-50"
    else "Over 50"
end as age_group,
round(avg(charges),2) as avg_charges
from insurance
group by age_group;
-- 9. Retrieve the total charges amount for each patient,along with the average charges amount across all patients.
select sum(charges),avg(charges) from insurance;

 
 
