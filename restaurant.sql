---------------------------
create database restaurant
create table employee(EMP_ID int primary key,
					  ENAME varchar(30) not null,
					  GENDER char(1) check(GENDER='M' or GENDER='F'),
					  SALARY money not null,
					  SHIFT varchar(10) check(shift='day' or shift='night'),
					  ADDRESS varchar(25) not null,
					  DOB date null,
					  DESIGNATION varchar(30) not null
					  )
insert into employee values(1001,'Priyanshi','F',50000,'day','uttarpradesh','1998-08-12','Assistant manager');
insert into employee values(1002,'Rishab','M',100000,'day','Maharastra','1997-09-01','Manager')
insert into employee values(1003,'Sandeep','M',60000,'day','Andhra Pradesh','1988-11-21','Chef')
insert into employee values(1004,'Anuradha','F',70000,'day','Maharastra','1995-09-10','Chef')
insert into employee values(1005,'Suresh','M',30000,'night','Tamilnadu','1998-10-14','Waiter')
insert into employee values(1006,'Ramya','F',20000,'day','Tamilnadu','1999-04-11','Waiter')
insert into employee values(1007,'Shekhar','M',40000,'day','Maharastra','1997-02-01','Assistant manager');
insert into employee values(1008,'Alekhya','F',20000,'night','Andhra Pradesh','1998-07-21','Waiter');	
insert into employee values(1009,'Madhavi','F',60000,'night','Kerela','1998-12-21','Chef');
insert into employee values(1010,'Devi','F',20000,'day','Tamilnadu','1999-03-10','Store manager');
insert into employee values(1011,'Akhil','M',20000,'night','Maharastra','1995-01-01','Store manager');
insert into employee values(1012,'Nithin','M',30000,'day','Andhra Pradesh','1996-08-30','Waiter');
insert into employee values(1013,'vedaswini','F',45000,'day','karnataka','1997-09-30','Receptionist');
insert into employee values(1014,'Jannifa','F',47000,'night','Himachal pradesh','1999-09-25','Receptionist');
insert into employee values(1015,'Srikanth','M',25000,'day','Himachal pradesh','1996-09-25','chef');
insert into employee values(1016,'Bharat','M',21000,'day','Maharastra','1997-09-25','store manager');
insert into employee values(1017,'rahul','M',20000,'night','kerala','1996-08-25','store manager');
select count(EMP_ID) as count, designation from employee group by designation having count(designation)>1
select *from employee
---------------------------
create table customer(CUS_ID int primary key,
					  CNAME varchar(30) not null, 
					  DATE date not null,
					  EMAIL varchar(30) null,
					  PHONE varchar(12) not null,
					  ADDRESS varchar(25) null
					  )
insert into customer values(501,'Yogendra','2023-04-01','yogi1717@gmail.com',9876512345,'Tirupati')
insert into customer values(502,'Ramu','2022-09-02','ramu1717@gmail.com',8876512345,'Nellore')
insert into customer values(503,'Divya','2023-04-14','divyasree@gmail.com',9080712045'Kerela')
insert into customer values(504,'Sravanthi','2023-05-12','sravanthi2098@gmail.com',7893456789,'Andhra Pradesh')
insert into customer values(505,'Rishitha','2023-04-11','rishitha1097@gmail.com',7656578908,'Tamilnadu')
insert into customer values(506,'Charan','2022-12-04','charan2089@gmail.com',8876578901,'Andhra Pradesh')
insert into customer values(507,'Ranbeer','2022-11-12','ranbeer2017@gmail.com',8876512345,'Telangana')
insert into customer values(508,'Mounika','2022-10-08','mounikareddy@gmail.com',8639421609,'Tirupati')
insert into customer values(509,'Vikas','2022-12-10','vikas5656@gmail.com',9080767654,'Nellore')
insert into customer values(510,'dhanalakshmi','2022-11-09','dhana9875@gmail.com',9880767654,'Nellore')
insert into customer values(511,'ravi','2022-10-15','ravi123@gmail.com',7780767654,'karnataka')
insert into customer values(512,'sharma','2022-09-11','sharma8775@gmail.com',8760767654,'telangana')
insert into customer values(513,'kumar','2022-05-26','kumar876@gmail.com',7650767654,'kerala')
insert into customer values(514,'Gautam','2023-10-07','gautam765@gmail.com',9984767654,'vizag')
insert into customer values(515,'Anand','2022-12-11','anand456@gmail.com',9081234654,'vijayawada')
insert into customer values(516,'Akash','2023-11-07','akash097@gmail.com',8765767654,'Nellore')
insert into customer values(517,'Arjun','2022-02-02','arjun9778@gmail.com',7689567654,'Tiruupati')
insert into customer values(518,'sarika','2023-12-02','sarika743@gmail.com',9850767654,'Andhra pradesh')
insert into customer values(519,'seeta','2022-09-11','seeta987@gmail.com',9980767654,'Ananthapur')
insert into customer values(520,'lahari','2022-09-05','lahari456@gmail.com',9770767654,'kerala')
insert into customer values(521,'jyothi','2023-12-12','jyothi125@gmail.com',8970767654,'Telangana')
insert into customer values(522,'nandini','2022-04-09','nandini987@gmail.com',7780767654,'Telangana')
insert into customer values(523,'manasvi','2032-11-09','manasvi783@gmail.com',9080765643,'vizag')
insert into customer values(524,'sekhar','2022-05-08','sekhar986@gmail.com',7010767654,'ongole')
insert into customer values(525,'nani','2022-06-11','nani17@gmail.com',7680767654,'ongole')
insert into customer values(526,'Eshwar','2023-05-31','eshwar23@gmail.com',7788903017,'Tamilnadu')
insert into customer values(527,'Indu','2023-01-31','indup23@gmail.com',9688903017,'Banglore')

