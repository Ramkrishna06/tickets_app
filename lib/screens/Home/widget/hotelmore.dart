import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ticket_app/Base/res/media.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/utilities/all_json.dart';
import 'package:ticket_app/Provider/text_expansion.dart';

import '../../../controller/hotelmore_controller.dart';

class Hotelmoredetails extends StatefulWidget {
  const Hotelmoredetails({super.key});

  @override
  State<Hotelmoredetails> createState() => _HotelmoredetailsState();
}

class _HotelmoredetailsState extends State<Hotelmoredetails> {
  late var hotelindex = 0;
  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      print("printed ${args["index"]}");
      hotelindex = args["index"];
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            //title: Text("Back"),
            expandedHeight: 350,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                //Image.network('https://dummyimage.com/300x400/eee/aaa'),
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[hotelindex]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          hotelList[hotelindex]["place"],
                          style: TextStyle(fontSize: 25, shadows: [
                            Shadow(blurRadius: 0.5, offset: Offset(0.2, 0.2))
                          ]),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExpandedTextWidget(
                    text: hotelList[hotelindex]["detail"],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "More Images",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotelList[hotelindex]['images'].length,
                      itemBuilder: (context, imagesindex) {
                        print(
                            "  number is ${hotelList[imagesindex]['images'][0]}");
                        return Container(
                          margin: EdgeInsets.all(16),
                          color: Colors.blue,
                          child:
                              // Image.network(
                              //     "https://placehold.co/200x200/png")
                              Image.asset(
                                  "assets/images/${hotelList[hotelindex]['images'][imagesindex]}"),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends ConsumerWidget {
  ExpandedTextWidget({super.key, required this.text});
  final String text;
 //used in GetX (state management)
  //final TextExpansionController controller = Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var provider=ref.watch(textExpansionNotifierProvider);
   // return Obx((){
   //   // var textwidget = Text(
   //   //   text,
   //   //   maxLines: controller.isExpanded.value ? 9 : null,
   //   //   overflow: controller.isExpanded.value
   //   //       ? TextOverflow.ellipsis
   //   //       : TextOverflow.visible,
   //   // );
   //   //
   //   // return Column(
   //   //   crossAxisAlignment: CrossAxisAlignment.start,
   //   //   children: [
   //   //     textwidget,
   //   //     GestureDetector(
   //   //       onTap: () {
   //   //         controller.istoggleExpandable();
   //   //       },
   //   //       //child: isExpanded?Text("More"):Text("Less"),)
   //   //       child: Text(
   //   //         controller.isExpanded.value ? "More" : "Less",
   //   //         style: TextStyle(color: Appstyle.ticketBlue),
   //   //       ),
   //   //     )
   //   //   ],
   //   // );
   // });
    var textwidget = Text(
      text,
      maxLines: provider ? 9 : null,
      overflow: provider
          ? TextOverflow.ellipsis
          : TextOverflow.visible,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textwidget,
        GestureDetector(
          onTap: () {
            ref.watch(textExpansionNotifierProvider.notifier).istoggleExpandable(provider);
          },
          //child: isExpanded?Text("More"):Text("Less"),)
          child: Text(
            provider? "More" : "Less",
            style: TextStyle(color: Appstyle.ticketBlue),
          ),
        )
      ],
    );
  }
}
