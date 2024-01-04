import 'package:flutter/material.dart';
import 'package:linx_uav/constants/app_global.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/constants/icons.dart';
import 'package:linx_uav/widgets/pilot_cus_bottom_bar.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {

  OutlineInputBorder? border;

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool passwordHide=true;
  bool confirmPasswordHide=true;


  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: kColorPrimary,
        width: 0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height*0.12,),
              Text(
                  "Forgot Password",
                  style: TextStyle(color: kColorDarkGreyText,fontSize: screenSize.height*0.04)),
              SizedBox(height: screenSize.height*0.03,),
              Text(
                  "Enter the new password to get in your account make sure to remember your password and don’t share it with anyone",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kColorDarkGreyText,)),
              SizedBox(height: screenSize.height*0.06,),

              TextFormField(
                controller: passwordController,
                obscureText: passwordHide,
                validator: (input) => input!.length>8 ? null : "Check your password",
                onChanged: (value){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // hintText: 'Enter email address',
                  suffixIcon: passwordHide ?InkWell(onTap:(){
                    passwordHide=false;
                    setState(() {

                    });
                  },child: Icon(MyFlutterApp.eye)):InkWell(onTap:(){
                    passwordHide=true;
                    setState(() {

                    });},child: Icon(MyFlutterApp.eye_off)),
                  prefixIcon: Icon(MyFlutterApp.lock,color: passwordController.text.isNotEmpty?kColorPrimary:kColorLightGreyText,),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 17,color: kColorPrimary),
                  // hintStyle: TextStyle(fontSize: 17,color: kColorLightGreyText),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kColorLightGreyText),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kColorPrimary),
                  ),
                ),
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: confirmPasswordController,
                obscureText: confirmPasswordHide,
                validator: (input) => input!.length>8 ? null : "Check your password",
                onChanged: (value){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // hintText: 'Enter email address',
                  suffixIcon: confirmPasswordHide ?InkWell(onTap:(){
                    confirmPasswordHide=false;
                    setState(() {

                    });
                  },child: Icon(MyFlutterApp.eye)):InkWell(onTap:(){
                    confirmPasswordHide=true;
                    setState(() {

                    });
                  },child: Icon(MyFlutterApp.eye_off)),
                  prefixIcon: Icon(MyFlutterApp.lock,color: confirmPasswordController.text.isNotEmpty?kColorPrimary:kColorLightGreyText,),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(fontSize: 17,color: kColorPrimary),
                  // hintStyle: TextStyle(fontSize: 17,color: kColorLightGreyText),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kColorLightGreyText),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kColorPrimary),
                  ),
                ),
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20,),

              SizedBox(height: screenSize.height*0.02,),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: screenSize.width*0.95,
                    decoration: BoxDecoration(
                      color: kColorPrimary,
                      borderRadius: BorderRadius.all(
                          Radius.circular(30)
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


}
