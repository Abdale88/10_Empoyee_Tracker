DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;
USE employee_tracker;

-- department:
CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT,
    -- to hold department name
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
-- role:
CREATE TABLE role(
    id INT NOT NULL AUTO_INCREMENT,
    -- to hold role title
    title VARCHAR(30) NOT NULL,
    -- to hold role salary
    salary DECIMAL(10,2),
    -- to hold reference to department role belongs to
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);
-- employee:
CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT,
    -- to hold employee first name
    first_name VARCHAR(30) NOT NULL,
    -- to hold employee last name
    last_name VARCHAR(30) NOT NULL,
    -- to hold reference to role employee has
    role_id INT NOT NULL,
    -- to hold reference to another employee that manages the employee being Created.
    manager_id INT,
    PRIMARY KEY (id)
);

INSERT INTO department(name) VALUES('Sales Department');
INSERT INTO department(name) VALUES('HR Department');
INSERT INTO department(name) VALUES('Engineering Department');

INSERT INTO role(title, salary, department_id) VALUES('Software Engineer', 12000, 2);
INSERT INTO role(title, salary, department_id) VALUES('Product analyst ', 11000, 2);
INSERT INTO role(title, salary, department_id) VALUES('HR Employee', 10000, 2);

INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES('Daahir', 'Hassan', 2, 4);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES('Faarax', 'Axmed', 2, 4);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES('Maxamed', 'Jaamac', 2, 4);
