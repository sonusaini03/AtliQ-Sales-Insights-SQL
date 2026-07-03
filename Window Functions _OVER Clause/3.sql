-- Show expenses per category till date
	select 
             *,
             sum(amount) over(partition by category order by date) as expenses_till_date
	from random_tables.expenses;
