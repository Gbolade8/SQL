SELECT country, 
    strftime('%Y-%m', day) AS Month,
    SUM(cases) AS MonthlyCases, 
    SUM(deaths) AS MonthlyDeaths
FROM covid_19
GROUP BY country, Month
ORDER BY country, Month;