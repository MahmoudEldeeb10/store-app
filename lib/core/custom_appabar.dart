import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text('New Trend',
          style: TextStyle(color: Colors.black, fontSize: 21)));
}
