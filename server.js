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



connection.connect((err, res) => {
    if(err) throw err;s
})