class User {
  final int id;
  final String name;

  User({required this.id, required this.name});
}

void main() {
  var user1 = User(id: 1, name: 'Alice');
  var user2 = User(id: 1, name: 'Alice');

  print(user1 == user2); // false - even though they have the same data
  // the have the same data but they don't have the same hash code

  print('user1 : name : ${user1.name}, hash code : ${user1.hashCode}');
  print('user2 : name : ${user2.name}, hash code : ${user2.hashCode}');
}
