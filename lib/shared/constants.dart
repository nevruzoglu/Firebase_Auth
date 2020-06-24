import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
  ),
  filled: true,
  fillColor: Colors.white,
  // hintText: 'Enter email',
);
