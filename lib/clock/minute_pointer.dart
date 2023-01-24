import 'package:flutter/material.dart';
import 'dart:math';

class MinutePointer extends StatelessWidget {
  const MinutePointer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    final minute = DateTime.now().minute.toDouble();
    final angle = (-pi * (minute / -60)) * 2;

    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: Offset(0, 35),
          child: Center(
            child: Container(
              height: height * 0.11,
              width: 4.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
