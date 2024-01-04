import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/widgets/color_remover.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: kColorBG,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: const Text("Profile"),
          actions: [Icon(Icons.edit_outlined)],
        ),
        body: SafeArea(
            child: ColorRemover(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color(0xffDAD5E0),
                                          radius: MediaQuery.of(context).size.height*0.08,
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Username (Pilot)",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.018, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "username@email.com",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff929192)),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Projects",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff929192)),
                                            ),
                                            Text(
                                              "142",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019,),
                                            ),
                                          ],
                                        ),
                                        VerticalDivider(
                                          color: Color(0xffEBEBEB),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Transactions",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff929192)),
                                            ),
                                            Text(
                                              "1.478",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019,),
                                            ),
                                          ],
                                        ),
                                        VerticalDivider(
                                          color: Color(0xffEBEBEB),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Earnings",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff929192)),
                                            ),
                                            Text(
                                              "\$625",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019,),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Color(0xffEBEBEB),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.04),
                            Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.payment),
                                    title: Text(
                                      "Payment Settings",
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                                  ),
                                  Divider(
                                    color: Color(0xffEBEBEB),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.map_outlined),
                                    title: Text(
                                      "Locations Map",
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                                  ),
                                  Divider(
                                    color: Color(0xffEBEBEB),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.payment),
                                    title: Text(
                                      "Order History",
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                                  ),
                                  Divider(
                                    color: Color(0xffEBEBEB),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.settings),
                                    title: Text(
                                      "App Settings",
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                                  ),
                                  Divider(
                                    color: Color(0xffEBEBEB),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.lock_outline_sharp),
                                    title: Text(
                                      "Change Password",
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                                  ),
                                  Divider(
                                    color: Color(0xffEBEBEB),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.logout_sharp),
                                    title: Text(
                                      "Log Out",
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                )
            )
        )
    );
  }
}