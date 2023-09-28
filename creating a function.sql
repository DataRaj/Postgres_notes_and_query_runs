create or replace function discounted_price(numeric, numeric)
returns int as
'
select $1 - ($1 * $2);
'
language sql 