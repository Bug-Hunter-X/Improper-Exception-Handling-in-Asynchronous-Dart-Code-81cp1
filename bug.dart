```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON response
      final jsonResponse = json.decode(response.body);
      // Access data from jsonResponse
      print(jsonResponse['someKey']);
    } else {
      // Handle error appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors and JSON decoding errors
    print('Error: $e');
    // Consider rethrowing the exception or handling it differently based on your app's needs
    rethrow;
  }
}
```