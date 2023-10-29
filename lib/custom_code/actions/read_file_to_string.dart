// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

Future<String> readFileToString(String filePath) async {
  try {
    File file = File(filePath);
    String contents = await file.readAsString();
    return contents;
  } catch (e) {
    print("Error reading file: $e");
    return "null";
  }
}

void main() async {
  String filePath = 'example.txt'; // Replace with the path to your file
  String fileContents = await readFileToString(filePath);

  if (fileContents != "null") {
    print("File contents:");
    print(fileContents);
  }
}
