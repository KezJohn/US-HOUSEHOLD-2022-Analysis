# 2022 data set
SELECT * FROM us_project.us_household_income_statistics;
SELECT * FROM us_project.us_household_income;

# Figuring out which state has largest land 
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_project.us_household_income
GROUP BY State_Name
ORDER BY 2 DESC;

# Figuring out which state has top 10 largest land 
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_project.us_household_income
GROUP BY State_Name
ORDER BY 2 DESC
LIMIT 10;

# Figuring out which state has top 10 largest Water
SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_project.us_household_income
GROUP BY State_Name
ORDER BY 3 DESC
LIMIT 10;

SELECT * 
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
;

SELECT  
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
;

SELECT u.State_Name, County, Type, 'Primary', Mean, Median
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
;
    
# Shows the 10  lowest income by state 
SELECT u.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
GROUP BY u.State_Name
ORDER BY 2 ASC
LIMIT 10
;

# Shows the 10 Top most income by state ( Household)
SELECT u.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
GROUP BY u.State_Name
ORDER BY 2 DESC
LIMIT 10
;

# Shows the 10  lowest income by state ( Household) ( Median)
SELECT u.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
GROUP BY u.State_Name
ORDER BY 3 ASC
LIMIT 10
;
    
# Shows the 10 Top most income by state ( Household) ( Median)
SELECT u.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
GROUP BY u.State_Name
ORDER BY 3 DESC
LIMIT 10
;    
    
    
    
    
# Shows the Top most income by Type ( Household) (Mean)
SELECT Type, COUNT(Type), ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
GROUP BY Type
ORDER BY 3 DESC
LIMIT 20;
# shows municipality highest but just one
# where as Urban and community has lowest

# Shows the Top most income by Type ( Household) (Median)
SELECT Type, COUNT(Type), ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_project.us_household_income u 
INNER JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE mean <> 0
GROUP BY Type
ORDER BY 4 DESC
LIMIT 20;

# CDP and Track has highest income with median which also has 


