## Find matching hosts and guests in a way that they are both of the same gender and nationality
-------

select distinct h.host_id, g.guest_id from airbnb_hosts h inner join airbnb_guests g on h.nationality = g.nationality and h.gender = g.gender;