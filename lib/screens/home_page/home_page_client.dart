import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/constants/icons.dart';
import 'package:linx_uav/screens/my_project/new_project_screen.dart';
import 'package:linx_uav/widgets/color_remover.dart';
import 'package:linx_uav/widgets/line_chart_widget.dart';

class ClientHomePage extends StatefulWidget {
  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {

  @override
  Widget build(BuildContext context){
    var screenSize= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.dehaze),
        centerTitle: true,
        title: const Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(backgroundColor: Color(0xffD8D8D8)
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ColorRemover(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Text(
                    "Username (Client)",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.038, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02, color: Color(0xffBAC2C3)),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.12,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const NewProjectScreen(
                                    )));
                          },
                          child: Container(

                            width: screenSize.width*0.4,
                            decoration: BoxDecoration(
                                color: kColorWidgetBGColor,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Center(
                                      child: Text(
                                        ">>",
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "  New Project",
                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Project Delivered",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016,),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.12,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.5,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(

                                    decoration: const BoxDecoration(
                                        color: kColorWidgetBGColor,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(MyFlutterApp.picture_outline,size: 40, color: Colors.red),
                                    )
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FRE. INC",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019, color: Colors.black),
                                    ),
                                    Text(
                                      "Photo",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,color: kColorLightGreyText),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Project Pending",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016,),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.12,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: 1,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.5,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    decoration: const BoxDecoration(
                                        color: kColorWidgetBGColor,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(MyFlutterApp.picture_outline,size: 40, color: Colors.red),
                                    )
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FRE. INC",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019, color: Colors.black),
                                    ),
                                    Text(
                                      "Photo",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,color: kColorLightGreyText),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );

                      }),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}