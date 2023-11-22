- Binary Tree Nodes

select n, case 
    when P is null then 'Root'  
    when N in (select distinct(P) from BST) then 'Inner' 
    else 'Leaf' 
    end 
from BST 
order by N;