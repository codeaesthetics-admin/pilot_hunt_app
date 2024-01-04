import 'package:flutter/material.dart';
import 'package:flutter_credit_card_new/credit_card_form.dart';
import 'package:flutter_credit_card_new/credit_card_model.dart';
import 'package:flutter_credit_card_new/credit_card_widget.dart';
import 'package:flutter_credit_card_new/glassmorphism_config.dart';
import '../../constants/colors.dart';

class NewProjectScreen extends StatefulWidget {
  const NewProjectScreen({Key? key}) : super(key: key);

  @override
  State<NewProjectScreen> createState() => _NewProjectScreenState();
}

class _NewProjectScreenState extends State<NewProjectScreen> {


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorBG,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("New Project"),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Start a new project',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height*0.12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text('Project Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: kColorLightGreyText),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Project Name',
                              hintStyle: TextStyle(fontSize: 15,color: kColorLightGreyText),
                            ),
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Please write a desctiption of your project',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: kColorLightGreyText),),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '....',
                          hintStyle: TextStyle(fontSize: 15,color: kColorLightGreyText),
                        ),
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text('Location',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: kColorLightGreyText),),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    child: Column(
                      children: [
                        Text('All qualified drones operators within',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: kColorLightGreyText),),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          SizedBox(width: 25,),
                          Text('200 Miles',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                            CircleAvatar(
                                backgroundColor: kColorPrimary,
                                child: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white)
                            ),
                        ],)
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(height: 15,),

              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: kColorLightGreyText),),

                            Text('200 Miles',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),

                          ],
                        ),
                        CircleAvatar(
                            backgroundColor: kColorPrimary,
                            child: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white)
                        ),
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(height: 15,),

              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Upload project files',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: kColorLightGreyText),),

                            Text('AgricultureFRE.pdf',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),

                          ],
                        ),
                        CircleAvatar(
                            backgroundColor: kColorPrimary,
                            child: Icon(Icons.add, color: Colors.white)
                        ),
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(height: 25,),

            ],
          ),
        ),
      ),
    );
  }

}
