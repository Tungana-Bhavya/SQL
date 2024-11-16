Count Salary Categories
------

with Low_Salary as 
 (
    select distinct a.account_id as account_id from Accounts a where a.income < 20000
 ),
Average_Salary as
 (
    select distinct a.account_id as account_id from Accounts a
    where a.income >=20000 and a.income<= 50000
    ),
High_Salary as 
  (
    select distinct a.account_id as account_id from Accounts a
    where a.income > 50000
    )

select "Low Salary" category, count(distinct Low_Salary.account_id) accounts_count from Low_Salary
union
select "Average Salary" category, count(distinct Average_Salary.account_id)accounts_count from Average_Salary
union
select "High Salary" category, count(distinct High_Salary.account_id)accounts_count from High_Salary