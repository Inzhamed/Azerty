var express = require("express");
var app = express();
var path = require("path");
app.set("views", path.join(__dirname, "views"));
var model = require("./model/user.js");
var userroute = require("./routers/reg.js");
var airoute = require("./routers/gemini.js");
var connect = require("./database/connecter.js");
//var bodyparser = require("body-parser");

//app.use("/", userroute);
//app.use(bodyparser.json());
app.set("view engine", "ejs");
//static file

app.listen(3000);
console.log("we are listening");

app.get("/", function (req, res) {
  res.send("hello");
});
