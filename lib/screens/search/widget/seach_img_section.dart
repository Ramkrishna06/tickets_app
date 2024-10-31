import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/media.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';

class Imagesection extends StatelessWidget {
  const Imagesection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .44,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppMedia.planeSit,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "20%\ndiscount on\nearly booking\nof flight.\nDon't miss.",
                style: Appstyle.headlinestyle2,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
       // SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(

                  width: size.width * .42,
                  height: 212,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.teal[400],
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 2,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey",style: Appstyle.headlinestyle2.copyWith(color: Colors.white),),
                      Text("Take the survey\nabout our\nservice and\nget discount",style: Appstyle.headlinestyle3.copyWith(fontWeight: FontWeight.w500,color: Colors.white),),

                    ],
                  ),
                ),
                Positioned(
                  right: -30,
                  top: -35,

                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 20,color: Color(0xFF189999),
                      )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width * .42,
              height: 212,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.orange[400],
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 2,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [

                  Text("Take Love",style: Appstyle.headlinestyle2.copyWith(color: Colors.white),),

                ],
              ),

            ),
          ],
        )
      ],
    );
  }
}
