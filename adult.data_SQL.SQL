#Get the top 10 oldest individuals earning more than 50K:
SELECT age, workclass, education, occupation, income
FROM table_name
WHERE income = '>50K'
ORDER BY age DESC
LIMIT 10;

#Find the average hours worked per week by workclass:
SELECT workclass, AVG(hours_per_week) AS avg_hours_per_week
FROM table_name
GROUP BY workclass;

#Calculate the proportion of individuals earning more than 50K by education:
SELECT education, 
       COUNT(CASE WHEN income = '>50K' THEN 1 END) * 1.0 / COUNT(*) AS proportion
FROM table_name
GROUP BY education;

#Update a person's workclass based on age and occupation:
UPDATE table_name
SET workclass = 'new_workclass_value'
WHERE age = some_age_value AND occupation = 'some_occupation_value';

#Perform a JOIN to display workclass, income, and hours worked by sex:
#If we're just selecting from one table, no explicit JOIN is required
SELECT sex, workclass, income, hours_per_week
FROM table_name;
