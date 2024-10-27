import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigCurve extends StatelessWidget {
  final bool isRight;
  const BigCurve({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 12,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isRight == true
              ? BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
        ),
      ),
    );
  }
}
