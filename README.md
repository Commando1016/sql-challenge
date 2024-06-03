# Employee Management System

## Overview
This Employee Management System is designed to store and manage information about employees, departments, salaries, titles, and department managers.

## Installation
1. Clone this repository to your local machine.
2. Ensure you have PostgreSQL installed and running on your system.
3. Execute the SQL script provided (`tables.sql`) to create the necessary tables and relationships in your PostgreSQL database.

## Importing Data
1. Ensure you have CSV files containing data for `departments.csv`, `titles.csv`, `employees.csv`, `dept_emp.csv`, `dept_manager.csv`, and `salaries.csv`.
2. Use a PostgreSQL client tool or command-line interface to import data from CSV files into the corresponding tables.
3. Run the following commands in the specified order to import data:
   - Import data from the `departments.csv` file into the departments table.
   - Import data from the `titles.csv` file into the titles table.
   - Import data from the `employees.csv` file into the employees table.
   - Import data from the `dept_emp.csv` file into the dept_emp table.
   - Import data from the `dept_manager.csv` file into the dept_manager table.
   - Import data from the `salaries.csv` file into the salaries table.

## Usage
Once the database schema is set up and data is imported, you can run queries to retrieve information about employees and departments. Here are some sample queries you can run:

### Retrieve Employee Information
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Running Queries
1. Ensure you have imported data from CSV files into the database tables.
2. Open the `queries.sql` file and run the desired queries in your PostgreSQL environment.
