import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/screens/my_project/project_detail.dart';
import 'package:linx_uav/widgets/color_remover.dart';

class PilotProjectScreen extends StatefulWidget {
  @override
  State<PilotProjectScreen> createState() => _PilotProjectScreenState();
}

class _PilotProjectScreenState extends State<PilotProjectScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kColorBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("Projects posted"),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: (){

            },
            child: SizedBox(
              height: 25,
                width: 25,
                child: Icon(Icons.more_vert)),
          ),
        )],
      ),
        body: SafeArea(
          child: ColorRemover(
              child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffF7E5B6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                                      child: Text(
                                        "Get tips for getting \nmore projects",
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021,),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.05,
                                        width: MediaQuery.of(context).size.width*0.5,
                                        decoration: BoxDecoration(
                                          color: kColorPrimary,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "READ MORE",
                                            style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.16,
                                  width: MediaQuery.of(context).size.width*0.3,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFD388),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10), bottomRight: Radius.circular(10)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03, bottom: MediaQuery.of(context).size.height*0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.05,
                                  width: MediaQuery.of(context).size.width*0.2,
                                  decoration: BoxDecoration(
                                    color: kColorPrimary,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "All",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.05,
                                  width: MediaQuery.of(context).size.width*0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Lidar",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff74747F)),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.05,
                                  width: MediaQuery.of(context).size.width*0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Photos",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff74747F)),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.05,
                                  width: MediaQuery.of(context).size.width*0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Survey",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff74747F)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.75,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor: Color(0xffD6D7E2),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          "FRE Inc.",
                                                          style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02),
                                                        ),
                                                        Text(
                                                          "Agriculture",
                                                          style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017, color: Color(0xff86888D)),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => ProjectDetailScreen()),
                                                        );
                                                      },
                                                    child: Container(
                                                      height: MediaQuery.of(context).size.height*0.04,
                                                      width: MediaQuery.of(context).size.width*0.15,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xffF7B581),
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(15)
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: Text(
                                                          "Details",
                                                          style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff967720)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              color: Color(0xffF2F2F2),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on_outlined,
                                                        color: Color(0xffC2C2C2),
                                                        size: 15,
                                                      ),
                                                      Text(
                                                        "Florida, USA",
                                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.014, color: Color(0xff74747F)),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.calendar_today_rounded,
                                                        color: Color(0xffC2C2C2),
                                                        size: 15,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        "Apr 02, 2022",
                                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.014, color: Color(0xff74747F)),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              color: kColorBG,
                                              height: 10,
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
                        ],
                      ),
                  )
              )
          ),
        )
    );
  }
}