-- writing some queries and doodling around it is just a thing we are going to do here stick with me 

--  delete if exists
create or replace function gen_random_data(min_val int, max_val int)
Returns int as 
$body$
declare 
  rand int;
begin 	
	select random()*(max_val - min_val)+min_val into rand;
	return rand ;
end;
-- where customer.first_name = fn 
$body$

language plpgsql