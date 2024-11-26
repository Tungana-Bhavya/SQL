PATIENT SUPPORT ANALYSIS I
------

select count(policy_holder_id) as policy_holder_count 
from (select policy_holder_id,
count(policy_holder_id) policy_holder_count 
from callers
group by policy_holder_id
having count(policy_holder_id) >=3
);
