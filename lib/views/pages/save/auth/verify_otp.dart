import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hybrid_fintech_app/notify.dart';
import 'package:hybrid_fintech_app/utils/media.dart';
import 'package:hybrid_fintech_app/views/pages/save/auth/create_pin.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerifyAccountOTP extends StatefulWidget {
  const VerifyAccountOTP({Key? key}) : super(key: key);

  @override
  State<VerifyAccountOTP> createState() => _VerifyAccountOTPState();
}

class _VerifyAccountOTPState extends State<VerifyAccountOTP> {
  Color myColor = Color(0xFF2B0431);
  Color grey = Color(0xFFF7E0FB);
  String? selectedFrequency;
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height / 15,
                        ),

                        // SizedBox(
                        //   height: height / 50,
                        // ),
                        // serarchtextField(
                        //   Colors.black,
                        //   CustomStrings.search,

                        // ),
                        SizedBox(
                          height: height / 80,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 45,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            // Text(
                            //   'Enable 2FA',
                            //   style: TextStyle(
                            //       color: notifire.getdarkscolor,
                            //       fontSize: height / 40,
                            //       fontFamily: 'Gilroy Bold'),
                            // ),
                            // const Spacer(),
                          ],
                        ),

                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(12, 25, 12, 0),
                          child: Text(
                            'Verification Code',
                            style: TextStyle(
                                color: myColor,
                                fontSize: height / 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Medium'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 20, 0),
                            child: Text(
                              'We have sent a verification code to the \nnumber you provided',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height / 55,
                                  fontFamily: 'Light'),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: PinPut(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Medium',
                                fontSize: 17),
                            fieldsCount: 4,
                            submittedFieldDecoration:
                                _pinPutDecoration.copyWith(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black, width: 2.0)),
                            ),
                            selectedFieldDecoration: _pinPutDecoration.copyWith(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey, width: 2.0)),
                            ),
                            followingFieldDecoration:
                                _pinPutDecoration.copyWith(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey, width: 2.0)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('OTP Sent');
                            alert(context, 'success', 'OTP Sent!');
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.transparent)),
                            child: RichText(
                              text: TextSpan(
                                text: "Didn't receive code? ",
                                style: TextStyle(
                                    fontFamily: 'Light', color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Resend code',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Medium'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: width,
                            color: Colors.white,
                            child: ElevatedButton(
                                child: Text(
                                  'Verify',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Medium',
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  Get.to(CreatePin());
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  backgroundColor: myColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(
                                      color:
                                          myColor, // Set the border color here
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final BoxDecoration _pinPutDecoration = BoxDecoration(
    border: Border(bottom: BorderSide(color: Colors.black, width: 2.0)),
  );
}
