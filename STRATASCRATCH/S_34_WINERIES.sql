## Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut
-------

select winery
from winemag_p1
where description REGEXP '(plum|rose|cherry|hazelnut)([^a-z])';