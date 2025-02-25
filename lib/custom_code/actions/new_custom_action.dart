// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction() async {
  // Create an action that takes the ZenQuote API call and uses it in the text field quote using the q variable from the call

  var response = await http.get(Uri.parse('https://zenquotes.io/api/random'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    String quote = data[0]['q'];

    // Update the text field with the quote
    setState(() {
      quote = quote;
    });
  } else {
    print('Failed to load quote');
  }
}
