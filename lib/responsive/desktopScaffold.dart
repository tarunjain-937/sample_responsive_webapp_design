import 'package:flutter/material.dart';
import 'package:sample_responsive_webapp_design/Constants/Constants.dart';

import '../Utils/myBox.dart';
import '../Utils/myTile.dart';

class desktopScaffold extends StatefulWidget {
  const desktopScaffold({Key? key}) : super(key: key);

  @override
  State<desktopScaffold> createState() => _desktopScaffoldState();
}

class _desktopScaffoldState extends State<desktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          ///open drawer
          myDrawer,
          ///rest of Body
          ///Boxes and tiles
          Expanded(
            flex: 2,
              child:Column(
                children: [

                  /// 6 boxes on the top
                  AspectRatio(// in responsive design "Aspect ratio"
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4,),
                        itemBuilder: (context, index) {
                          return myBox();
                        },),
                    ),
                  ),

                  /// tiles below it
                  Expanded(
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return myTile();
                        },))
                ],
              ), ),
          /// side column of body
         Expanded( flex: 1,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(color: Colors.grey[600],),
             ))
        ],
      )
    );
  }
}
