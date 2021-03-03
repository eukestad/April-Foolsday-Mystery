# April Foolsday Mystery
This repo contains the output of a fictional research project assigned to an employee of a Pewlett Hackard.

Pewlett Hackard wants to review data on employees from the 1980s and 1990s, but all that remains of the database of employees from that period are six CSV files. 

To complete the analysis, the employee needs to create a Postgres database, import the CSV files, and write a series of queries. 

## Files in the Repository
The files in the repo are:

* Data Analysis - Jupyter Notebook for the Bonus Analysis

* ERD.png - image of the entity relationship diagram (ERD) created in PGAdmin

* queries.sql - script of queries to investigate the data

* schema.sql - script to create the database tables

## Output
The queries in the queries.sql file return the following ouputs: 

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Features
The repo contains a Jupyter Notebook that uses SQLAlchemy to access data in the database. 

The queries.sql file contains a script to create a function called from the Jupyter Notebook. The function returns Average Salary for each Job Title.

Created Date and Created By fields are included in the table schemas for reference to ensure that data is loaded correctly. These fields will automatically populate when data is imported. 

<span style="color:red">**When importing data into the tables created with the schema.sql script, remove the columns Created Date and Created By from the columns dialog because the CSV files will not have data for these columns.**</span>

![image](https://user-images.githubusercontent.com/69314608/109756114-e74b5f80-7bac-11eb-9a5a-636eafeb13bf.png)

## Status
_finished_

## Inspiration
This project was assigned as part of the UTSA Data Analytics Bootcamp.
