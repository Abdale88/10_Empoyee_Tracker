const inquirer = require('inquirer');
const mysql = require('mysql');
const cTable = require('console.table');
const asciiart = require('asciiart-logo');


const connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: 'password',
    database: 'employee_tracker'
})

const startQuestions = () => {
    inquirer
        .prompt({
            name: 'action',
            type: 'rawlist',
            message: 'What would you like to do?',
            choices: [
                'Add Employee',
                'Add Role',
                'Add Department',
                'View All Employees',
                'View All Roles',
                'View All Departments',
                'Update Employee Role',
                'Quit',
            ],
        })
        .then((answer) => {
            // console.log('here  answer ', answer);
            // console.log('here  answer.action ', answer.action);
            switch (answer.action) {
                case 'Add Employee':
                    addEmployee();
                    break;
                case 'Add Role':
                    addRole();
                    break;

                case 'Add Department':
                    addDepartment();
                    break;

                case 'View All Employees':
                    viewEmployees();
                    break;

                case 'View All Roles':
                    viewRoles();
                    break;

                case 'View All Departments':
                     viewAllDepartments();
                    break;

                case 'Update Employee Role':
                    updateEmployeeRole();
                    break;

                    case 'Quit':
                     console.log('Goodbye!!');
                     break;

                default:
                    console.log(`Invalid action: ${answer.action}`);
                    break;
            }
        });
}

connection.connect((err, res) => {
    if (err) throw err;
    startQuestions();
})
