
--Method 1: 

with cte as (
Select * , sum( case when Job_Role is NULL then 0 else 1 end )   over ( order by Row_ID) as New_Job
from JobSkills
)
Select Row_ID, FIRST_VALUE(Job_Role) over (partition by New_Job  order by Row_ID) as Job_Role from cte 

--Method 2 :

with cte as (
Select * , count( Job_Role )   over ( order by Row_ID) as New_Job
 from JobSkills
 ) 

 Select Row_ID, Job_Role, first_value(Job_Role) over(partition by New_Job order by Row_ID) as Job_Role from cte 
