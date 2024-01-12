import 'package:flutter/material.dart';

InputDecoration inputStyle(title, prefixIcon, suffixIcon) {
  return InputDecoration(
    labelText: title,
    labelStyle: const TextStyle(
      color: Colors.grey,
    ),
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    focusColor: Colors.grey,
    fillColor: Colors.grey.withOpacity(0.5),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.green,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.green,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.redAccent,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.redAccent,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
  );
}
