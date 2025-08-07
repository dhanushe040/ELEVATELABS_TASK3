# ELEVATELABS_TASK3
📊 ELEVATELABS SQL Query Summary
This repository contains SQL queries executed on the ELEVATELABS database, specifically targeting the EMP (Employees) table. Below is a categorized summary of the queries and their outcomes.

🔍 Basic Retrieval
View All Records SELECT * FROM EMP; Retrieves all employee details.

Display Employee Names and Departments SELECT ENAME, DEPT FROM EMP;

👥 Gender & Department Filters
Male Employees SELECT ENAME, DEPT FROM EMP WHERE GENDER = 'M';

Male Employees in IT SELECT ENAME FROM EMP WHERE GENDER = 'M' AND DEPT = 'IT';

Employees in Chennai or Sales Department SELECT ENAME FROM EMP WHERE LOCATION = 'CHENNAI' OR DEPT = 'SALES';

📅 Date-Based Filters
Joined on Specific Date in Sales SELECT ENAME FROM EMP WHERE DOJOIN = '2019-01-10' AND DEPT = 'SALES';

Joined After 2020 SELECT ENAME, YEAR(DOJOIN) AS JOIN_YEAR FROM EMP WHERE YEAR(DOJOIN) > 2020;

Joined Within Last 600 Days SELECT ENAME, DOJOIN FROM EMP WHERE DOJOIN > (CURRENT_DATE() - INTERVAL 600 DAY);

Joined Within Last 3 Years SELECT ENAME, DOJOIN FROM EMP WHERE DOJOIN > (CURRENT_DATE() - INTERVAL 3 YEAR);

💰 Salary-Based Queries
Employees Earning Between ₹15,000 and ₹20,000 SELECT ENAME, SALARY FROM EMP WHERE SALARY BETWEEN 15000 AND 20000;

Sort by Highest Salary SELECT ENAME, SALARY FROM EMP ORDER BY SALARY DESC;

Top Earner SELECT ENAME, SALARY FROM EMP ORDER BY SALARY DESC LIMIT 1;

🔤 Pattern Matching
Names Containing 'KUMAR' SELECT ENAME FROM EMP WHERE ENAME REGEXP 'KUMAR';
