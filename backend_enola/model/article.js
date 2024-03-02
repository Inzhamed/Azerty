const mongoose = require("mongoose");

// Define your mongoose schemas and models here...

// Assuming you have a User model defined

// Query the user from the database
User.findOne({ username: "example_user" }) // You can use any criteria to find the user
  .then((user) => {
    if (!user) {
      throw new Error("User not found");
    }

    // Create a new article associated with the user
    const newArticle = new Article({
      title: "Sample Article",
      content: "This is a sample article content.",
      author: user._id, // Associate the user with the article
    });

    // Save the article document
    return newArticle.save();
  })
  .then((article) => {
    console.log("Article saved successfully:", article);
  })
  .catch((error) => {
    console.error("Error:", error);
  });
