import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/media.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/widgets/App_coloum_textlayout.dart';
import 'package:ticket_app/screens/profile/widget/Columncolumn.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                        AppMedia.logo,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book tickets",
                      style: Appstyle.headline1,
                    ),
                    Text(
                      "New-York",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.workspace_premium),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Premium status",
                            style: TextStyle(color: Colors.blue.shade700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Text("Edit"),
              ],
            ),
            Divider(
              color: Colors.grey.shade500,
            ),
            Stack(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appstyle.primarycolor),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lightbulb_circle_sharp,
                        color: Colors.white,
                        size: 70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You'vgot a new award",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.6)),
                          ),

                        ],
                      ),
                    ],
                  ),

                ),
                Positioned(
                  right: -20,
                  top: -10,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(

                      border: Border.all(
                          color: Appstyle.ticketBlue,
                        width: 10
                      ),
                      shape: BoxShape.circle,
                    ),


                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Text("Accumulated Miles",style: Appstyle.headlinestyle2,),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("324222",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w500,color: Appstyle.textcolor),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accurued",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),),
                      Text("11 June 2022",style: TextStyle(fontSize: 20,color: Colors.grey.shade700),)
                    ],
                  ),
                  Divider(color: Colors.grey.shade500,),
                  ColumnColoumn(textleftup: "23 042", textleftdown: "Miles",textrightup: "Airline Co",textrightdown: "Received from",),
                  Divider(color: Colors.grey.shade500,),
                  ColumnColoumn(textleftup: "23 ", textleftdown: "Miles",textrightup: "Mc Donal's",textrightdown: "Received from",)
                  ,Divider(color: Colors.grey.shade500,),
                  ColumnColoumn(textleftup: "232", textleftdown: "Miles",textrightup: "Dbestech",textrightdown: "Received from",)
                  ,Divider(color: Colors.grey.shade500,),
                  ColumnColoumn(textleftup: "42", textleftdown: "Miles",textrightup: "rkrythems",textrightdown: "Received from",),
                     SizedBox(height: 20,),
                  Text("How to get more miles?",style: Appstyle.textstyle.copyWith(color: Appstyle.ticketBlue),)






                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
