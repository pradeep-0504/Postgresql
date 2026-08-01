-- db -> schema -> tables -> rows

--if not exists prevents an error if schema is already present.

CREATE SCHEMA IF NOT EXISTS basics;

--query

select schema_name
from information_schema.schemata
order by schema_name;

-- information_schema -> Built in schema
-- schemata           -> Built in table inside information_schema
-- schema_name        -> Built in column in the schemata table