select *from customer
---------------------------
create table menu(DISH_ID int primary key,
				  DNAME varchar(30) not null,
				  PRICE money not null,
				  TYPE varchar(10) null
				  )
insert into menu values(01,'Panner curry',180,'Veg')
insert into menu values(02,'Egg rice',200,'Non-veg')
insert into menu values(03,'Chicken rice',110,'Non-veg')
insert into menu values(04,'Lolly pop rice',180,'Non-Veg')
insert into menu values(05,'Chicken saucy lollypop',300,'Non-veg')
insert into menu values(06,'Mixed-veg curry',160,'Veg')
insert into menu values(07,'Kaju curry',180,'Veg')
insert into menu values(08,'Mushroom curry',190,'Veg')
insert into menu values(09,'Panner butter masala',200,'Veg')
insert into menu values(10,'Zeera rice',150,'Veg')
insert into menu values(11,'Lemon rice',150,'Veg')
insert into menu values(12,'Palav',150,'Veg')
insert into menu values(13,'Plane rice',120,'Veg')
insert into menu values(14,'Tomato rice',140,'Veg')
insert into menu values(15,'Coconut rice',160,'Veg')
insert into menu values(16,'Curd rice',120,'Veg')
insert into menu values(17,'Panner Biryani',250,'Veg')
insert into menu values(18,'Mushroom Biryani',250,'Veg')
insert into menu values(19,'Veg dham Biryani',280,'Veg')
insert into menu values(20,'kaju Biryani',250,'Veg')
insert into menu values(21,'Gobi marchuria',180,'Veg')
insert into menu values(22,'Chilli Gobi',200,'Veg')
insert into menu values(23,'Panner chilli',200,'Veg')
insert into menu values(24,'Gobi 65',180,'Veg')
insert into menu values(25,'Panner tikka',220,'Veg')
insert into menu values(26,'Chilli chicken',250,'Non-Veg')
insert into menu values(27,'Chicken tandoori',200,'Non-Veg')
insert into menu values(28,'chicken lolly pop',200,'Non-Veg')
insert into menu values(29,'chicken tikka',250,'Non-Veg')
insert into menu values(30,'Chicken drumstick',280,'Non-Veg')
insert into menu values(31,'Special dum biryani',300,'Non-Veg')
insert into menu values(32,'Mutton biryani',350,'Non-Veg')
insert into menu values(33,'Natu kodi biryani',350,'Non-Veg')
insert into menu values(34,'chicken kabab',150,'Non-Veg')
insert into menu values(35,'fish fry',300,'Non-Veg')
select *from menu
---------------------------
create table Orders(ORDER_ID INT PRIMARY KEY,
					CUS_ID int foreign key references customer(cus_id),
					DISH_ID int foreign key references menu(dish_id),
					MODE_OF_ORDER varchar(20) not null,
					COOKING_TIME varchar(10) null,
					PRICE money not null
					)
