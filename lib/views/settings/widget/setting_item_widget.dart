import 'package:flutter/material.dart';

class SettingItemWidget extends StatelessWidget {
  const SettingItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Transform.rotate(
                angle: -45,
                child: Icon(Icons.key_rounded),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Change Password",
                style: TextStyle(fontSize: 10.0),
              ),
              Icon(Icons.chevron_right)
            ],
          ),
        ],
      ),
    );
  }
}
