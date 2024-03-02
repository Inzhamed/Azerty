// controller.js
const { runChat } = require("./geminiService");

exports.getAnswer = async (req, res) => {
  try {
    const userInput = req.body.userInput;
    const response = await runChat(userInput); // Assuming runChat is a function that interacts with Gemini
    res.json({ response });
  } catch (error) {
    console.error("Error in getting answer:", error);
    res.status(500).json({ message: "Internal Server Error" });
  }
};
