class User {
  final String username;
  final int id;
  final String? token;
  final int score;

  const User(
      {required this.id,
      required this.score,
      required this.username,
      this.token});
}
