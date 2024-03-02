// Create a new community activity
const newCommunityActivity = new CommunityActivity({
  userId: newUser._id, // Associate the user with the activity
  comment: "This is a sample community activity.",
  date: new Date(),
  articles: [], // Add articles as needed
  groups: [group._id], // Associate the group with the activity
});

// Save the community activity document
newCommunityActivity
  .save()
  .then((communityActivity) => {
    console.log("Community activity saved successfully:", communityActivity);
  })
  .catch((error) => {
    console.error("Error:", error);
  });
