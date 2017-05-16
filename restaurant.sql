CREATE table restaurant (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR,
distance INTEGER,
stars INTEGER,
catagory VARCHAR,
favorite_dish VARCHAR,
does_takeout BOOLEAN,
last_vist_date DATE
);

