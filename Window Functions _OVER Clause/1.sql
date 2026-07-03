-- show % of total expense
	select 
             *,
    	     amount*100/sum(amount) over() as pct
	from random_tables.expenses 
	order by category;