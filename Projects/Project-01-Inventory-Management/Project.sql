Create database technova_inventory;
use technova_inventory;
set SQL_SAFE_UPDATES = 0;

Create table product(
product_id int primary key,
product_name varchar(100),
category varchar(50),
brand varchar(50),
selling_price decimal(10,2),
stock int,
supplier varchar(100) );

Describe product;

Insert into product values 
(101,'Laptop','Electronics','Dell',65000,15,'Dell India'),
(102,'Laptop','Electronics','HP',62000,10,'HP India'),
(103,'Mobile','Electronics','Samsung',25000,30,'Smasung India'),
(104,'Mouse','Accessories','Logitech',1200,80,'Logitech'),
(105,'Keyboard','Accessories','Logitech',1800,50,'Logitech'),
(106,'Monitor','Electronics','LG',15000,20,'LG India'),
(107,'Printer','office','Canon',15000,8,'Canon India'),
(108,'Webcame','Accessories','HP',2500,35,'HP India');

Select * from product;

Alter table product add column warranty_years int;
Select * from product;

Alter table product rename column supplier to supplier_name;
Select * from product;

Select product_name, category, stock from product where category = 'Electronics';
Update product set stock = stock+20 where category = 'Electronics';
Select product_name, category, stock from product where category = 'Electronics'; 

Select product_name, category, selling_price from product where category = 'Accessories';
Update product set selling_price = selling_price - 200 where category = 'Accessories';
Select product_name, category, selling_price from product where category = 'Accessories';

Select product_name, brand, supplier_name from product where brand = 'HP';
Update product set supplier_name = 'HP Global' where brand = 'HP';
Select product_name, brand, supplier_name from product where brand = 'HP';

Delete from product where product_name = 'printer';
Select * from product;

Select product_name,brand,selling_price,stock from product;

Select * from product;

/*Filtering Data*/

select * from product where selling_price > 20000;
select * from product where stock < 20;
select * from product where category = 'Electronics' AND  stock > 25;
select * from product where category != 'Accessories';
select * from product where selling_price between 10000 and 30000;

select * from product where selling_price > 15000 and stock < 30;
select * from product where category = 'Electronics' or category = 'Accessories';
select * from product where category IN('Electronics' , 'Accessories');
select * from product where supplier_name != 'HP Global';
select * from product where stock between 20 and 60;
select product_name, brand,selling_price from product 
where selling_price > 30000;

select * from product where category = 'Electronics' or brand = 'Logitech';
select * from product where stock > 10 and selling_price < 50000;
select * from product where brand != 'HP';
select * from product where selling_price between 1000 and 20000 and stock > 15;

select product_name , brand, stock from product where category = 'Electronics';
select product_name , brand from product where brand = 'HP' or brand = 'Dell';
select product_name , selling_price, stock from product where selling_price < 20000 and stock > 10;
select* from product where category <> 'office';
select product_name , selling_price from product where selling_price between 20000 and 70000 ;
select product_name , brand from product where brand IN ('HP' , 'Dell');
