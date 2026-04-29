SELECT * FROM houseprice.housing_price_dataset;

select max(price)
from  houseprice.housing_price_datase;

select AVG(price)
from houseprice.housing_price_dataset;

select *
from houseprice.housing_price_dataset
where price =(select min(price) from houseprice.housing_price_dataset);

select *
from houseprice.housing_price_dataset
order by price desc
limit 10;

select *
from houseprice.housing_price_dataset
order by price asc
limit 10;

select *
from houseprice.housing_price_dataset
where price =(select max(price) from houseprice.housing_price_dataset);

select *
from houseprice.housing_price_dataset
where price > (select Avg(price) from houseprice.housing_price_dataset);

select *
from houseprice.housing_price_dataset
where YearBuilt >= 1960;


select bedrooms, avg(price) as AVG_price
from houseprice.housing_price_dataset
group by bedrooms
order by Bedrooms desc;

select bathrooms, AVG(price) as AVG_price_of_bathroom
from houseprice.housing_price_dataset
group by bathrooms
order by bathrooms desc;

select neighborhood, AVG(price) AS AVG_Neighorhood
from houseprice.housing_price_dataset
group by Neighborhood
order by Neighborhood desc;


select neighborhood, min(price) AS AVG_Neighorhood
from houseprice.housing_price_dataset
group by Neighborhood
order by Neighborhood desc;

select neighborhood, max(price) AS AVG_Neighorhood
from houseprice.housing_price_dataset
group by Neighborhood
order by Neighborhood desc;

select SquareFeet, AVG(price)
from houseprice.housing_price_dataset
Group by squarefeet
order by SquareFeet desc;


select *
from houseprice.housing_price_dataset
where price > ( select Avg(price) from houseprice.housing_price_dataset);

select Bedrooms, count(*) As total
from houseprice.housing_price_dataset
group by Bedrooms
order by Bedrooms;







