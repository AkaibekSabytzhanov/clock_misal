import 'package:clock_misal/clock/hour_pointer.dart';
import 'package:clock_misal/clock/minute_pointer.dart';
import 'package:clock_misal/clock/second_pointer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: StreamBuilder(
              stream: Stream.periodic(const Duration(seconds: 1)),
              builder: (context, snapshot) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children:  [
                          Padding(
                            padding: const EdgeInsets.all(80.0),
                            child: Image.asset('assets/clock.png'),
                          ),
                          HourPointer(),
                          MinutePointer(),
                          SecondPointer(),
                          Container(
                            height: 16.0,
                            width: 16.0,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
          width: 450.0,
          height: 550.0,
          color: Colors.white,
        ),
        Container(
          width: 450.0,
          height: 30.0,
          color: Colors.brown,
        ),
        Container(
          width: 450.0,
          height: 250.0,
          color: Colors.grey,
        ),
      ],
    ));
  }
}
