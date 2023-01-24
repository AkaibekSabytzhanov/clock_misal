import 'package:flutter/material.dart';
import 'dart:math';

class SecondPointer extends StatelessWidget {
  const SecondPointer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    final second = DateTime.now().second.toDouble();
    final angle = (-pi * (second / -60)) * 2;

    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: Offset(0, 55),
          child: Center(
            child: Container(
              height: height * 0.15,
              width: 4.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.orange.withOpacity(0.9)),
            ),
          ),
        ),
      ),
    );
  }
}
