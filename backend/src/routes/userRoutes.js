const express = require("express");
const router = express.Router();
const UserController = require("../controllers/userController");

// Define routes
router.post("/register", UserController.registerUser);
router.post("/login", UserController.loginUser);
router.get("/profile/:userId", UserController.getProfile);

module.exports = router;
