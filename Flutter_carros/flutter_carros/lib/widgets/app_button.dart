import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  String text;
  Function onPressed;

  AppButton(this.text, {required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        onPressed: () => onPressed,
      ),
    );
  }
}
