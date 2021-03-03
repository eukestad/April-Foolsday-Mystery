drop table if exists departments;
drop table if exists titles cascade;
drop table if exists employees cascade;
drop table if exists deptEmployees cascade;
drop table if exists deptManagers cascade;
drop table if exists salaries cascade;

create table departments (
	dept_no varchar(4) primary key, 
	dept_name varchar(50) not null,
	created_date timestamp not null default now(),
	created_by varchar(10) not null default current_user
);

create table titles (
	title_id varchar(5) primary key, 
	title varchar(50) not null,
	created_date timestamp not null default now(),
	created_by varchar(10) not null default current_user	
);

create table employees (
	emp_no int primary key,
	emp_title_id varchar(5) not null references titles(title_id), 
	birth_date date not null, 
	first_name varchar(50) not null,
	last_name varchar(50) not null, 
	sex varchar(1) not null,
	hire_date date not null,
	created_date timestamp not null default now(),
	created_by varchar(10) not null default current_user	
);

create table deptEmployees (
	emp_no int not null references employees(emp_no),
	dept_no varchar(4) not null references departments(dept_no),
	created_date timestamp not null default now(),
	created_by varchar(10) not null default current_user,
	primary key (emp_no, dept_no)
);

create table deptManagers (
	dept_no varchar(4) not null references departments(dept_no),
	emp_no int not null references employees(emp_no),	
	created_date timestamp not null default now(),
	created_by varchar(10) not null default current_user,
	primary key (dept_no, emp_no)	
);

create table salaries (
	emp_no int not null references employees(emp_no),
	salary int not null,
	created_date timestamp not null default now(),
	created_by varchar(10) not null default current_user,
	primary key (emp_no, salary)
);