#查看explain输出的结果
#simple
explain select * from user_info where id = 2;


#eq_ref
EXPLAIN SELECT * FROM user_info, order_info WHERE user_info.id = order_info.user_id;

#ref
EXPLAIN SELECT * FROM user_info, order_info WHERE user_info.id = order_info.user_id AND order_info.user_id = 5;

#index
explain select name,age from user_info;
explain select name FROM user_info;

#range
EXPLAIN SELECT *  FROM user_info WHERE id BETWEEN 2 AND 8;

#all
EXPLAIN SELECT age FROM  user_info WHERE age = 20;

#Using filesort
EXPLAIN SELECT * FROM order_info ORDER BY product_name;