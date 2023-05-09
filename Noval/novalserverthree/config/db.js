const mysql = require("mysql")
require("dotenv").config()

module.exports = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  dateStrings: true,
  queueLimit : 0, // unlimited queueing
  connectionLimit : 0 // unlimited connections 
})
