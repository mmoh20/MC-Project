import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool passwordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: passwordType,
    enableSuggestions: !passwordType,
    autocorrect: !passwordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: passwordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}