insert into Orders values(201,501,01,'online','30 min',180)
insert into Orders values(202,502,02,'online','30 min',180)
insert into Orders values(203,503,17,'Offline','15 min',250)
insert into Orders values(204,504,10,'Offline','10 min',150)
insert into Orders values(205,505,18,'Offline','15 min',250)
insert into Orders values(206,506,20,'Online','10 min',250)
insert into orders values(207,507,34,'offline','15 min',150)
insert into orders values(208,513,31,'online','30 min',300)
insert into orders values(209,520,28,'online','20 min',200)
insert into orders values(210,525,23,'offline','15 min',200)
insert into orders values(211,519,18,'offline','25 min',250)
insert into orders values(212,515,20,'online','25 min',250)
insert into orders values(213,509,35,'offline','25 min',300)
insert into orders values(214,510,02,'offline','20 min',200)
insert into orders values(215,508,11,'offline','10 min',150)
insert into orders values(216,501,02,'offline','20 min',200)
insert into orders values(217,502,11,'offline','10 min',150)
insert into orders values(218,519,18,'offline','20 min',250)
insert into orders values(219,519,02,'offline','10 min',200)
insert into orders values(220,519,23,'offline','10 min',200)


select *from orders
---------------------------
create table Waiter(
					Waiter_id int foreign key references employee(emp_id),
				    WNAME	varchar(30) not null,
					MOBILE VARCHAR(12) not null,
					ADDRESS varchar(25) null
					)
insert into Waiter values(1005,'Suresh','9050221456','Tamilnadu')			
insert into Waiter values(1006,'Ramya','9000151450','Tamilnadu')	
insert into Waiter values(1008,'Alekhya','8979767543','Andhra Pradesh')
insert into Waiter values(1012,'Nithin','9898676745','Andhra Pradesh')	

select *from waiter
---------------------------
create table store(ITEM_ID int  primary key,
					Emp_id int foreign key references employee(Emp_id),	
					INAME varchar(25) not null,
				   STATUS VARChar(30) not null
				   )
insert into store values(4001,1010,'onions','available')
insert into store values(4002,1011,'rice','available')
insert into store values(4003,1016,'garlic','not-available')
insert into store values(4004,1017,'masala items','available')
insert into store values(4005,1001,'vegetables','available')
insert into store values(4006,1001,'oil','not-available')
insert into store values(4007,1001,'meat','available')
insert into store values(4008,1001,'water','available')
insert into store values(4009,1001,'cylinder','available')
insert into store values(4010,1001,'utensils','available')
insert into store values(4011,1001,'tissue papers','not-available')
insert into store values(4012,1001,'curd','not-available')
select item_id,iname from store where status ='not-available' and iname like '%s'
select *from store
---------------------------
create table feedback(CUS_ID int foreign key references customer(cus_id),
					  SERVICE varchar(15) not null,
					  SUGGESTIONS varchar(25) null,
					  FOOD_RATING int check(food_rating  between 1 and 10)
					  )
insert into feedback values(501,'Excellent','increase items',10)
insert into feedback values(502,'Good',null,8)
insert into feedback values(503,'Good','Add more flavors',8)
insert into feedback values(504,'Excellent',null,9)
insert into feedback values(508,'Bad','Needs improvement',4)
insert into feedback values(509,'Excellent',null,9)
	
select *from feedback
---------------------------
create table branch(BID int primary key,
					BNAME varchar(30) not null,
					RATTING VARCHAR(5) NOT NULL,
					BLOCATION varchar(30) not null,
					PINCODE int not null
					)

insert into branch values(701,'Chillies','A++','Tirupathi',517101)
insert into branch values(702,'Chillies','A','Hyderabad',285001)
insert into branch values(703,'Table_9','A+','Tirupathi',517101)
insert into branch values(704,'pepper-salt','A+','banglore',517211)
insert into branch values(705,'pulse','A++','hyderabad',285001)
insert into branch values(706,'minerva','A++','vizag',517102)
insert into branch values(707,'andhra-spice','B','nellore',517113)
insert into branch values(708,'paradise','A','ananthapur',517112)


select *from branch
---------------------------
create table owner(OWNER_ID int primary key,
				   OWNERNAME varchar(30) not null,
				   BID int foreign key references branch(bid),
				   BNAME VARCHAR(25) not null,
				   MOBILE varchar(12) not null
				   )

insert into owner values(801,'Girish reddy',701,'Chillies','9896959493')
insert into owner values(802,'Lokesh naidu',702,'Chillies','7013216789')
insert into owner values(803,'Satya Srinivas',703,'Table_9','7089563412')
insert into owner values(804,'Rajasekhar',704,'pulse','9989563412')
insert into owner values(805,'Namratha',705,'paradise','8799563412')
insert into owner values(806,'Mahesh',706,'andhra_spice','7087663412')
insert into owner values(807,'kishore',707,'pepper-salt','7089563098')
insert into owner values(808,'Harish Rao',708,'minerva','7998563098')

