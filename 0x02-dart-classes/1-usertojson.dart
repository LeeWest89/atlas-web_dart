// creating a class with method that returns json object

class User {
  String name;
  int age;
  double height;

  User({
        required this.name,
        required this.age,
        required this.height
      });

  Map toJson() {
    return ({
      'name': name,
      'age': age,
      'height': height,
    });
  }
}