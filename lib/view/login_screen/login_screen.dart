import 'package:flutter/material.dart';
import 'package:zomato_clone/utils/constants/color_constants.dart';
import 'package:zomato_clone/utils/constants/image_constants.dart';
import 'package:zomato_clone/view/otp_screen/otp_screen.dart';
import 'package:zomato_clone/view/search_country/search_country.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> phone = GlobalKey<FormState>();
  TextEditingController phn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _coverImage(),
            SizedBox(
              height: 20,
            ),
            Text(
              "India's #1 Food Delivery ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25),
            ),
            Text(
              "and Dining App",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            _signupDivider(),
            SizedBox(
              height: 10,
            ),
            _typingTab(context),
            SizedBox(
              height: 15,
            ),
            _continueButton(context),
            SizedBox(
              height: 15,
            ),
            _orDivider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset(
                    ImageConstants.GOOGLE_PNG,
                    height: 25,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.more_horiz,
                    size: 25,
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "By continuing, you agree to our",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms of Service",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted,
                      decorationThickness: 2,
                      decorationColor: ColorConstants.mainBlack),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted,
                      decorationThickness: 2,
                      decorationColor: ColorConstants.mainBlack),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Content Policy",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted,
                      decorationThickness: 2,
                      decorationColor: ColorConstants.mainBlack),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _coverImage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Icon(
              Icons.g_translate,
              color: Colors.white,
            ),
            height: 35,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            child: Center(
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white),
              ),
            ),
            height: 35,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(ImageConstants.ZOMATO_PNG))),
    );
  }

  Row _signupDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 120,
          color: Colors.grey.withOpacity(0.5),
        ),
        SizedBox(
          width: 5,
        ),
        Text("Log in or sign up",
            style: TextStyle(
                color: ColorConstants.mainBlack.withOpacity(0.6),
                fontWeight: FontWeight.w500,
                fontSize: 18)),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 120,
          color: Colors.grey.withOpacity(0.5),
        ),
      ],
    );
  }

  Row _orDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 170,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Text("or",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstants.mainBlack.withOpacity(0.6),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 1,
          width: 170,
          color: Colors.grey,
        ),
      ],
    );
  }

  Padding _continueButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: () {
          if (phone.currentState!.validate()) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OtpScreen(),
                ));
          }
        },
        child: Container(
          height: 60,
          width: 500,
          child: Center(
            child: Text(
              "Continue",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Padding _typingTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchCountry(),
                  ));
            },
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.mainWhite,
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.6), width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageConstants.INDIA,
                    height: 20,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Form(
              key: phone,
              child: TextFormField(
                controller: phn,
                validator: (value) {
                  if (value!.length < 10) {
                    return "Enter a valid phone number";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    prefixText: "+91",
                    prefixStyle: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.grey.withOpacity(0.8)))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
