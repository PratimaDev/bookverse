class UserProfile {
  final String name;
  final String email;
  final String photoUrl;
  final List<String> bookRecords;
  final List<String> purchases;
  final List<String> messages;
  final List<String> activity;

  UserProfile({
    required this.name,
    required this.email,
    required this.photoUrl,
    required this.bookRecords,
    required this.purchases,
    required this.messages,
    required this.activity,
  });
}