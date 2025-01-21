create database Employees;
USE employees;
create table Country 
(
	Id INT primary key,
    Country_name varchar(50),
    Population INT,
    Area varchar(50)
    );	
    select * from Country;
    USE employees;
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
select * from Persons;




use employees;
select substring(country_name,1,3) Country from country;
select concat(Fname,' ',Lname) 'Name' from persons;
select count(distinct country_name) Count_Countries from persons;
select max(population) max_population  from country;
select min(population) min_population from persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
			(21, 'Arathi', NULL, 331002651 , 4.5, 1, 'USA'),       
			(22, 'Meena', NULL , 1380004385, 4.8, 2, 'India');
select count(lname)  from persons;
select count(*) from Persons;
select Population from country LIMIT 3;
select * from Country order by rand() LIMIT 3;
select * from Persons order by rating desc;
select Country_name,sum(population) from Persons group by Country_name;
select country_name from Persons group by country_name having sum(population)>50000;
select  count(Id) as 'Total Persons', Country_name ,avg(rating) as 'Avg Rating' from persons group by country_name having 
count(Id)>2 order by 'Avg Rating' asc;