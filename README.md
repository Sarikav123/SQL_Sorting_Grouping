# SQL_Sorting_Grouping
Exploring SQL's sorting and grouping capabilities through practical examples

This project explores fundamental SQL concepts like table creation, data insertion, and various data manipulation techniques. It focuses on practical examples of sorting, grouping, and aggregating data using SQL queries. The project includes exercises on string manipulation, data filtering, and statistical analysis.


1. Create two tables
   
   Country and Persons
   Country:
     create table Country 
      (
	      Id INT primary key,
   
        Country_name varchar(50),

        Population INT,
   
        Area varchar(50)   
      );
   
   Persons:
   
      create table Persons
         (
	      Id INT primary key,
     
        Fname varchar(50),
      
        Lname  varchar(50),
   
        Population INT,
   
        Rating  FLOAT CHECK (Rating between 0.0 and 5.0),
   
        Country_Id INT,
   
        Country_name varchar(50),
   
        foreign key (country_Id) references Country(Id)
      );
   
2. INSERT Records
   
    Country:
   
    INSERT INTO Country (Id, Country_name, Population, Area) VALUES
   
        (1, 'USA', 331002651, 'Texas'),
   
        (2, 'India', 1380004385, 'New Delhi'),
   
   	(3, 'China', 1439323776, 'Beijing'),
   
	(4, 'Canada', 37742154, 'Ottawa'),
   
	(5, 'Australia', 25499884, 'Canberra'),

	(6, 'UK', 67886011, 'London'),

	(7, 'Germany', 83783942, 'Berlin'),
   
	(8, 'France', 65273511, 'Paris'),
   
	(9, 'Japan', 126476461, 'Tokyo'),
   
	(10, 'Brazil', 212559417, 'Brasília');
   
   Persons
   
    INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
   
			(1, 'John', 'Doe', 331002651 , 4.5, 1, 'USA'),
     
			(2, 'Alice', 'Smith', 1380004385, 4.8, 2, 'India'),
   
			(3, 'Bob', 'Brown', 1439323776, 3.9, 3, 'China'),
     
			(4, 'Emma', 'Jones', 37742154, 4.7, 4, 'Canada'),   
   
			(5, 'Liam', 'Wilson', 25499884, 4.2, 5, 'Australia'),
   
			(6, 'Sophia', 'Taylor', 67886011, 3.8, 6, 'UK'),
   
			(7, 'Mia', 'Anderson', 83783942, 4.0, 7, 'Germany'),
   
			(8, 'Oliver', 'Thomas', 65273511, 4.6, 8, 'France'),
   
			(9, 'Ava', 'White', 126476461, 4.1, 9, 'Japan'),
   
			(10, 'James', 'Martin', 212559417, 3.5, 10, 'Brazil'),
   
			(11, 'Jacob', 'Clark', 331002651, 4.3, 1, 'USA'),
   
			(12, 'Isabella', 'Lopez', 1380004385, 4.4, 2, 'India'),
   
			(13, 'William', 'King', 1439323776, 3.7, 3, 'China'),
   
			(14, 'Charlotte', 'Lewis', 37742154, 4.6, 4, 'Canada'),
   
			(15, 'Amelia', 'Walker', 25499884, 4.2, 5, 'Australia'),
   
			(16, 'Ethan', 'Harris', NULL, 3.9, NULL, NULL),
   
			(17, 'Benjamin', 'Young', NULL, 4.8, NULL, NULL),
   
			(18, 'Harper', 'Allen', 83783942, 4.1, 7, 'Germany'),
   
			(19, 'Lucas', 'Scott', 65273511, 4.7, 8, 'France'),
   
			(20, 'Mason', 'Adams', 212559417, 3.6, 10, 'Brazil');  

3. SQL query to print the first three characters of Country_name from the Country table.


    select substring(country_name,1,3) Country from country;
   
4. SQL query to concatenate first name and last name from Persons table.


    select concat(Fname,' ',Lname) 'Name' from persons;

   
5. SQL query to count the number of unique country names from Persons table.
   
    select count(distinct country_name) Count_Countries from persons;
   
6. query to print the maximum population from the Country table;

    select max(population) max_population  from country;

7.  Write a query to print the minimum population from Persons table;

    select min(population) min_population from persons;

8. Insert 2 new rows to the Persons table making the Lname NULL.

    INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
			(21, 'Arathi', '', 331002651 , 4.5, 1, 'USA'),       
			(22, 'Meena', '', 1380004385, 4.8, 2, 'India');

9.   query to count Lname from Persons table.

      select count(lname)  from persons;

10. a query to find the number of rows in the Persons table.

      select count(*) from Persons;
    
11. SQL query to show the population of the Country table for the first 3 rows.

      select Population from country LIMIT 3;

12. Write a query to print 3 random rows of countries.

      select * from Country order by rand() LIMIT 3;

13. List all persons ordered by their rating in descending order.

      select * from Persons order by rating desc;

14. Find the total population for each country in the Persons table.

      select Country_name,sum(population) from Persons group by Country_name;

15. Find countries in the Persons table with a total population greater than 50,000.

      select country_name from Persons group by country_name having sum(population)>50000;

16. List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.

      select count(Id) as 'Total Persons', avg(rating) as 'Avg Rating' from persons group by country_name having count(Id)>2 order by 'Avg Rating' asc;
        
