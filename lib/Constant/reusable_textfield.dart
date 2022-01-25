import 'package:anun_partner/Constant/custom_color.dart';
import 'package:flutter/material.dart';

const UsernameTextFieldDecoration = InputDecoration(
  suffixIcon: null,
  prefixIcon: Icon(
    Icons.people_alt_outlined,
    color: green,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFFAC245), width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFFAC245), width: 2.0),
  ),
  label: Text(
    'Username',
    style: TextStyle(
      color: Colors.red,
      fontFamily: 'Allerta',
    ),
  ),
);

const PasswordTextFieldDecoration = InputDecoration(
  suffixIcon: Icon(
    Icons.visibility_off_outlined,
    color: Color(0xFFFAC245),
  ),
  prefixIcon: Icon(
    Icons.password_outlined,
    color: Color(0xFFFAC245),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFFAC245), width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFFAC245), width: 2.0),
  ),
  label: Text(
    'Password',
    style: TextStyle(
      color: Colors.red,
      fontFamily: 'Allerta',
    ),
  ),
);