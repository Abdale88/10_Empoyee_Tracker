USE employee_tracker;

INSERT INTO department(name) VALUES('Sales');
INSERT INTO department(name) VALUES('Finance');
INSERT INTO department(name) VALUES('Engineering');

INSERT INTO role(title, salary, department_id) VALUES('Software Engineer', 12000, 2);
INSERT INTO role(title, salary, department_id) VALUES('Acount Manager ', 160000, 2);
INSERT INTO role(title, salary, department_id) VALUES('Lawyer', 10000, 2);

INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES('Daahir', 'Hassan', 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES('WARFAA', 'Axmed', 2, NULL);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES('Dj', 'Jaamac', 2, NULL);
