// Create a new group
const newGroup = new Group({
  name: "Sample Group",
  description: "This is a sample group.",
  members: [], // Add members as needed
});

// Save the group document
newGroup
  .save()
  .then((group) => {
    console.log("Group saved successfully:", group);
  })
  .catch((error) => {
    console.error("Error:", error);
  });