select *from owner
---------------------------
create table chef(CHEF_ID int foreign key references employee(emp_id),
				  CNAME varchar(30) not null,
				  SALARY money not null,
				  GENDER char(1) check(GENDER='M' or GENDER='F'),
				  SPECIALIZATION varchar(20) not null,
				  MOBILE VARCHAR(12) not null,
				  ADDRESS varchar(25) null
				  )

insert into chef values(1003,'Sandeep',60000,'M','Veg-staters','8822331234','Andhra Pradesh')
insert into chef values(1004,'Anuradha',70000,'F','Biryani','8786858483','Maharastra')
insert into chef values(1009,'Madhavi',60000,'F','Rice items','8789807213','Kerela')
insert into chef values(1015,'Srikanth',25000,'M','Statters','9789807213','Himachal pradesh')
select concat(gender,'+',specialization) as combine from chef
select chef_id,cname,salary from chef where specialization like 's%'
select *from chef
---------------------------
create table online_ords(
						 online_ord_id int primary key,
						 CUSTOMER_ID int foreign key references customer(CUS_ID),
						 CNAME varchar(30) not null,
						 DISH_ID int foreign key references menu(DISH_ID),
						 DNAME varchar(30) not null,
						 COOKING_TIME varchar(10) not null,
						 DATE date not null,
						 PRICE money not null
						 )

insert into online_ords values(2001,501,'yogendra',01,'paneer curry','30 min','2023-04-01',180)
insert into online_ords values(2002,502,'ramu',02,'egg rice','30 min','2023-04-05',180)
insert into online_ords values(2003,506,'charan',20,'kaju biryani','10 min','2023-05-06',250)
insert into online_ords values(2004,513,'kumar',31,'special dum biryani','30 min','2022-05-26',300)
insert into online_ords values(2005,520,'lahari',28,'chicken lollypop','20 min','2022-12-11',200)
insert into online_ords values(2006,515,'Anand',20,'kaju biryani','25 min','2022-09-05',250)
select customer_id, cname from online_ords where price between 180 and 300
select *from online_ords
---------------------------		
create table DELIVER_BOY(
						 DELIVERBOY_ID int primary key,
						 DNAME varchar(30) not null,
						 SALARY money not null,
						 SHIFT varchar(5) check(shift='day' or shift='night'),
						 MOBILE varchar(12) not null,
						 ADDRESS varchar(25) null,
						 WORKINGDAYS_MONTH int check(workingdays_month between 1 and 31)
						 )

insert into deliver_boy values(301,'sherath',15000,'day',7356920287,'Chittoor',20)
insert into deliver_boy values(302,'srikanth',15000,'day',7356989287,'Tirupati',25)
insert into deliver_boy values(303,'rishi',15000,'day',7356920097,'nellore',15)
insert into deliver_boy values(304,'ganesh',15000,'day',8956920287,'kalahasti',18)
insert into deliver_boy values(305,'pradeep',15000,'day',9856920287,'nizamabad',21)
insert into deliver_boy values(306,'saketh',18000,'night',7226920287,'ongole',25)
insert into deliver_boy values(307,'sasi',18000,'night',9126920287,'sirivella',26)
insert into deliver_boy values(308,'teja',18000,'night',8856920287,'vizag',25)
insert into deliver_boy values(309,'tulasi',18000,'night',7376230287,'banglore',30)
insert into deliver_boy values(310,'madhav',18000,'night',9356920287,'Chittoor',30)
select *from deliver_boy
---------------------------
create table HOME_DELIVERY(
							DELIVERBOY_ID int foreign key references deliver_boy(DELIVERBOY_ID),
							ORDER_ID int foreign key references orders(order_id),
							CUS_ID int foreign key references customer(CUS_ID),
							MOBILE varchar(12) not null,
							ADDRESS varchar(25) not null
							)

insert into home_delivery values(301,201,501,9876512345,'Tirupati')
insert into home_delivery values(302,203,503,9080712045,'kerala')
insert into home_delivery values(303,209,520,9770767654,'kerala')
insert into home_delivery values(304,210,525,7680767654,'ongole')
insert into home_delivery values(305,211,519,9980767654,'Ananthapur')
insert into home_delivery values(306,208,513,7650567654,'kerala')

select *from home_delivery

