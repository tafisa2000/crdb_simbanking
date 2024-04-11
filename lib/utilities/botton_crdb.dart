import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class BottonCrdb extends StatelessWidget {
  final Widget child;
  final String lable;
  const BottonCrdb({
    super.key,
    required this.lable,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Neumorphic(
            style: NeumorphicStyle(
                depth: 3,
                shadowLightColor: Colors.black54,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
            child: SizedBox(
              height: 70,
              width: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: child,
                ),
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Text(lable)
      ],
    );
  }
}
