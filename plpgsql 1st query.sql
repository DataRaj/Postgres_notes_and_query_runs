-- select fn_count_the_states('TX');
-- select fn_count_from_birth_month(08)
-- select fn_count_from_name('Lauren')
-- select (selected_first_cust(8)).*
 create or replace function get_cust_bd_date(in the_month int , out bd_month int, out bd_day int,
															  out f_name varchar, out l_name varchar)

as 
$body$
begin 
	select extract(month from birth_date) , extract(day from birth_date), first_name, last_name
	into bd_month, bd_day, f_name, l_name
	from customer
	where extract(month from birth_date) = the_month
	limit 1;
end;
$body$

language plpgsql

-- you will have to put setof for the desired number of output
--  select concat(first_name , ' ' , last_name) as full_name, *  from customer 
-- where extract(month from birth_date) = 08
-- order by birth_date desc select get_cust_bd_date(12);

