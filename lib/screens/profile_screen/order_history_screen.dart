import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {

  List<StepperData> stepperData = [
    StepperData(
      title: "Free Inc.",
      subtitle: "Project Started",
    ),
    StepperData(
      title: "Drone Magnia",
      subtitle: "Operator assignated",
    ),
    StepperData(
      title: "Thursay 19th May, 2022",
      subtitle: "Project Delivered",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("History"),
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
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10, //constants.chat.length
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
              child: Card(
                child: Container(
                  height: screenSize.height*0.36 ,
                  width: screenSize.width,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child:  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(18),

                    ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: screenSize.height * 0.12,
                                  width: screenSize.width*0.3,
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.withOpacity(0.5),

                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 3),
                                        )
                                      ]),
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(18),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  children: [
                                    Container(
                                      height: screenSize.height*0.3 ,
                                      width: screenSize.width*0.4,
                                      child: AnotherStepper(
                                      stepperList: stepperData,
                                      activeBarColor: kColorBarColor,
                                      activeIndex: 1,
                                      gap: screenSize.height * 0.035,
                                      stepperDirection: Axis.vertical,
                                      horizontalStepperHeight: 40,
                                        scrollPhysics: const NeverScrollableScrollPhysics(),

                                    ),),

                                  ],
                                )

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.access_time_rounded,color: kColorPrimary,),
                                    Text(' 2 days',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: kColorLightGreyText),),
                                  ],
                                ), Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,color: kColorPrimary,),
                                    Text(' 2 days',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: kColorLightGreyText),),
                                  ],
                                ), Row(
                                  children: const [

                                    Text('\$ 980',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: kColorGreen),),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
