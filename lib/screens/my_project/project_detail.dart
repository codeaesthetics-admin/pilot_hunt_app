import 'package:flutter/material.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/widgets/color_remover.dart';

class ProjectDetailScreen extends StatefulWidget {
  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  var manualPriceController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kColorBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {Navigator.pop(context);},
            child: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text("Job Detail"),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.more_vert),
        )],
      ),
        body: SafeArea(
          child: ColorRemover(
              child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                      child: Column(
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Color(0xffD6D7E2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text("Free Inc"),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xffC2C2C2),
                                      size: 17,
                                    ),
                                    Text(
                                      "Florida, USA",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xff74747F)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.04),
                                Container(
                                  height: MediaQuery.of(context).size.height*0.05,
                                  width: MediaQuery.of(context).size.width*0.25,
                                  decoration: BoxDecoration(
                                    color: kColorPrimary,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Description",
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025, bottom: MediaQuery.of(context).size.height*0.025),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "About This Job",
                                style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021),
                              ),
                            ),
                          ),
                          Text(
                            "Viverra mauris aliquet. Integer elementum augue non suscipit interdum. Praesent mattis felis sit amet lacus varius dapibus in vel eu in risus. Read More",
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.018, color: Color(0xff74747F)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025, bottom: MediaQuery.of(context).size.height*0.025),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Documents",
                                style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 8, top: 8, bottom: MediaQuery.of(context).size.height*0.04),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffF2F2F2),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(Icons.image, color: Color(0xffFF5F34),),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "FRE. INC",
                                          style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.017, fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          "PDF",
                                          style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Color(0xffBAC2C3)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Location",
                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: MediaQuery.of(context).size.height*0.25,
                            // width: 75,
                            decoration: BoxDecoration(
                              color: Color(0xffD6D7E2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              manualPriceController.text='';
                              String bidPrice='25';
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30.0),
                                    ),
                                ),
                                builder: (context){
                                  return StatefulBuilder(builder: (BuildContext context,
                                  StateSetter setState) {
                                    return Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.75,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),topRight: Radius.circular(10)
                                          ),
                                        ),
                                        child: Wrap(
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 2,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Color(0xffD8D8D8)),
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "How much would you bid?",
                                                style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.023,),
                                              ),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.04),
                                            InkWell(
                                              onTap: (){
                                                  bidPrice='25';
                                                  setState((){

                                                  });
                                              },
                                              child: Container(
                                                height: MediaQuery.of(context).size.height*0.075,
                                                width: MediaQuery.of(context).size.width,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Color(0xffEAEBEC)),
                                                  color: bidPrice=='25'
                                                      ?kColorPrimary:Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "\$25",
                                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021, color: bidPrice=='25'
                                                        ?Colors.white:kColorDarkGreyText),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                bidPrice='50';
                                                setState((){

                                                });
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                                child: Container(
                                                  height: MediaQuery.of(context).size.height*0.075,
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xffEAEBEC)),
                                                    color: bidPrice=='50'
                                                        ?kColorPrimary:Colors.white,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "\$50",
                                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021, color: bidPrice=='50'
                                                          ?Colors.white:kColorDarkGreyText),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                bidPrice='100';
                                                setState((){

                                                });
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                                child: Container(
                                                  height: MediaQuery.of(context).size.height*0.075,
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xffEAEBEC)),
                                                    color: bidPrice=='100'
                                                      ?kColorPrimary:Colors.white,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "\$100",
                                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021, color: bidPrice=='100'
                                                          ?Colors.white:kColorDarkGreyText),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                bidPrice='150';
                                                setState((){

                                                });
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                                child: Container(
                                                  height: MediaQuery.of(context).size.height*0.075,
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xffEAEBEC)),
                                                    color: bidPrice=='150'
                                                        ?kColorPrimary:Colors.white,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "\$150",
                                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021, color: bidPrice=='150'
                                                          ?Colors.white:kColorDarkGreyText),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: (){
                                                bidPrice='200';
                                                setState((){

                                                });
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                                child: Container(
                                                  height: MediaQuery.of(context).size.height*0.075,
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xffEAEBEC)),
                                                    color: bidPrice=='200'
                                                        ?kColorPrimary:Colors.white,
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(5),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "\$200",
                                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.021, color: bidPrice=='200'
                                                          ?Colors.white:kColorDarkGreyText),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 2,
                                                    width: MediaQuery.of(context).size.width*0.4,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Color(0xffF2F2F2)),
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(5),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "OR",
                                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.019, color: Colors.black),
                                                  ),
                                                  Container(
                                                    height: 10,
                                                    width: MediaQuery.of(context).size.width*0.4,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Color(0xffF2F2F2)),
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(5),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(top : 10),
                                              child: TextField(
                                                textCapitalization: TextCapitalization.sentences,
                                                keyboardType: TextInputType.number,
                                                controller: manualPriceController,
                                                textAlign: TextAlign. center,

                                                //focusNode: fObservation,

                                                // maxLength: 200,
                                                style: const TextStyle(
                                                  color: Colors.white,

                                                ),
                                                onChanged: (value) {
                                                  //print('$value,$charLength');
                                                },
                                                maxLines: 1,
                                                cursorColor: kColorPrimary,

                                                decoration: InputDecoration(
                                                    filled: true,
                                                    fillColor: kColorLightGreyText,
                                                    // prefixIcon: Icon(Icons.person),
                                                    // labelText: languageModel.languageResponseModel != null
                                                    //     ? languageModel
                                                    //     .languageResponseModel!.AppLanguage.username
                                                    //     : 'Enter Username',
                                                    // labelStyle: TextStyle(color: kColorPrimary),
                                                    contentPadding: EdgeInsets.zero,
                                                    hintText: 'Manually Enter Price',

                                                    hintStyle: TextStyle(color:kColorPrimary),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                        borderSide:
                                                        BorderSide(width: 0, color: kColorLightGreyText)
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(5.0),
                                                        borderSide:
                                                        BorderSide(width: 0, color: kColorLightGreyText)
                                                    ),
                                                    focusColor: kColorPrimary),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height*0.055,
                                                decoration: BoxDecoration(
                                                  color: kColorPrimary,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(20)
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "CONTINUE",
                                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                  );
                                }
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.055,
                              decoration: BoxDecoration(
                                color: kColorPrimary,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20)
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "PLACE YOUR BID",
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.016, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      )
                  )
              ),
          )
        )
    );
  }
}