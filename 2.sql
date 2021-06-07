CREATE or replace FUNCTION del_under18_2() RETURNS return_before_after AS
$$
DECLARE
	before integer;
	after integer;
BEGIN
SELECT count(*) INTO before FROM customers;
DELETE FROM customers WHERE age < 18;
SELECT count(*) INTO after FROM customers;
RETURN (before, after);
END;
$$ LANGUAGE plpgsql;

-----------------------------------------------------------------------

