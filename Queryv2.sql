--Problem 1
SELECT * FROM review WHERE restaurant_id = 5;
--Problem 2
SELECT review.review FROM review, restaurant WHERE restaurant_id = restaurant.id AND restaurant.name = 'moon tower';
--Problem
SELECT review.review FROM review, reviewer WHERE reviewer_id = reviewer.id AND reviewer.name = 'silent bob';