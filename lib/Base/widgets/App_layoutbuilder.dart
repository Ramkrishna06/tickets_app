import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomnumber;
  const AppLayoutBuilder({super.key, required this.randomnumber});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print(constraints.constrainWidth()/randomnumber);
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomnumber).floor(),
            (index) => SizedBox(
              width: 2,
              height: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
