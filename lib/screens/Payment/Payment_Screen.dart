import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card_new/credit_card_form.dart';
import 'package:flutter_credit_card_new/credit_card_model.dart';
import 'package:flutter_credit_card_new/credit_card_widget.dart';
import 'package:flutter_credit_card_new/glassmorphism_config.dart';
import '../../constants/colors.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: kColorPrimary,
        width: 2.0,
      ),
    );
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
        title: const Text("Payment"),
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
      body: Container(
        height: screenSize.height*0.9,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Your Cards'),InkWell(
                  onTap: (){

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
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Add new card",
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.023,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.04),
                                    CreditCardWidget(
                                      glassmorphismConfig:
                                      useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                                      cardNumber: cardNumber,
                                      expiryDate: expiryDate,
                                      cardHolderName: cardHolderName,
                                      cvvCode: cvvCode,
                                      showBackView: isCvvFocused,
                                      obscureCardNumber: true,
                                      obscureCardCvv: true,
                                      isHolderNameVisible: true,
                                      cardBgColor: Colors.red,
                                      backgroundImage:
                                      useBackgroundImage ? 'assets/card_bg.png' : null,
                                      isSwipeGestureEnabled: true, onCreditCardWidgetChange: (CreditCardBrand ) {  },
                                      // onCreditCardWidgetChange:
                                      //     (CreditCardBrand creditCardBrand) {},
                                      // customCardTypeIcons: <CustomCardTypeIcon>[
                                      //   CustomCardTypeIcon(
                                      //     cardType: CardType.mastercard,
                                      //     cardImage: Image.asset(
                                      //       'assets/mastercard.png',
                                      //       height: 48,
                                      //       width: 48,
                                      //     ),
                                      //   ),
                                      // ],
                                    ),

                                    Expanded(

                                      child: SingleChildScrollView(

                                        child: Column(
                                          children: [ SizedBox(height: 15),
                                            CreditCardForm(
                                              formKey: formKey,
                                              obscureCvv: true,
                                              obscureNumber: true,
                                              cardNumber: cardNumber,
                                              cvvCode: cvvCode,
                                              isHolderNameVisible: true,
                                              isCardNumberVisible: true,
                                              isExpiryDateVisible: true,
                                              cardHolderName: cardHolderName,
                                              expiryDate: expiryDate,
                                              themeColor: kColorPrimary,
                                              cardNumberDecoration: InputDecoration(
                                                labelText: 'Number',
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: kColorPrimary,

                                                  ),
                                                ),
                                                hintText: 'XXXX XXXX XXXX XXXX',
                                                hintStyle:  TextStyle(color: kColorLightGreyText ),
                                                labelStyle:  TextStyle(color: Colors.black),
                                                // focusedBorder: border,
                                                // enabledBorder: border,
                                              ),
                                              expiryDateDecoration: InputDecoration(
                                                hintStyle:  TextStyle(color: kColorLightGreyText ),
                                                labelStyle:  TextStyle(color: Colors.black),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: kColorPrimary,

                                                  ),
                                                ),
                                                // focusedBorder: border,
                                                // enabledBorder: border,
                                                labelText: 'Expired Date',
                                                hintText: 'XX/XX',
                                              ),
                                              cvvCodeDecoration: InputDecoration(
                                                hintStyle:  TextStyle(color: kColorLightGreyText ),
                                                labelStyle:  TextStyle(color: Colors.black),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: kColorPrimary,

                                                  ),
                                                ),
                                                // focusedBorder: border,
                                                // enabledBorder: border,
                                                labelText: 'CVV',
                                                hintText: 'XXX',
                                              ),
                                              cardHolderDecoration: InputDecoration(
                                                hintStyle:  TextStyle(color: kColorLightGreyText ),
                                                labelStyle:  TextStyle(color: Colors.black),
                                                // focusedBorder: border,
                                                // enabledBorder: border,
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                  borderSide: BorderSide(
                                                    color: kColorPrimary,

                                                  ),
                                                ),
                                                labelText: 'Card Holder',
                                              ),
                                              onCreditCardModelChange: onCreditCardModelChange,
                                              textStyle:
                                              const TextStyle(color: Colors.black, fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                                        child: Container(
                                          height: MediaQuery.of(context).size.height*0.07,
                                          width: screenSize.width*0.85,
                                          decoration: BoxDecoration(
                                            color: kColorPrimary,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CONTINUE",
                                              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.018, color: Colors.white),
                                            ),
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
                    child: Icon(Icons.add))],
              ),
            ),

            Container(
              height: screenSize.height*0.1,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10, //constants.chat.length
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 10),
                      child: Card(
                        child: Container(
                          height: screenSize.height*0.1,
                          width: screenSize.width*0.3,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              color: kColorWidgetBGColor,

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
                              child: Center(child: Text('Credit Card',style: TextStyle(color: kColorDarkGreyText),)),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              height: screenSize.height*0.7,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10, //constants.chat.length
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child:  CreditCardWidget(
                        glassmorphismConfig:
                        useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                        cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        showBackView: isCvvFocused,
                        obscureCardNumber: true,
                        obscureCardCvv: true,
                        isHolderNameVisible: true,
                        cardBgColor: Colors.red,
                        backgroundImage:
                        useBackgroundImage ? 'assets/card_bg.png' : null,
                        isSwipeGestureEnabled: true, onCreditCardWidgetChange: (CreditCardBrand ) {  },
                        // onCreditCardWidgetChange:
                        //     (CreditCardBrand creditCardBrand) {},
                        // customCardTypeIcons: <CustomCardTypeIcon>[
                        //   CustomCardTypeIcon(
                        //     cardType: CardType.mastercard,
                        //     cardImage: Image.asset(
                        //       'assets/mastercard.png',
                        //       height: 48,
                        //       width: 48,
                        //     ),
                        //   ),
                        // ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
