-- - SCRIPT SEQUENCE OTOMATIS
	CREATE TABLE accounts(
		id INT GENERATED BY DEFAULT AS IDENTITY,
		nama varchar(20) not null,
		balance DEC(18,2) not null,
		primary key(id)
	)
-- INSERT INTO MANUAL
INSERT INTO accounts (name, balance) values ('bob', 100000)
INSERT INTO accounts (name, balance) values ('bib', 100000)

-- INSERT INTO WITH PROCEDURE/FUNCTION
CREATE FUNCTION insert_data(a INT, b DEC)
RETURNS void AS $$
BEGIN
INSERT INTO accounts (name, balance) values (a, b);
END;
$$ LANGUAGE plpgsql

CREATE OR REPLACE FUNCTION insert_data_account(name VARCHAR(20), balance DEC)
RETURNS void AS $$
	BEGIN
		INSERT INTO accounts VALUES (name, balance);
	END;
	$$ LANGUAGE plpgsql