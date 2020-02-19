CREATE TABLE employees (
    emp_no VARCHAR PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    hire_date DATE NOT NULL
);
	
	
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);


CREATE TABLE titles (
    emp_no VARCHAR,
    title VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);


CREATE TABLE salaries (
    emp_no VARCHAR,
    salary MONEY NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);


CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no VARCHAR,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	
	FOREIGN KEY (dept_no)REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);
	
	
CREATE TABLE dept_emp (
    emp_no VARCHAR,
    dept_no VARCHAR,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


