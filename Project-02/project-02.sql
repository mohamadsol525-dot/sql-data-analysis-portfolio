use sepidar01
select SaleTypeRef as Sale_Type,
count(*) as count,
((count(*)/1.0) / (select 
			count (j.SaleTypeRef) 
			from SLS.Invoice as j))
from SLS.Invoice as i
GROUP BY SaleTypeRef
ORDER BY Sale_Type ASC