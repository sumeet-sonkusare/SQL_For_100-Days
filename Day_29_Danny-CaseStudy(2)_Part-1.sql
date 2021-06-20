**Schema (PostgreSQL v13)**

    CREATE SCHEMA pizza_runner;
    SET search_path = pizza_runner;
    
    DROP TABLE IF EXISTS runners;
    CREATE TABLE runners (
      "runner_id" INTEGER,
      "registration_date" DATE
    );
    INSERT INTO runners
      ("runner_id", "registration_date")
    VALUES
      (1, '2021-01-01'),
      (2, '2021-01-03'),
      (3, '2021-01-08'),
      (4, '2021-01-15');
    
    
    DROP TABLE IF EXISTS customer_orders;
    CREATE TABLE customer_orders (
      "order_id" INTEGER,
      "customer_id" INTEGER,
      "pizza_id" INTEGER,
      "exclusions" VARCHAR(4),
      "extras" VARCHAR(4),
      "order_time" TIMESTAMP
    );
    
    INSERT INTO customer_orders
      ("order_id", "customer_id", "pizza_id", "exclusions", "extras", "order_time")
    VALUES
      ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
      ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
      ('3', '102', '1', '', '', '2020-01-02 12:51:23'),
      ('3', '102', '2', '', NULL, '2020-01-02 12:51:23'),
      ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
      ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
      ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
      ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
      ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
      ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
      ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
      ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
      ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
      ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');
    
    
    DROP TABLE IF EXISTS runner_orders;
    CREATE TABLE runner_orders (
      "order_id" INTEGER,
      "runner_id" INTEGER,
      "pickup_time" VARCHAR(19),
      "distance" VARCHAR(7),
      "duration" VARCHAR(10),
      "cancellation" VARCHAR(23)
    );
    
    INSERT INTO runner_orders
      ("order_id", "runner_id", "pickup_time", "distance", "duration", "cancellation")
    VALUES
      ('1', '1', '2020-01-01 18:15:34', '20km', '32 minutes', ''),
      ('2', '1', '2020-01-01 19:10:54', '20km', '27 minutes', ''),
      ('3', '1', '2020-01-02 00:12:37', '13.4km', '20 mins', NULL),
      ('4', '2', '2020-01-04 13:53:03', '23.4', '40', NULL),
      ('5', '3', '2020-01-08 21:10:57', '10', '15', NULL),
      ('6', '3', 'null', 'null', 'null', 'Restaurant Cancellation'),
      ('7', '2', '2020-01-08 21:30:45', '25km', '25mins', 'null'),
      ('8', '2', '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
      ('9', '2', 'null', 'null', 'null', 'Customer Cancellation'),
      ('10', '1', '2020-01-11 18:50:20', '10km', '10minutes', 'null');
    
    
    DROP TABLE IF EXISTS pizza_names;
    CREATE TABLE pizza_names (
      "pizza_id" INTEGER,
      "pizza_name" TEXT
    );
    INSERT INTO pizza_names
      ("pizza_id", "pizza_name")
    VALUES
      (1, 'Meatlovers'),
      (2, 'Vegetarian');
    
    
    DROP TABLE IF EXISTS pizza_recipes;
    CREATE TABLE pizza_recipes (
      "pizza_id" INTEGER,
      "toppings" TEXT
    );
    INSERT INTO pizza_recipes
      ("pizza_id", "toppings")
    VALUES
      (1, '1, 2, 3, 4, 5, 6, 8, 10'),
      (2, '4, 6, 7, 9, 11, 12');
    
    
    DROP TABLE IF EXISTS pizza_toppings;
    CREATE TABLE pizza_toppings (
      "topping_id" INTEGER,
      "topping_name" TEXT
    );
    INSERT INTO pizza_toppings
      ("topping_id", "topping_name")
    VALUES
      (1, 'Bacon'),
      (2, 'BBQ Sauce'),
      (3, 'Beef'),
      (4, 'Cheese'),
      (5, 'Chicken'),
      (6, 'Mushrooms'),
      (7, 'Onions'),
      (8, 'Pepperoni'),
      (9, 'Peppers'),
      (10, 'Salami'),
      (11, 'Tomatoes'),
      (12, 'Tomato Sauce');

---

--Update

    UPDATE pizza_runner.runner_orders
    SET distance = CASE 
    		WHEN distance ~ '[^a-zA-Z].*' 
    		THEN 
            REPLACE(distance, 'km', '')END,
            duration = CASE
    		WHEN duration ~ '[^a-zA-Z].*' 
    		THEN 
            REPLACE(REPLACE(REPLACE(duration, 'minutes', ''), 'minute',''), 'mins','')END;

There are no results to be displayed.

---
--Update

    UPDATE pizza_runner.runner_orders
            SET cancellation = null
            WHERE cancellation NOT IN ('Restaurant Cancellation','Customer Cancellation');

There are no results to be displayed.

---
--Update

    UPDATE pizza_runner.customer_orders
            SET exclusions = null
            WHERE exclusions IN ('','NaN', 'null');

There are no results to be displayed.

---
--Update

    UPDATE pizza_runner.customer_orders
            SET extras = null
            WHERE extras IN ('','NaN', 'null');

There are no results to be displayed.

---
--Alter

    ALTER TABLE pizza_runner.runner_orders 
    ALTER COLUMN distance TYPE REAL
    USING distance::real;

There are no results to be displayed.

---
--Alter

    ALTER TABLE pizza_runner.runner_orders 
    ALTER COLUMN duration TYPE int
    USING duration::integer;

There are no results to be displayed.

---
--Example

    SELECT * FROM pizza_runner.runner_orders;

| order_id | runner_id | pickup_time         | distance | duration | cancellation            |
| -------- | --------- | ------------------- | -------- | -------- | ----------------------- |
| 3        | 1         | 2020-01-02 00:12:37 | 13.4     | 20       |                         |
| 4        | 2         | 2020-01-04 13:53:03 | 23.4     | 40       |                         |
| 5        | 3         | 2020-01-08 21:10:57 | 10       | 15       |                         |
| 6        | 3         | null                |          |          | Restaurant Cancellation |
| 9        | 2         | null                |          |          | Customer Cancellation   |
| 1        | 1         | 2020-01-01 18:15:34 | 20       | 32       |                         |
| 2        | 1         | 2020-01-01 19:10:54 | 20       | 27       |                         |
| 7        | 2         | 2020-01-08 21:30:45 | 25       | 25       |                         |
| 8        | 2         | 2020-01-10 00:15:02 | 23.4     | 15       |                         |
| 10       | 1         | 2020-01-11 18:50:20 | 10       | 10       |                         |

---
--Query 1

    SELECT COUNT(order_id) AS total_orders FROM pizza_runner.customer_orders;

| total_orders |
| ------------ |
| 14           |

---
--Query 2

    SELECT COUNT(DISTINCT(customer_id)) FROM pizza_runner.customer_orders;

| count |
| ----- |
| 5     |

---
--Query 3

    SELECT runner_id, COUNT(runner_id) FROM pizza_runner.runner_orders
    WHERE cancellation IS NULL
    GROUP BY runner_id;

| runner_id | count |
| --------- | ----- |
| 1         | 4     |
| 2         | 3     |
| 3         | 1     |

---
--Query 4

    SELECT pizza_id, COUNT(pizza_id) FROM pizza_runner.customer_orders
    GROUP BY pizza_id;

| pizza_id | count |
| -------- | ----- |
| 2        | 4     |
| 1        | 10    |

---
--Query 5

    SELECT customer_id, pizza_name, COUNT(pizza_name) AS total_pizza 
    FROM pizza_runner.customer_orders c JOIN pizza_runner.pizza_names p ON p.pizza_id = c.pizza_id
    GROUP BY customer_id, pizza_name
    ORDER BY customer_id, total_pizza DESC;

| customer_id | pizza_name | total_pizza |
| ----------- | ---------- | ----------- |
| 101         | Meatlovers | 2           |
| 101         | Vegetarian | 1           |
| 102         | Meatlovers | 2           |
| 102         | Vegetarian | 1           |
| 103         | Meatlovers | 3           |
| 103         | Vegetarian | 1           |
| 104         | Meatlovers | 3           |
| 105         | Vegetarian | 1           |

---
--Query 6

    SELECT MAX(total_del_order)
    FROM (SELECT order_id, COUNT(order_id) AS total_del_order FROM pizza_runner.customer_orders
    GROUP BY order_id)order_count;

| max |
| --- |
| 3   |

---
--Query 7

    SELECT customer_id, changes, COUNT(changes)
    FROM  (SELECT *, 
          CASE 
          WHEN (exclusions IS NOT null OR extras IS NOT null) THEN 'Change'
          ELSE 'No change'
          END changes 
    FROM pizza_runner.customer_orders
    ) changes
    GROUP BY customer_id, changes
    ORDER BY customer_id;

| customer_id | changes   | count |
| ----------- | --------- | ----- |
| 101         | No change | 3     |
| 102         | No change | 3     |
| 103         | Change    | 4     |
| 104         | No change | 1     |
| 104         | Change    | 2     |
| 105         | Change    | 1     |

---
--Query 8

    SELECT COUNT(pizza_id) AS execution_and_extras FROM pizza_runner.customer_orders
    WHERE exclusions IS NOT null AND extras IS NOT null;

| execution_and_extras |
| -------------------- |
| 2                    |

---
--Query 9

    SELECT hours, COUNT(hours) FROM
    (                      
    SELECT date_part('hour', order_time) AS hours FROM pizza_runner.customer_orders)order_in_hrs
    GROUP BY hours
    ORDER BY hours;

| hours | count |
| ----- | ----- |
| 11    | 1     |
| 12    | 2     |
| 13    | 3     |
| 18    | 3     |
| 19    | 1     |
| 21    | 3     |
| 23    | 1     |

---
--Query 10

    SELECT days, COUNT(days) FROM
    (                      
    SELECT date_part('day', order_time) AS days FROM pizza_runner.customer_orders)order_on_days
    GROUP BY days
    ORDER BY days;

| days | count |
| ---- | ----- |
| 1    | 2     |
| 2    | 2     |
| 4    | 3     |
| 8    | 3     |
| 9    | 1     |
| 10   | 1     |
| 11   | 2     |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/7VcQKQwsS3CTkGRFG7vu98/39)
