use classicmodels;
select * from customers;
select * from employees;
select * from offices;
select * from orderdetails;
select * from orders;
select * from payments;
select * from productlines;
select * from products;

set sql_safe_updates = 0;

#adding Profit column and its datatype
alter table products      
add column Profit_per_unit decimal(10,2);

ALTER TABLE products
CHANGE COLUMN Profit_per_unit profit decimal(10,2);


#Updating Profit column with data
update products
set profit_per_unit = MSRP - buyPrice;

#checking new profit column
select * from products;

update orders
set comments = 'NA'
where comments is null;

select * from orderdetails 
where orderNumber is Null;

delete from offices
where city is null;

select customername, addressLine1, addressLine2, city, state, postalcode, country from customers;

#73 missing states was there.
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

#adding ststae name of france where city name is Nantes.
update customers
set state = 'Loire-Atlantique'
where city = 'Nantes';

#after adding the null state data is 71 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'London'
where city = 'London';

#after adding the null state data is 69 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'Hessen'
where city = 'Frankfurt';

#after adding the null state data is 67 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'Vestfold county'
where city = 'Stavern';

#after adding the null state data is 66 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'Auckland'
where city = 'Auckland';

#after adding the null state data is 63 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = ' Berlin'
where city = 'Berlin';

#after adding the null state data is 62 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null 
group by country;

select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null and country = 'Russia'
group by country;

update customers
set state = ' Saint Petersburg'
where city = 'Saint Petersburg';

#after adding the null state data is 61 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'Wellington'
where city = 'Wellington';

#after adding the null state data is 60 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = ' Singapore'
where city = 'Singapore';

#after adding the null state data is 57 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'Auvergne-Rhône-Alpes'
where city = 'Lyon';

#after adding the null state data is 56 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

update customers
set state = 'North Rhine-Westphalia'
where city = 'Köln';

#after adding the null state data is 55 only. 
select customername, addressLine1, addressLine2, city, state, postalcode, country from customers
where state is null;

#after manuaaly updating the null state data it reduced fro 72 to 55 only. 


select * from offices
where state is null;

update offices
set state = 'Île-de-France'
where city = 'Paris';

update offices
set state = 'London'
where city = 'London';

update offices
set state = 'New South Wales'
where city = 'Sydney';