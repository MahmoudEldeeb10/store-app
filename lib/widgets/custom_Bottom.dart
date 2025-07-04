import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String NameOfBottom;
  final VoidCallback? ontap;
  CustomBottom({required this.NameOfBottom, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        
        height: 40,
        width: double.infinity,
        child: Center(
          child: Text(
            NameOfBottom,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(255, 4, 47, 83)),
      ),
    );
  }
}
