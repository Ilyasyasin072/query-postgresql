CREATE TYPE complex AS (
r double precision,
i double precision
);

CREATE TYPE inventory_item AS (
name text,
supplier_id integer,
price numeric
)

CREATE TABLE on_hand (
item inventory_item,
count integer
)

INSERT INTO on_hand VALUES (ROW('fuzzy dice', 42, 1.199), 100);

CREATE FUNCTION price_extension(inventory_item, integer) RETURNS
numeric AS 'SELECT $1.price * $2' LANGUAGE SQL

SELECT price_extension(item, 10) FROM on_hand

CREATE TABLE inventory_item (
name text,
suppier_id integer REFERENCES suppliers,
price numeric CHECK (price > 0)
)

SELECT (item).name, (item).supplier_id, (item).price FROM on_hand WHERE (item).price < 9.99