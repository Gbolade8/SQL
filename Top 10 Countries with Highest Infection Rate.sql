SELECT country, 
    SUM(cases) AS TotalCases, 
    population,
    CASE 
        WHEN population > 0 THEN (SUM(cases) * 100.0 / population)
        ELSE 0 
    END AS TotalInfectionRate
FROM covid_19
GROUP BY country, population
ORDER BY TotalInfectionRate DESC
LIMIT 10;