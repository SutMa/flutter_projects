import 'package:flutter/material.dart';
import '../screens/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function()? onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            'Calculate',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        color: bottomContianerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: buttomContianerHeight,
        padding: EdgeInsets.only(bottom: 15),
      ),
    );
  }
}
