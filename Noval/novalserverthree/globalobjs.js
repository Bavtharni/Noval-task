const con = require("./config/db.js");

const async = require("async");
var moment = require('moment');

require("dotenv").config();


//connecting route to database
con.on('connection', function (connection) {

  connection.on('error', function (err) {
    console.error(new Date(), 'MySQL error', err.code);
  });
 
  
});










const currentDate = () => {
  var dateobj = new Date();
  var create_date_time = new Date(
    new Date(dateobj).getTime() + 60 * 60 * (5.5 + 0) * 1000
  );
  create_date_time = create_date_time
    .toISOString()
    .replace(/T/, " ")
    .replace(/\..+/, "");
  return create_date_time;
};


//uploading QRCode code buffer to server

//upload pdf file


//uploading file to aws server











const globalobj={};
globalobj.con = con;
globalobj.async = async;
globalobj.moment = moment;

globalobj.currentDate = currentDate();


// console.log(globalobj);

module.exports={
  globalobj,
  currentDate,
}
