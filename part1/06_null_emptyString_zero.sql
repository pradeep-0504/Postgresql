--null - unknown or missing value
-- empty string - known string value but it contain no characters
--zero - actual numeric value of 0

DROP TABLE if exists basics.value_examples;

CREATE TABLE basics.value_examples(
    id serial primary key,
    nickname text,
    bio text,
    score integer
);

INSERT INTO basics.value_examples(nickname,bio,score)

values 
    ('','empty bio',0),
    ('pradeep','My Rulzz',789),
    (NULL,'No BIO',211);

-- select * from basics.value_examples where nickname is null; --null value
select * from basics.value_examples where nickname. = '';  --empty string


-- psql -U postgres -d postgresql_part1 -f .\part1\05_other_data_types.sql