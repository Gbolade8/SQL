-- Calculate Death Percentage per day and country
SELECT country, day, cases, deaths,
    CASE 
        WHEN cases > 0 THEN (deaths * 100.0 / cases)
        ELSE 0
    END AS DeathPercentage
FROM covid_19
ORDER BY country, day;

-- Calculate Infection Rate based on population for each country
SELECT country, day, cases, population,
    CASE 
        WHEN population > 0 THEN (cases * 100.0 / population)
        ELSE 0
    END AS PercentPopulationInfected
FROM covid_19
ORDER BY country, day;

-- Countries with the highest infection rate compared to population
SELECT country, population, 
    CASE 
        WHEN population > 0 THEN (cases * 100.0 / population)
        ELSE 0
    END AS InfectionRate
FROM covid_19
ORDER BY InfectionRate DESC;