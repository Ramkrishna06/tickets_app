import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomnumber;
  final double width;
  final bool? isColor;
  const AppLayoutBuilder(
      {super.key, required this.randomnumber, this.width = 3,this.isColor}
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print(constraints.constrainWidth() / randomnumber);
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomnumber).floor(),
            (index) => SizedBox(
              width: width,
              height: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(color:isColor==null?Colors.white:Colors.grey.shade300),
              ),
            ),
          ),
        );
      },
    );
  }
}
