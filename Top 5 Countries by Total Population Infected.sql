SELECT country, 
    SUM(cases) AS TotalCases,
    population,
    CASE 
        WHEN population > 0 THEN (SUM(cases) * 100.0 / population)
        ELSE 0 
    END AS PercentPopulationInfected
FROM covid_19
GROUP BY country
ORDER BY PercentPopulationInfected DESC
LIMIT 5;
