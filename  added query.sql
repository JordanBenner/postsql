SELECT * FROM restaurant ORDER BY stars  DESC LIMIT 2;
SELECT * FROM restaurant WHERE stars = 5;
SELECT * FROM restaurant WHERE name = 'Moon Tower'; 
SELECT * FROM restaurant WHERE catagory = 'BBQ';
SELECT * FROM restaurant WHERE does_takeout = True;
SELECT * FROM restaurant WHERE catagory = 'BBQ' AND does_takeout = TRUE;
SELECT * FROM restaurant WHERE distance <= 2;
SELECT * FROM restaurant WHERE last_vist_date <= '2017-05-05';
SELECT * FROM restaurant WHERE stars = 5 AND last_vist_date <= '2017-05-05';

UPDATE restaurant SET last_vist_date = '2017-05-03' WHERE name = 'Bills BBQ';
