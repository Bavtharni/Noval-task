
const express = require("express");
const app = express();
var bodyParser = require("body-parser");
let { globalobj, currentDate }= require('./globalobjs.js');
var session = require("express-session");
var MySQLStore = require("express-mysql-session")(session);
var sessionStore = new MySQLStore({} /* session store options */, globalobj?.con);
var cors = require('cors');

require("dotenv").config();






app.use(cors())
app.use(express.static(__dirname + "/public"));
app.use('*/images', express.static('public/images'));
app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Headers", "x-access-token");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept",
    "Access-Control-Request-Private-Network: true",
    "Access-Control-Allow-Private-Network: true"
  );
  next();
});
app.use(
  session({
    key: "session_cookie_name",
    secret: "session_cookie_secret",
    store: sessionStore,
    resave: false,
    saveUninitialized: false,
  })
);


app.use(function (req, res, next) {
  req.con = globalobj?.con;
  req.currentDate = currentDate();

  next();
});
app.use(bodyParser.urlencoded({ extended: true, limit: "50mb" }));
app.use(bodyParser.json({ extended: true, limit: "50mb" }));

///Load swagger


//include routers
const authRouter = require("./routes/authRouter");



//routing
app.use("/user", authRouter);



const PORT_NO = process.env.PORT_NO;
//starting server
var serverApp = app.listen(PORT_NO, () => {
  console.log(`Server listening on port ${PORT_NO}`);
});
serverApp.setTimeout(900 * 60 * 1000); //use sets timeout to 2 hours(120)