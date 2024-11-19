import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/utilities/all_json.dart';
import 'package:ticket_app/screens/Home/widget/hotelsection.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Hotels"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: GestureDetector(
          onTap: () {
           // Navigator.pushNamed(context, AppRoutes.hotelmoredetail);
          },
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.5,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return HotelGridSection(hoteldetails: singleHotel, index: index);
            },
          ),
        ),
      ),
    );
  }
}

///*******************************************************************/
class HotelGridSection extends StatelessWidget {
  final Map<String, dynamic> hoteldetails;
  final int index;
  const HotelGridSection(
      {super.key, required this.hoteldetails, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        print("tapped on $index");
        Navigator.pushNamed(context, AppRoutes.hotelmoredetail,arguments: {"index":index});
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 330,
        width: size.width * 0.60,
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
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              hoteldetails["place"],
              style: Appstyle.headlinestyle2.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              hoteldetails["destination"],
              style: Appstyle.headlinestyle3.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$${hoteldetails["price"]}/night",
              style: Appstyle.headlinestyle3.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
