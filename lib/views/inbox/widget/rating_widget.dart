import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int note;
  const RatingWidget({super.key, this.note = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: note > 0 ? Color(0xffEAD04B) : Color(0xffD9D9D9),
        ),
        SizedBox(
          width: 5.0,
        ),
        Icon(Icons.star, color: note > 1 ? Color(0xffEAD04B) : Color(0xffD9D9D9)),
        SizedBox(
          width: 5.0,
        ),
        Icon(Icons.star, color: note > 2 ? Color(0xffEAD04B) : Color(0xffD9D9D9)),
        SizedBox(
          width: 5.0,
        ),
        Icon(Icons.star, color: note > 3 ? Color(0xffEAD04B) : Color(0xffD9D9D9)),
        SizedBox(
          width: 5.0,
        ),
        Icon(Icons.star, color: note > 4 ? Color(0xffEAD04B) : Color(0xffD9D9D9)),
      ],
    );
  }
}
