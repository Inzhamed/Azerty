//hada api y3yte controller
const express = require("express");
const router = express.Router();
var registration = require("../services/register");

const userController = require("../controllers/userController");

// Define routes
router.get("/users/:id", userController.getUserById);
router.post("/users", userController.createUser);
// Add more routes as needed

module.exports = router;
