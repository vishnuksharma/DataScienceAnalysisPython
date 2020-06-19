-- create database mydb;
-- use mydb;
-- create table Wrestlers (
-- 	Name varchar(100),
--     Wrestler_Rank int,
--     Height int,
--     Weight int,
--     Age int
-- );
-- show tables
-- insert into Wrestlers (Name, Wrestler_Rank, Height, Weight, Age ) values ('Undertaker', 1, 208, 136, 54);
-- insert into Wrestlers (Name, Wrestler_Rank, Height, Weight, Age ) values ('Kane', 2, 213, 147, 52);

-- select * from Wrestlers where 1;

-- alter table Wrestlers change Petrol_Quantity Petrol_Price decimal(4,2)


-- select count(*) as corporate_count from cust_dimen where state = 'Maharashtra'; 
-- select * from cust_dimen where state = 'Maharashtra';

select * from cust_dimen where City like 'K%';
-- select * from employees where LastName between 'Joshi' and 'Sharma';
-- select '54' > 'a';
SELECT Prod_id, sum(Order_Quantity) FROM market_star_schema.market_fact_full
group by Prod_id
order by sum(Order_Quantity) desc limit 0, 3;

-- select ceil(rand() * 6);
-- SELECT MOD(POW(79, 16), 17) as reminder;

-- select * from prod_dimen where Prod_id in ( select Prod_id from market_fact_full where Product_Base_Margin is null );

-- select * from cust_dimen where Cust > (select creditLimit from customers where customerName="La Rochelle Gifts")
-- with notId as (
-- 	select * from cust_dimen where Cust_id is null
-- )
