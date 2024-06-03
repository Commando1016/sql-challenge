BEGIN;

CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no character varying(20) PRIMARY KEY,
    dept_name character varying(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no integer PRIMARY KEY,
    emp_title character varying(20),
    birth_date date,
    first_name character varying(30),
    last_name character varying(30),
    sex character varying(1),
    hire_date date
);

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying(20) PRIMARY KEY,
    title character varying(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no integer PRIMARY KEY,
    salary integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no integer,
    dept_no character varying(20),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES public.employees (emp_no) ON UPDATE NO ACTION ON DELETE NO ACTION,
    FOREIGN KEY (dept_no) REFERENCES public.departments (dept_no) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying(20),
    emp_no integer,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES public.departments (dept_no) ON UPDATE NO ACTION ON DELETE NO ACTION,
    FOREIGN KEY (emp_no) REFERENCES public.employees (emp_no) ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE public.employees
    ADD CONSTRAINT emp_title FOREIGN KEY (emp_title) REFERENCES public.titles (title_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE public.salaries
    ADD CONSTRAINT emp_salaries FOREIGN KEY (emp_no) REFERENCES public.employees (emp_no) ON UPDATE NO ACTION ON DELETE NO ACTION;

END;

