SELECT country, 
    SUM(cases) AS TotalCases, 
    SUM(deaths) AS TotalDeaths,
    CASE 
        WHEN SUM(cases) > 0 THEN (SUM(deaths) * 100.0 / SUM(cases))
        ELSE 0 
    END AS DeathRate
FROM covid_19
GROUP BY country
ORDER BY DeathRate DESC
LIMIT 5;