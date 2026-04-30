SELECT * FROM finance.finance_economics_dataset;

select MAX(`Stock index`), MIN(`stock index`)
from finance.finance_economics_dataset;

select AVG(`open price`) AS Avg_open_price
from finance.finance_economics_dataset
group by `Stock index`;

select AVG(`open price`) AS Avg_open_price,
       avg(`close price`) AS AVG_close_price
from finance.finance_economics_dataset
group by `Stock index`;

select*
from finance.finance_economics_dataset
where `open price` = (select Max(`open price`) from finance.finance_economics_dataset);

select Date, (`Daily High` - `Daily low`) AS volatility
from finance.finance_economics_dataset
order by volatility desc;

select `stock index`, count(*) As Total_records
from finance.finance_economics_dataset
group by `Stock index`;

select `Inflation Rate (%)`, AVG(`open price`) AS AVG_stock_price
from finance.finance_economics_dataset
group by `Inflation Rate (%)`
order by `Inflation Rate (%)` desc;

select `Interest Rate (%)`, AVG(`open price`) AS AVG_stock_price
from finance.finance_economics_dataset
group by `Interest Rate (%)`
order by `Interest Rate (%)` desc;

SELECT `GDP Growth (%)`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `GDP Growth (%)`;

SELECT `Consumer Confidence Index`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `Consumer Confidence Index`;

SELECT `Crude Oil Price (USD per Barrel)`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `Crude Oil Price (USD per Barrel)`;


SELECT `Gold Price (USD per Ounce)`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `Gold Price (USD per Ounce)`;

SELECT `Forex USD/EUR`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `Forex USD/EUR`;

SELECT `Corporate Profits (Billion USD)`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `Corporate Profits (Billion USD)`;

SELECT `Venture Capital Funding (Billion USD)`, AVG(`Open Price`) AS avg_market
FROM finance.finance_economics_dataset
GROUP BY `Venture Capital Funding (Billion USD)`;

SELECT MONTH(Date) AS month,
       AVG(`Open Price`) AS avg_price
FROM finance.finance_economics_dataset
GROUP BY MONTH(Date)
ORDER BY month;

SELECT YEAR(Date) AS year,
       AVG(`Open Price`) AS avg_price
FROM finance.finance_economics_dataset
GROUP BY YEAR(Date)
ORDER BY year;

SELECT Date, `Stock Index`, `Trading Volume`
FROM finance.finance_economics_dataset
WHERE `Trading Volume` > (SELECT AVG(`Trading Volume`) FROM finance.finance_economics_dataset);

