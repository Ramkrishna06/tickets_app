import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';



class HotelSection extends StatelessWidget {
  final Map<String,dynamic>hoteldetails;
  const HotelSection({super.key,required this.hoteldetails});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: 330,
      width: size.width*0.60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Appstyle.primarycolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
             image: AssetImage("assets/images/${hoteldetails["image"]}"),
            )
            ),
          ),
          SizedBox(height: 10,),
          Text(hoteldetails["place"],style: Appstyle.headlinestyle2.copyWith(color: Colors.white),),
          SizedBox(height: 10,),
          Text(hoteldetails["destination"],style: Appstyle.headlinestyle3.copyWith(color: Colors.white),),
          SizedBox(height: 10,),
          Text("\$${hoteldetails["price"]}/night",style: Appstyle.headlinestyle3.copyWith(color: Colors.white, ),),

        ],
      ),
    );
  }
}
