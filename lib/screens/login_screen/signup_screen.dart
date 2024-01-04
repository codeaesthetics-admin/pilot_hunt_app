import 'package:flutter/material.dart';
import 'package:linx_uav/constants/app_global.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/constants/icons.dart';
import 'package:linx_uav/widgets/pilot_cus_bottom_bar.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  OutlineInputBorder? border;
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height*0.09,),
              Text(
                  "LinxUAV",
                  style: TextStyle(color: kColorPrimary,fontSize: screenSize.height*0.05)),
              SizedBox(height: screenSize.height*0.04,),
              TextFormField(
                controller: emailAddressController,
                validator: (input) => input!.isValidEmail() ? null : "Check your email",
                onChanged: (value){
                  setState(() {

                  });
                },
                //autovalidateMode: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: emailAddressController.text.isValidEmail()?Icon(Icons.done):SizedBox(),
                  // hintText: 'Enter email address',
                  prefixIcon: Icon(Icons.email_outlined,color: emailAddressController.text.isNotEmpty?kColorPrimary:kColorLightGreyText,),
                  labelText: 'Email address',
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
                controller: nameController,
                validator: (input) => input!.isNotEmpty ? null : "Check your name",
                onChanged: (value){
                  setState(() {

                  });
                },
                //autovalidateMode: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: nameController.text.isNotEmpty?Icon(Icons.done):SizedBox(),
                  // hintText: 'Enter email address',
                  prefixIcon: Icon(MyFlutterApp.user_icon,color: nameController.text.isNotEmpty?kColorPrimary:kColorLightGreyText,),
                  labelText: 'Name',
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
                controller: phoneNumberController,
                validator: (input) => input!.isNotEmpty ? null : "Check your phone number",
                onChanged: (value){
                  setState(() {

                  });
                },
                //autovalidateMode: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: phoneNumberController.text.isNotEmpty?Icon(Icons.done):SizedBox(),
                  // hintText: 'Enter email address',
                  prefixIcon: Icon(MyFlutterApp.phone_handset,color: phoneNumberController.text.isNotEmpty?kColorPrimary:kColorLightGreyText,),
                  labelText: 'Phone Number',
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
                        "Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: screenSize.width*0.37,
                    decoration: BoxDecoration(
                      color: kColorBlueFacebook,
                      borderRadius: BorderRadius.all(
                          Radius.circular(30)
                      ),

                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.facebook,color: Colors.white,),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: screenSize.width*0.37,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                          Radius.circular(30)
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.g_mobiledata,color: Colors.white,),
                    ),
                  ),
                ],
              ),



              SizedBox(height: screenSize.height*0.05,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('By creating an account, you agree to our',style: TextStyle(color: kColorDarkGreyText),),
                  Row(
                    children: <Widget>[

                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SignupScreen(
                          //         previousPage: 'UserSignUp',
                          //       )),
                          // );
                        },
                        child: const Text(
                          'Terms of Service ',
                          style: TextStyle(color: kColorBlueFacebook),
                        ),
                      ),
                      const Text('here',style: TextStyle(color: kColorDarkGreyText),),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SignupScreen(
                          //         previousPage: 'UserSignUp',
                          //       )),
                          // );
                        },
                        child: const Text(
                          ' Privacy Policy',
                          style: TextStyle(color: kColorBlueFacebook),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}
