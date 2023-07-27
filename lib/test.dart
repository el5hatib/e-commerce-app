import "package:flutter/material.dart";
import "package:flutter_otp_text_field/flutter_otp_text_field.dart";
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Test",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: ListView(
            children: [
              OtpTextField(
                borderRadius: BorderRadius.circular(15),
                fieldWidth: 50,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                numberOfFields: 5,
                borderColor: const Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                      }
                      // end onSubmit
              ),
            ],
        ),
      ),
    );
  }
}
