-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mXoFDU
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "dept_no" varchar(5)   NOT NULL,
    "dept_name" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(35)   NOT NULL,
    "last_name" varchar(35)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" bigint   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titels" (
    "title_id" varchar(10)   NOT NULL,
    "title" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Titels" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" BIGINT   NOT NULL,
    "dept_no" varchar(5)   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(5)   NOT NULL,
    "emp_no" int   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titels" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

