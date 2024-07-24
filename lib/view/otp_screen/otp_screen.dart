import 'package:flutter/material.dart';
import 'package:zomato_clone/view/location_screen/location_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("We have sent a verification code "),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            _otpField(),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationScreen(),
                        ));
                  }
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.black),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive the code ",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Resend now",
                  style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Row _otpField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) => Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: TextFormField(
                validator: (value) {
                  if (value != null && value.length == 1) {
                    return null;
                  } else {
                    return "X";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
