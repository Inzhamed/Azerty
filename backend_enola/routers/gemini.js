// router.js
const express = require("express");
const router = express.Router();
const { getAnswer } = require("./controller");

router.post("/getAnswer", getAnswer);

module.exports = router;
