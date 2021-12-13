### Basic Queries###
1) SELECT name FROM students;
2)SELECT * FROM students  WHERE age>30;
3)SELECT name FROM students WHERE Gender = "F" and Age=30;
4)SELECT Points FROM students WHERE name="Alex";
5)INSERT INTO students(Name, Age, Gender, Points) VALUES ('ahmad', '23', 'M','100');
6)UPDATE students SET Points=400 WHERE name="Basma";
7)UPDATE students SET Points=100 WHERE name="Alex";

### Creating Table###
1) CREATE TABLE graduates  (
   ID Integer Not Null Primary key AUTOINCREMENT,
   Name Text Not Null Unique,
   Age Integer,
   Gender Text,
   Points Integer,
   Graduation date DDMMYYYY
   
);

2) INSERT INTO graduates (Name, Age, Gender, Points)
   SELECT Name, Age, Gender, Points
   FROM students
   WHERE name= "Layal";

3) UPDATE graduates 
   SET Graduation = date('2018-09-08')
   WHERE Name= "Layal";

4) DELETE FROM students WHERE name="Layal";


###Joins###
1) SELECT employees.Name, employees.Company, companies.Date FROM companies INNER JOIN employees;

2) SELECT employees.Name FROM employees INNER JOIN companies ON employees.Company=companies.Name WHERE companies.Date<2000

3) SELECT companies.Name FROM companies,employees WHERE companies.Name = employees.Company and employees.Role = "Graphic Designer"; 


###Count & Filter###
1) SELECT  Name,Points FROM students WHERE Points = (SELECT max(Points) FROM students);

2) SELECT avg(Points) FROM students;

3) SELECT count() FROM students WHERE Points = 500;

4) SELECT Name FROM students WHERE Name LIKE '%s%';

5) SELECT * FROM students ORDER BY Points DESC;

