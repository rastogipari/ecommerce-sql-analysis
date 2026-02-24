CREATE TABLE customers(customer_id SERIAL PRIMARY KEY,
                       customer_name VARCHAR(100),
					   city VARCHAR(50),
					   signup_date DATE);


CREATE TABLE products(product_id SERIAL PRIMARY KEY,
                      product_name VARCHAR(100),
					  category VARCHAR(50),
					  price NUMERIC(10,2));


CREATE TABLE orders(order_id SERIAL PRIMARY KEY,
                    customer_id INT REFERENCES customers(customer_id),
					product_id INT REFERENCES products(product_id),
					quantity INT,
					order_date DATE);