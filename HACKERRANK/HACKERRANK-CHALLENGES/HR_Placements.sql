- Placements

select s.Name from Students s 
join Friends f on s.id = f.id 
join Packages p1 on s.Id = p1.Id
join Packages p2 on f.friend_ID = p2.Id
where p2.Salary > p1.Salary
order by p2.Salary;