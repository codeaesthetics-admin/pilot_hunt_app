import 'package:flutter/material.dart';
import 'package:linx_uav/constants/app_global.dart';
import 'package:linx_uav/constants/colors.dart';
import 'package:linx_uav/widgets/pilot_cus_bottom_bar.dart';

import 'forget_password_screen.dart';

class ForgetPasswordEmailScreen extends StatefulWidget {
  @override
  State<ForgetPasswordEmailScreen> createState() => _ForgetPasswordEmailScreenState();
}

class _ForgetPasswordEmailScreenState extends State<ForgetPasswordEmailScreen> {

  OutlineInputBorder? border;
  TextEditingController emailAddressController = TextEditingController();



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
              SizedBox(height: screenSize.height*0.14,),
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

              SizedBox(height: screenSize.height*0.08,),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ForgetPasswordScreen(
                              )));
                },
                child: Center(
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
              ),
            ],
          ),
        ),
      ),
    );
  }


}
