CREATE FUNCTION insert_category1_sql(pcategory integer, pname varchar) RETURNS void AS
$$
INSERT INTO categories VALUES (pcategory, pname);
$$ LANGUAGE sql;

-----------------------------------

CREATE FUNCTION insert_category2_sql(integer, varchar) RETURNS void AS
$$
INSERT INTO categories VALUES ($1, $2);
$$ LANGUAGE sql;

----------------------------------

CREATE FUNCTION insert_category3_sql(category integer, categoryname varchar) RETURNS void AS
$$
	INSERT INTO categories VALUES (insert_category3_sql.category,
	insert_category3_sql.categoryname);
$$ LANGUAGE sql;

-----------------------------------

CREATE FUNCTION insert_category4_sql(pcategory categories) RETURNS void AS
$$
	INSERT INTO categories VALUES (pcategory.category,
	pcategory.categoryname);
$$ LANGUAGE sql;