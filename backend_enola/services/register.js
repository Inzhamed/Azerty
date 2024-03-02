var usermodel = require("../model/user");

class users {
  static async registration(username, email, password) {
    try {
      const createserver = new usermodel({ username, email, password });
      return await createserver.save();
    } catch (err) {
      throw err;
    }
  }
}

module.exports = users;
