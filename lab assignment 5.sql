create table sales_master(salesman_no varchar(6) primary key,sal_name varchar(20) not NULL,address varchar(40) not NULL,
city varchar(20),pincode number(6),sal_amount number(8,2)check(sal_amount!=0), Tgt_to_get number(8,2)check(Tgt_to_get!=0),
Ytd_sales number(8,2)check(Ytd_sales !=0),remarks varchar(30));


insert into sales_master values('S00001','Kiran','A/14 worli','mumbai',400002,3000,100,50,'Good');
insert into sales_master values('S00002','Manish','65,nariman','mumbai',400002,3000,100,50,'Good');
insert into sales_master values('S00003','Ravi','P7_Bandra','mumbai',400002,3000,100,50,'Good');
insert into sales_master values('S00004','Ramesh','Andheri','mumbai',400002,3000,100,50,'Good');

SELECT * from sales_master








CREATE TABLE sales_order(s_order_no VARCHAR(6) primary key, s_order_date DATE , client_no VARCHAR(6)NOT NULL,
dely_add VARCHAR(25), salesman_no VARCHAR(6), dely_type CHAR(1), billed_yn CHAR(1), dely_date DATE)

ALTER TABLE sales_order

ADD FOREIGN KEY (CLIENT_NO) REFERENCES CLIENTMASTER(CLIENT_NO);

SELECT * from CLIENTMASTER

ALTER TABLE CLIENTMASTER

ADD primary key (CLIENT_NO);

SELECT * from sales_order



