INSERT INTO customers (customer_name,city,signup_date) VALUES 
('Amit Sharma','Delhi','2024-01-10'),
('Priya Verma','Mumbai','2024-02-15'),
('Rahul Singh','Lucknow','2024-03-12'),
('Neha Gupta','Pune','2024-04-05'),
('Arjun Mehta','Jaipur','2024-05-20');


INSERT INTO products (product_name,category,price) VALUES
('Laptop','Electronics',55000),
('Mobile','Electronics',20000),
('Headphones','Electonics',3000),
('Shoes','Fashion',2500),
('T-Shirt','Fashion',1200),
('Watch','Accessories',4000),
('Backpack','Accessories',1500);


INSERT INTO orders (customer_id,product_id,quantity,order_date) VALUES
(1,1,1,'2024-06-01'),
(2,2,2,'2024-06-05'),
(3,4,1,'2024-06-10'),
(1,3,2,'2024-07-02'),
(4,5,3,'2024-07-10'),
(5,6,1,'2024-07-15'),
(2,7,2,'2024-08-01'),
(3,1,1,'2024-08-05'),
(4,2,1,'2024-08-10'),
(1,5,4,'2024-08-15');


SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;