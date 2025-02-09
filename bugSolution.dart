```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = json.decode(response.body);
        print(jsonResponse['someKey']);
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Log the error for debugging
  }
}
```