CREATE FUNCTION show_name_sql(id integer, OUT first varchar, OUT last varchar) AS $$
select firstname, lastname from customers where customerid = $1;
$$ LANGUAGE SQL;

---------------------------

CREATE FUNCTION show_name_plpgsql(id integer, OUT first varchar, OUT last varchar)
AS $$
begin
select firstname into first from customers where customerid = $1;
select lastname into last from customers where customerid = $1;
end;
$$ LANGUAGE PLPGSQL;