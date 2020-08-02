-- Table Schema 

DROP TABLE departments

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments

----------------------------------------------------

DROP TABLE dept_emp

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
	FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
	FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no")
);

SELECT * FROM dept_emp

----------------------------------------------------

DROP TABLE dept_managers

CREATE TABLE "dept_managers" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
	FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
	FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

SELECT * FROM dept_managers

----------------------------------------------------

DROP TABLE employees

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees

----------------------------------------------------

DROP TABLE salaries

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" BIGINT   NOT NULL,
	FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

SELECT * FROM salaries

----------------------------------------------------

DROP TABLE titles

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
	FOREIGN KEY("title_id") REFERENCES "employees" ("emp_title_id")
);

SELECT * FROM titles


