CREATE TABLE product_master(
  productno VARCHAR(6),descrription varchar(15)
,profitpercent varchar(4),unitmeasure varchar(10),
qtyonhead number(8),reordervl number(8,2),sellprice number(8,2),costprice number(8,2));
INSERT INTO product_master VALUES 
('p0001','1.44floppies',5,'piece',200,50,350,250);
INSERT INTO product_master VALUES 
('p03453','moniter',6,'piece',150,50,500,350);
INSERT INTO product_master VALUES 
('p06734','mouse',5,'piece',100,20,600,450);
INSERT INTO product_master VALUES 
('p07865','1.22floppies',5,'piece',100,20,750,500);
INSERT INTO product_master VALUES 
('p07868','keyboard',2,'piece',150,50,850,550);
INSERT INTO product_master VALUES 
('p07885','cddrive',2.5,'piece',80,30,700,450);
INSERT INTO product_master VALUES 
('p07965','540hdd',4,'piece',100,40,350,250);
INSERT INTO product_master VALUES 
('p07975','1.44drive',5,'piece',70,30,300,175);
INSERT INTO product_master VALUES 
('p08865','1.22drive',5,'piece',75,30,450,340);
SELECT * from product_master
SELECT discription from 
select * from product_master where descrription = '1.44drive'
update product_master set sellprice=1150 where descrription = '1.44floppies'
SELECT COUNT(PRODUCTNO)  FROM PRODUCT_MASTER;
SELECT AVG(SELLPRICE) FROM PRODUCT_MASTER;
