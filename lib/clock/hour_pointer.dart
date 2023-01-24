import 'package:flutter/material.dart';
import 'dart:math';

class HourPointer extends StatelessWidget {
  const HourPointer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final hour = DateTime.now().hour.toDouble();
    final angle = (-pi * (hour / -12)) * 2;

    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: Offset(0, 30),
          child: Center(
            child: Container(
              height: height * 0.06,
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
