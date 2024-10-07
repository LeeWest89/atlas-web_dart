// returns a future string representing the user’s ID

import '1-util.dart';

Future<String> getUserId() async {
  String data = await fetchUserData();
  return (data.split('"')[3]);
}