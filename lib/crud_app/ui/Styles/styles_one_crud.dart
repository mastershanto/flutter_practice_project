import 'package:flutter/material.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 91, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorBarkBlue = Color.fromRGBO(44, 62, 80, 1);

InputDecoration textFromFieldStyleOneForCrudApp({label, hintText}) {
  return InputDecoration(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: colorGreen, width: 1),
      ),
      fillColor: colorWhite,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
      label: label == null ? const Text("Enter Here") : Text(label),
      hintText: hintText ?? "Enter your value here");
}
