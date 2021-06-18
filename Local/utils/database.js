const mysql = require('mysql2');

// create database connection
// const pool = mysql.createPool({ 
//     host:'localhost', 
//     user: 'root', 
//     password: 'Jjbdick17',
//     database: 'musicchart'
//   })

  const pool = mysql.createPool({ 
    host:'localhost', 
    user: 'root', 
    password: 'andysam789',
    database: 'musicchart'
  })



module.exports = pool.promise();