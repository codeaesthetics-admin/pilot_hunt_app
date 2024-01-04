import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/widgets/color_remover.dart';
import 'package:linx_uav/widgets/line_chart_widget.dart';

class PilotHomePage extends StatefulWidget {
  @override
  State<PilotHomePage> createState() => _PilotHomePageState();
}

class _PilotHomePageState extends State<PilotHomePage> {

  @override
  Widget build(BuildContext context){
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
                    "Username (Pilot)",
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
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "On Duty (6)",
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
                            width: MediaQuery.of(context).size.width*0.75,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "FRE Inc.",
                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02),
                                  ),
                                  Text(
                                    "32 islands, Alaska.",
                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017, color: Color(0xff86888D)),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.05,
                                      width: MediaQuery.of(context).size.width*0.3,
                                      decoration: BoxDecoration(
                                          color: kColorPrimary,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20)
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "DELIVER",
                                          style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016,),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                          // ListTile(
                          //   leading: const Icon(Icons.list),
                          //   trailing: const Text(
                          //     "GFG",
                          //     style: TextStyle(color: Colors.green, fontSize: 15),
                          //   ),
                          //   title: Text("List item $index"));
                      }),
                ),
                Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Text(
                    "My Dashboard",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.05),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.42,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Earnings in March 2022",
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019, color: Color(0xff86888D)),
                          ),
                          Text(
                            "\$780",
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021, color: kColorPrimary),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                              height: MediaQuery.of(context).size.height*0.32,
                              width: double.infinity,
                              child: LineChartWidget()),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width*0.41,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xffF2F5FC),
                                child: Icon(Icons.check, color: Color(0xff8792B1))
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Success Order",
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019, color: Color(0xff86888D)),
                                ),
                                Text(
                                  "128",
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width*0.41,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xffF2F5FC),
                                child: Icon(Icons.task, color: Color(0xff8792B1),)
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "New Orders",
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019, color: Color(0xff86888D)),
                                ),
                                Text(
                                  "24",
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}