CREATE TABLE restaurant (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR,
address VARCHAR,
category VARCHAR
);

CREATE TABLE reviewer (
  id serial PRIMARY KEY,
  name varchar,
  email varchar,
  karma integer check (karma >= 0 and karma <= 7)
);

CREATE TABLE review (
  id serial PRIMARY KEY,
  title varchar,
  review varchar,
  stars integer check (stars >= 0 and stars <= 5),
  reviewer_id integer REFERENCES reviewer (id),
  restaurant_id integer REFERENCES restaurant (id)
);

