import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    this.controller,
    this.hintText,
    this.width,
    this.height
  });

  final TextEditingController controller;
  final String hintText;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color(0xfff5f3f4)
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            fillColor: const Color(0xfff5f3f4),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            hintStyle: TextStyle(
                fontFamily: 'Cabin',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: const Color(0xff161A1D).withOpacity(.7))),
      ),
    );
  }
}
