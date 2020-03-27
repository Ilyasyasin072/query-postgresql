--DEFINING NEW RAGE TYPES
CREATE TYPE floatrange AS RANGE (
subtype = float8,
subtype_diff = float8mi
)

SELECT '[1.234, 5678]' :: floatrange