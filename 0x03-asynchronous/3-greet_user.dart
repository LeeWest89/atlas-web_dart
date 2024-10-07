// Function to greet user
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    return ('Hello ${data.split('"')[7]}');
  } catch (error) {
    return ('error caught: $error');
  }
}

Future<String> loginUser() async {
  try {
    bool credentials = await checkCredentials();
    if (credentials) {
      print('There is a user: true');
      return (await greetUser());
    } else {
      print('There is a user: false');
      return ('Wrong credentials');
    }
  } catch (error) {
    return ('error caught: $error');
  }
}