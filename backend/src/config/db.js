const mongoose = require("mongoose");

module.exports = async function connectDB() {
  try {
    await mongoose.connect(
      "mongodb+srv://hamedinz:Y8ddKovQRWSNVPRN@azerty.ogwwjej.mongodb.net/"
    );
    console.log("Connected to MongoDB");
  } catch (err) {
    console.error("Error connecting to MongoDB:", err.message);
    process.exit(1); // Exit the process if unable to connect to MongoDB
  }
};
