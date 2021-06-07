CREATE FUNCTION show_cust_sql(id integer) 
RETURNS customers AS $$
select * from customers where customerid = $1;
$$ LANGUAGE SQL;

---------------------------

CREATE or REPLACE FUNCTION show_cust_plpgsql(id integer) RETURNS customers AS $$
DECLARE
customer customers;
BEGIN
SELECT * INTO customer FROM customers
WHERE customerid = $1;
RETURN customer;
END;
$$ LANGUAGE PLPGSQL;