const express = require("express");
const app = express();
const path = require("path");
const mongoose = require("mongoose");

// MongoDB connection URI
const mongoURI = "mongodb://localhost:27017/hackiwha";

async function connectToMongoDB() {
  try {
    // Connect to MongoDB
    await mongoose.connect(mongoURI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });

    // Log success message
    console.log("MongoDB connected successfully!");

    // Check if the connection is successful and the database is accessible
    console.log("Checking if database 'hackiwha' exists...");

    // List all available databases
    const adminDB = mongoose.connection.db.admin();
    const databaseList = await adminDB.listDatabases();
    const databases = databaseList.databases.map((db) => db.name);

    // Check if the 'hackiwha' database exists
    if (databases.includes("hackiwha")) {
      console.log("Database 'hackiwha' already exists.");
    } else {
      console.log(
        "Database 'hackiwha' does not exist. It will be created implicitly when data is inserted."
      );
    }
  } catch (error) {
    console.error("Failed to connect to MongoDB:", error);
  }
}

connectToMongoDB();

// Your Express routes and middleware can go here
