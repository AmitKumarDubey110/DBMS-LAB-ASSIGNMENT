create table sales_man(salesman_id number(6),name varchar(20),city varchar(20), Commission number(6));


insert into sales_man values('5001','James Hoog','New York',0.15);

insert into sales_man values('5002','Nail Knite','Paris',0.13);

insert into sales_man values('5005','Pit Alex','London',0.11);

insert into sales_man values('5006','Mc Lyon','Paris',0.14);

insert into sales_man values('5007','Paul Adam','Rome',0.13);

insert into sales_man values('5003','Lauson Hen','San Jose',0.12);

SELECT * from sales_man








create table customer(Customer_id number(6),Cust_name varchar(20),city varchar(20), Grade number(6),Salesman_id number(6));


insert into customer values(3002,'Nick Rimando','New York', 100,5001);

insert into customer values(3007,'Brad Davis','New York', 200,5001);

insert into customer values(3005,'Graham Zusi','California', 200,5002);

insert into customer values(3008,'Julian Green','London', 300,5002);

insert into customer values(3004,'Fabian Johnson','Paris', 300,5006);

insert into customer values(3009,'Geoff Cameron','Berlin', 100,5003);

insert into customer values(3003,'Jozy Altidor','Moscow', 200,5007);

insert into customer values(3001,'Brad Guzan','London', 100,5005);

select *from customer






create table orders(Ord_no number(10), Purch_amt number(10,2), or_date DATE, customer_id number(10), salesman_id number(10));

insert into orders values(70001,150.5,to_date('2012-10-05', 'yyyy-mm-dd'), 3005,5002);

insert into orders values(70009,270.65,to_date('2012-09-10', 'yyyy-mm-dd'), 3001,5005);

insert into orders values(70002,65.26,to_date('2012-10-05', 'yyyy-mm-dd'), 3002,5001);

insert into orders values(70004,110.5,to_date('2012-08-17', 'yyyy-mm-dd'), 3009,5003);

insert into orders values(70007,948.5,to_date('2012-09-10', 'yyyy-mm-dd'), 3005,5002);

insert into orders values(70005,2400.6,to_date('2012-07-27', 'yyyy-mm-dd'), 3007,5001);

insert into orders values(70008,5760,to_date('2012-09-10', 'yyyy-mm-dd'), 3002,5001);

insert into orders values(70010,1983.43,to_date('2012-10-10', 'yyyy-mm-dd'), 3004,5006);


select *from orders






select name,cust_name,sales_man.city from sales_man,customer where sales_man.city=customer.city



select Ord_no,Purch_amt,cust_name,city from customer,orders where orders.Purch_amt between 500 and 2000



select *from sales_man,customer where sales_man.sales_man_id=customer.sales_man_id


select customer.cust_name from sales_man,customer where sales_man.commission >0.12 


select *from salesman,customer where salesman.city != customer.city AND salesman.commission>0.12
