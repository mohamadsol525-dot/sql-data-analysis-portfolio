-- Part 1
use sepidar01

select 
CustomerRealName,
count(*)

from sls.Invoice
group by CustomerRealName

-- Part 2

select 
CustomerRealName,
count(*),
(select
   count(*)
   from sls.Invoice
     )

from sls.Invoice
group by CustomerRealName

-- Part 3

select 
CustomerRealName,
count(*),
   max(date),
   min(date)

from sls.Invoice
group by CustomerRealName

-- Part 4

select 
CustomerRealName,
count(*),(select
   max(date)
   from sls.Invoice
     ),
     (select
   min(date)
   from sls.Invoice
     )

from sls.Invoice
group by CustomerRealName