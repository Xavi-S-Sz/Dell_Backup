CREATE or replace FUNCTION mySum(integer, integer) RETURNS bigint AS
$$
BEGIN
	RETURN $1+$2;
END;
$$ LANGUAGE plpgsql;
SELECT * FROM mySum(1,2);