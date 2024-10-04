// first function outer() take two argument name, id and print the output of the inside function inner()
void outer(String name, String id) {
  String inner() {
    List<String> names = name.split(' ');
    String initial = "${names[1][0]}.${names[0]}";
    return ('Hello Agent $initial your id is $id');
  }
  print(inner());
}
