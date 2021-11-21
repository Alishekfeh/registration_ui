import 'package:flutter/material.dart';

class WidgetFormField extends StatelessWidget {
  const WidgetFormField({
    Key key,
    @required this.controller,this.title1,this.title2,
  }) ;

  final TextEditingController controller;
  final String title1,title2;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: title1,
        labelText: title2,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        hintStyle: TextStyle(color: Color(0xFF686868)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusColor: Colors.white,
      ),
    );
  }
}
