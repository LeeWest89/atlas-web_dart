import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  const String url = 'https://rickandmortyapi.com/api/character';
  try {
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      final Map data = json.decode(res.body);
      final List characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    }
  } catch (error) {
    print('error caught: $error');
  }
}