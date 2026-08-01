DROP TABLE if exists basics.students;

CREATE TABLE basics.students(
    --cretae an auto incremental integer
    --if the first student creates with id 1,then 2,3,4,5...
    -- primary key means this col uniquely identify each row
    id SERIAL PRIMARY KEY,

    --text :string data
    --not null : can't be empty,col is required
    name TEXT NOT NULL,

    --UNIQUE MEANS - no 2 students have same mails
    email TEXT NOT NULL, 

    age INTEGER CHECK(age>=18),

    created_at TIMESTAMP DEFAULT NOW()
);