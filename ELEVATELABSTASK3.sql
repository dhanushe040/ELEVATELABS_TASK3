#Selecting the ELEVATELABS Database
USE ELEVATELABS;

#Retrieving All Records from the EMPLOYEES Table
SELECT * FROM EMP;
/*
101	Rajaram Sundaram	sales	Sales Executive	M	2019-01-10	1980-01-16	12000.00	chennai	C	9988776655
102	Abinaya Krishnamoorthy	sales	Sales Executive	F	2021-02-15	1999-03-22	15000.00	chennai	T	8978675645
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
104	Shabeer Salman Khan	accounts	Junior Executive	M	2023-02-26	1990-06-14	10000.00	delhi	C	9089876776
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123
107	Anu Rajagopal	IT	Testing Testing	F	2015-08-23	2003-09-10	12000.00	bangalore	I	7865321986
108	Ashokumar Maheswaran	IT	Testing Testing	M	2023-12-17	2001-06-15	12000.00		I	8900334455
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
110	Ashok Narayanan	IT	Developer Developer	M	2024-03-13	1999-08-23	45000.00	bangalore	R	9003276765
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
112	Kavya Rajkumar	sales	Sales Executive	F	2023-05-14	1989-11-27	12000.00	bangalore	I	8220797988
*/

#Displaying Employee Names and Departments
SELECT ENAME,DEPT FROM EMP;
/*
Rajaram Sundaram	sales
Abinaya Krishnamoorthy	sales
Naveen Chidambaram	accounts
Shabeer Salman Khan	accounts
Sureshkumar Venkatesan	sales
Gayathri Srinivasan	IT
Anu Rajagopal	IT
Ashokumar Maheswaran	IT
Charles Joseph	sales
Ashok Narayanan	IT
Annie David	accounts
Kavya Rajkumar	sales
*/


#Filtering Male Employees by Name and Department
SELECT ENAME,DEPT FROM EMP WHERE GENDER="M";
/*
Rajaram Sundaram	sales
Naveen Chidambaram	accounts
Shabeer Salman Khan	accounts
Sureshkumar Venkatesan	sales
Ashokumar Maheswaran	IT
Charles Joseph	sales
Ashok Narayanan	IT
*/

#Selecting Employees Who Joined on 2019-01-10 in the Sales Department
SELECT ENAME FROM EMP WHERE DOJOIN='2019-01-10' AND DEPT='SALES';
/*
Rajaram Sundaram
*/


#List Employees Who Joined After 2020 with Join Year
SELECT ENAME,YEAR(DOJOIN)AS JOIN_YAER FROM EMP WHERE YEAR(DOJOIN)>2020;
/*
Abinaya Krishnamoorthy	2021
Naveen Chidambaram	2023
Shabeer Salman Khan	2023
Ashokumar Maheswaran	2023
Charles Joseph	2024
Ashok Narayanan	2024
Annie David	2024
Kavya Rajkumar	2023
*/

SELECT * FROM EMP;

#Find Employees Whose Name Contains 'KUMAR'
SELECT ENAME FROM EMP WHERE ENAME REGEXP 'KUMAR';
/*
Sureshkumar Venkatesan
Ashokumar Maheswaran
Kavya Rajkumar
*/


 #Show Employees Who Joined Within the Last 1000 Days
SELECT ENAME,DOJOIN FROM EMP  WHERE DOJOIN>(current_date()-interval 600 DAY);
/*
Ashokumar Maheswaran	2023-12-17
Charles Joseph	2024-07-16
Ashok Narayanan	2024-03-13
Annie David	2024-02-21
*/


#List Employees Who Joined in the Last 3 Years
SELECT ENAME,DOJOIN FROM EMP  WHERE (DOJOIN)>(CURRENT_DATE()-interval 3 YEAR);
/*
Naveen Chidambaram	2023-01-19
Shabeer Salman Khan	2023-02-26
Ashokumar Maheswaran	2023-12-17
Charles Joseph	2024-07-16
Ashok Narayanan	2024-03-13
Annie David	2024-02-21
Kavya Rajkumar	2023-05-14
*/

#Display Employees Sorted by Highest Salary
SELECT ENAME,SALARY FROM EMP ORDER BY SALARY DESC;
/*
Gayathri Srinivasan	60000.00
Ashok Narayanan	45000.00
Sureshkumar Venkatesan	38000.00
Charles Joseph	38000.00
Abinaya Krishnamoorthy	15000.00
Naveen Chidambaram	15000.00
Annie David	15000.00
Rajaram Sundaram	12000.00
Anu Rajagopal	12000.00
Ashokumar Maheswaran	12000.00
Kavya Rajkumar	12000.00
Shabeer Salman Khan	10000.00
*/

#Find Employees in Chennai or Sales Department
SELECT ENAME FROM EMP WHERE LOCATION ='CHENNAI' OR DEPT ='SALES';
/*
Rajaram Sundaram
Abinaya Krishnamoorthy
Sureshkumar Venkatesan
Charles Joseph
Kavya Rajkumar
*/

#List Male Employees in the IT Department
SELECT ENAME FROM EMP WHERE GENDER='M' AND DEPT ='IT';
/*
Ashokumar Maheswaran
Ashok Narayanan
*/

#Show Employees Earning Between ₹15,000 and ₹20,000
SELECT ENAME,SALARY FROM EMP WHERE SALARY BETWEEN 15000 AND 20000;
/*
Abinaya Krishnamoorthy	15000.00
Naveen Chidambaram	15000.00
Annie David	15000.00
*/

#Find the Highest Paid Employee
SELECT ENAME,SALARY FROM EMP ORDER BY SALARY DESC LIMIT 1 ;
/*
Gayathri Srinivasan	60000.00
*/
SELECT * FROM EMP;


