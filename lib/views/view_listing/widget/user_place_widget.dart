import 'package:flutter/material.dart';

class UserPlace extends StatelessWidget {
  const UserPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Center(
        child: Image.asset(
          "assets/images/4.png",
          height: 40,
        ),
      ),
    );
  }
}
