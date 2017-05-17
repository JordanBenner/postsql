--Problem 1
SELECT * FROM review WHERE restaurant_id = 5;
--Problem 2
SELECT review.review FROM review, restaurant WHERE restaurant_id = restaurant.id AND restaurant.name = 'moon tower';
--Problem 5
SELECT review.review FROM review, reviewer WHERE reviewer_id = reviewer.id AND reviewer.name = 'silent bob';
--Problem 4
SELECT review.review, restaurant.name FROM review, restaurant WHERE restaurant_id = restaurant.id;
--Problem 5
SELECT restaurant.id, restaurant.name, restaurant.address, AVG(review.stars) FROM review, restaurant WHERE review.restaurant_id = restaurant.id GROUP BY restaurant.id;