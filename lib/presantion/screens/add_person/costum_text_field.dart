// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CuctomTextField extends StatelessWidget {
  const CuctomTextField(
      {Key? key,
      required this.labeltext,
      required this.icon,
      required this.controller})
      : super(key: key);
  final String labeltext;
  final Icon icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          labelText: labeltext,
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          hoverColor: Colors.red,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
