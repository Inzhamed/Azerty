const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;
const connectDB = require("./src/config/db");
const userRoutes = require("./src/routes/userRoutes");

app.use(express.json());
connectDB();
app.use("/api/users", userRoutes);

// Start the Express server
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
app.get("/", (req, res) => res.send("Hello World!"));