---------------------------
create table TABLES( 
					TABLE_ID int primary key,
					FLOOR int unique not null,
					NOOF_SEATERS int not null
					)

insert into tables values(401,2,4)
insert into tables values(402,1,6)
insert into tables values(403,3,8)
insert into tables values(404,4,10)
insert into tables values(405,5,2)
insert into tables values(406,6,4)
insert into tables values(407,7,6)
insert into tables values(408,8,12)
insert into tables values(409,9,8)
insert into tables values(410,10,12)
select *from tables
select table_id,floor,noof_seaters from tables order by noof_seaters desc

---------------------------
create table BOOKING(
					 BOOKING_ID int primary key,
					 TABLE_ID int foreign key references tables(table_id),
					 CUS_ID int foreign key references customer(cus_id),
					 TYPE varchar(10) check(type='AC' or type='NON-AC'),
					 DATE date not null,
					 )

insert into booking values(901,401,501,'AC','2023-04-01')
insert into booking values(902,402,502,'NON-AC','2022-09-02')
insert into booking values(903,403,503,'AC','2023-04-14')
insert into booking values(904,404,504,'NON-AC','2023-05-12')
insert into booking values(905,405,505,'AC','2023-04-11')
insert into booking values(906,406,506,'NON-AC','2022-12-04')
insert into booking values(907,407,507,'AC','2022-11-12')
insert into booking values(908,408,508,'NON-AC','2022-10-08')
insert into booking values(909,409,509,'AC','2022-12-10')
SELECT *from booking

---------------------------

create table BILL(
				  CUS_ID int foreign key references customer(cus_id),
				  CNAME varchar(30) not null,
				  TOTAL_PRICE money not null,
				  DATE date not null,
				  )
				  drop table bill
insert into bill values(501,'yogendra',380,'2023-04-01')
insert into bill values(502,'ramu',330,'2022-09-02')
insert into bill values(503,'divya',250,'2023-04-14')
insert into bill values(504,'sravanthi',150,'2023-05-12')
insert into bill values(505,'rishitha',250,'2023-04-11')
insert into bill values(506,'charan',250,'2022-02-04')
insert into bill values(519,'seeta',900,'2022-09-11')

select *from bill

---------------------------

--who are the members of kitchen chef designation
select * from employee where DESIGNATION='chef';

---who are the employees working in night shift
select ename,shift from employee where SHIFT='night';

---list out the customers who come from telangana
select * from customer where address='telangana'

---what are the items which are not available in the store of restaurent
select * from store where status='not-available'

---what are the customer id's those who reserved for ac 
select * from booking where type='ac';

---display the table id who's table capacity is more than 4
select * from tables where NOOF_SEATERS>4;

---who are the employees who's name starts with 's'
select * from employee where ename like 's%'

---who are the employees who are earning their salary more than 40000 and hometown is maharastra
select * from employee where SALARY>40000 and address='maharastra'

---who are the deliver boys work in night shift and whose working days are more than 25
select * from DELIVER_BOY where shift='night' and WORKINGDAYS_MONTH>25

---Find the age of employee who are working in the restaurant
select datediff(YY,DOB,getdate()) as Age,ENAME from employee 


==aggregate fns
---find the average salary of employee who are working in the restaurent
select designation,avg(salary) as Avg_salary from employee group by DESIGNATION order by Avg_salary

---find out the table id which has maximimum no of seating capacity
select max(NOOF_SEATERS) as Max_capacity from tables

---what is the maximum capacity of tables in the whole restaurent
select sum(NOOF_SEATERS) as Total_capacity from tables

---what is the  least salary given to employee by the restaurent
select min(salary) as Least_salary from employee

---how many customers visited the restaurent
select count(cus_id) from customer


===========temporary table
---create a seperate menu for vegetarian customers(temporary table)
select * into Veg_menu from menu where TYPE='Veg'
select * from Veg_menu

---create a separate table for online orders where cooking time is more than 20 minutes
select *into online_dishes from online_ords where COOKING_TIME>'20 min'
select *from online_dishes

===========view
---create a view from customers which includes CID, CName ,email,address of customers of whose names starts with vowels.
create view customer_details
as( 
select CUS_ID, CName,email,address
   from customer where cname like '[a,e,i,o,u]%')
select * from customer_details

------create a view from booking includes cus id, table id,noof seaters
create view booking_details
as(
select b.cus_id, t.table_id,t.noof_seaters from TABLES t,booking b where b.table_id=t.table_id and t.noof_seaters>6
)
select * from booking_details

