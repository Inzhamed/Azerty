const mongoose = require("mongoose");

// Define User Schema
const userSchema = new mongoose.Schema({
  username: String,
  email: String,
  password: String,
});

// Define Habits Schema
const staticChallenges = ["breath air", "go walk", "dance"];

// Define Habits Schema with static challenges
const progressSchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
  day: Number,
  challenges: [
    {
      type: String,
      enum: staticChallenges, // Ensure that the challenge is one of the static challenges
    },
  ],
});
// Define Profile Schema
const profileSchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
  age: Number,
  description: String,
});

// Define Article Schema
const articleSchema = new mongoose.Schema({
  title: String,
  content: String,
  author: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
  publicationDate: { type: Date, default: Date.now },
});

// Define Group Schema
const groupSchema = new mongoose.Schema({
  name: String,
  description: String,
  members: [{ type: mongoose.Schema.Types.ObjectId, ref: "User" }],
});

// Define Community Activity Schema
const communityActivitySchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: "User" },
  comment: String,
  date: { type: Date, default: Date.now },
  articles: [{ type: mongoose.Schema.Types.ObjectId, ref: "Article" }],
  groups: [{ type: mongoose.Schema.Types.ObjectId, ref: "Group" }],
});

// Define Models
const User = mongoose.model("User", userSchema);
const Progress = mongoose.model("Progress", progressSchema);
const Profile = mongoose.model("Profile", profileSchema);
const Article = mongoose.model("Article", articleSchema);
const Group = mongoose.model("Group", groupSchema);
const CommunityActivity = mongoose.model(
  "CommunityActivity",
  communityActivitySchema
);

module.exports = {
    User,
    Progress,
    Profile,
    Article,
    Group,
    CommunityActivity,
}
