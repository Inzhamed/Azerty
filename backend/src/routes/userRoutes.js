const express = require("express");
const router = express.Router();
const UserController = require("../controllers/userController");

// Define routes
router.post("/register", UserController.registerUser);
router.get("/", UserController.getAllUsers);

module.exports = router;