===joins
---Find the dish name of customers what they have ordered
select c.cus_id,c.cname,o.dish_id from customer c,orders o where c.cus_id=o.cus_id
select c.cus_id,c.cname,o.dish_id,d.dname from customer c,orders o,menu d where c.cus_id=o.cus_id and o.dish_id=d.dish_id

---get list of customers who have placed moe than 3 orders 
select c.cus_id,c.cname from customer c,orders o where  c.cus_id=o.cus_id group by c.CUS_ID,c.CNAME having count(o.ORDER_ID)>3

---update the salary of chef to 80,000 who is working in the night shift 
update  employee set salary='80000' where shift='night' and DESIGNATION='chef'
select * from employee

---- Find the ID's and names of customers who have given positive feedback (rating more than 8).
select c.CUS_ID, c.CName from customer c,feedback f  where c.CUS_ID=f.CUS_ID and  FOOD_RATING>8

---find order ids,dish items along with their ids order by price 
select o.order_id,m.dname from orders o,menu m where o.DISH_ID=m.DISH_ID order by m.PRICE

===the total bill by the cus_id=519
select o.CUS_ID,sum(o.price) as Total_price from orders o,menu m where o.dish_id=m.DISH_ID and o.CUS_ID=519
group by o.CUS_ID

---display name of branch and owner of branch whogot highest rating among all branches
select o.ownername ,b.bname,RATTING from owner o,branch b where b.bid=o.bid and b.RATTING='A++'

---find out the customer name and id who booked in the year-2023
select c.cname ,t.table_id,b.date from customer c,tables t,booking b where c.cus_id=b.cus_id and t.TABLE_ID=b.TABLE_ID and b.date like '2023%'

sub query
----Find out employee whos salary is same as other employee salary
select emp_id,ename,salary from employee where salary in (select salary from employee group by salary having count(*)>1)
select * from employee

----
select emp_id,ename,salary from employee where salary in (select salary from employee group by salary having count(*)>1 ) and 
ename like 'a%'

----display the second highest dish price in the menu
select dname,price from menu where price=(select max(price) from menu where price <>(select max(price ) from menu))
select * from menu

----find out the customers who made top 2 least bill
select cus_id,cname,total_price from bill
where total_price in
(select top 2 total_price from bill  order by total_price asc)

-----Find out the customer name and id who rated above 8
select f.cus_id,c.cname,f.FOOD_RATING from customer c,feedback f where c.CUS_ID=f.CUS_ID and f.FOOD_RATING in 
(select FOOD_RATING from feedback where FOOD_RATING>8)

corelation queries
-----------Retrieve all the customers who have provided feedback
SELECT *
FROM customer c
WHERE EXISTS (
    SELECT 1
    FROM feedback f
    WHERE f.cus_id = c.cus_id
);

-------Retrieve all the dishes in the menu that have been ordered

SELECT *
FROM menu m
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.dish_id = m.dish_id
)
----Retrieve all the employees who are also waiters:

SELECT *
FROM employee e
WHERE EXISTS (
    SELECT 1
    FROM waiter w
    WHERE w.waiter_id = e.emp_id
);

---Retrieve all the customers who have placed orders:

SELECT *
FROM customer c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.cus_id = c.cus_id
);

--display the ids and names of deliver boys who delivers orders to home
select d.deliverboy_id,d.dname from DELIVER_BOY as d where exists
(select * from HOME_DELIVERY as h where d.DELIVERBOY_ID=h.DELIVERBOY_ID)
----------------------------------------------------------------------------------
alter table tables add range varchar(15) null
update tables set range='A' where table_id=401
update tables set range='A' where table_id=402
update tables set range='A' where table_id=403
select *from tables
----------------------------------------------------------------------------------
select count(EMP_ID) as count, designation from employee group by designation having count(designation)>1
-------------------------------------------------
select sum(salary) as total_salary from employee group by designation
-------------------------------------------------
select upper(ownername) as NAMES from owner
---------------------------------------------
select lower(dname) as dname from deliver_boy where shift='night'

==========functions
CREATE FUNCTION get_employees_with_salary_greater_than(salary_threshold DECIMAL(10,2))
RETURNS TABLE (
    emp_id INT,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
)
AS $$
BEGIN
    RETURN QUERY
    SELECT emp_id, emp_name, salary, hire_date
    FROM employee
    WHERE salary > salary_threshold;
END;

SELECT *
FROM get_employees_with_salary_greater_than(50000);

=============procedures

