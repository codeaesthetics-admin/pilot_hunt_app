import 'package:flutter/material.dart';
import 'package:linx_uav/constants/app_global.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/constants/icons.dart';
import 'package:linx_uav/screens/login_screen/signup_screen.dart';
import 'package:linx_uav/widgets/pilot_cus_bottom_bar.dart';

import 'forget_password_email_screen.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  OutlineInputBorder? border;
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordHide=true;

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
              SizedBox(height: screenSize.height*0.11,),
              Text(
                  "LinxUAV",
                  style: TextStyle(color: kColorPrimary,fontSize: screenSize.height*0.05)),
              SizedBox(height: screenSize.height*0.07,),
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
              SizedBox(height: 25,),
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

                    });}
                      ,child: Icon(MyFlutterApp.eye_off)),
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
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: const Text('Forgot password ?', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: kColorDarkGreyText),),
                  onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ForgetPasswordEmailScreen(
                                )));
                  },
                ),
              ),
              SizedBox(height: screenSize.height*0.03,),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const PilotCusBottomBar(
                                  )));
                    },
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
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height*0.02,),
              Center(child: Text('OR',style: TextStyle(color: kColorDarkGreyText,fontSize: 18),)),
              SizedBox(height: screenSize.height*0.02,),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: screenSize.width*0.95,
                  decoration: BoxDecoration(
                    color: kColorBlueFacebook,
                    borderRadius: BorderRadius.all(
                        Radius.circular(30)
                    ),

                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Login with Facebook",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height*0.02,),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: screenSize.width*0.95,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                        Radius.circular(30)
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Login with Google",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height*0.02,),
              Row(
                children: <Widget>[
                  const Text('New user?',style: TextStyle(color: kColorDarkGreyText),),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                               SignUpScreen(
                              )));
                    },
                    child: const Text(
                      '  Sign Up  ',
                      style: TextStyle(color: kColorBlueFacebook),
                    ),
                  ),
                  const Text('here',style: TextStyle(color: kColorDarkGreyText),),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
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
