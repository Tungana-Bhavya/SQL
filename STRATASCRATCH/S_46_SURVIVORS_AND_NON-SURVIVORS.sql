## S S 46 SURVIVORS AND NON-SURVIVORS
-------

select survived,
sum(case when pclass = 1 then 1 else 0 end) first_class,
sum(case when pclass = 2 then 1 else 0 end) second_class,
sum(case when pclass = 3 then 1 else 0 end) third_class
from titanic
group by survived;