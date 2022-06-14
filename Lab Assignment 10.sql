CREATE TABLE Employes_data
(empid number,
name varchar2(20),
doj DATE,
jobid varchar2(20),
salary NUMBER);
 
insert into Employes_data VALUES(100,'Aman jian','17-jun-2017','AD_PRES',24000)
insert into Employes_data VALUES(101,'YASH KUMAR','15-jUL-2019','AD_VP',17000)
insert into Employes_data VALUES(102,'AYUSHI','12-AUG-2017','AD_PROG',9000)
insert into Employes_data VALUES(103,'KAMAL','15-SEP-2016','IT_PROG',6000)
insert into Employes_data VALUES(104,'ASTHA SINGH','07-jun-2018','CU_PROG',3500)
insert into Employes_data VALUES(105,'MADHAV MOHAN','14-JUL-2017','IT_PROG',4000)
insert into Employes_data VALUES(106,'ASTHA SHARMA','27-jun-2017','PU_CLERK',2500)


select * from Employes_data

---1
SELECT NAME FROM Employes_data
WHERE SALARY>(SELECT SALARY FROM Employes_data
WHERE EMPID=104);


---2
SELECT NAME,SALARY,JOBID FROM Employes_data
WHERE JOBID=(SELECT JOBID FROM Employes_data
WHERE EMPID=103);


---3
SELECT name, salary, jobid  
FROM Employes_data  
WHERE salary IN  
( SELECT MIN(salary)  
FROM Employes_data  
GROUP BY jobid 
);


---4
SELECT * FROM Employes_data
WHERE DOJ=(SELECT DOJ FROM Employes_data
WHERE EMPID=106);


---5
SELECT * FROM Employes_data
WHERE DOJ>(SELECT DOJ FROM Employes_data
WHERE EMPID=106);

