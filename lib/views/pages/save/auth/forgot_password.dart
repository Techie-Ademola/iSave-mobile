import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hybrid_fintech_app/utils/media.dart';
import 'package:hybrid_fintech_app/views/pages/save/auth/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Color myColor = Color(0xFF2B0431);
  Color grey = Color(0xFFF7E0FB);
  
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
        child: Scaffold(
            body: Container(
                width: width,
                height: height,
                child: Column(children: [
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    SizedBox(
                      height: height / 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: Color(0XFF34006a),
                            ),
                            // iconSize: 12,
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(0)),
                            ),
                            onPressed: () {
                              Get.back();
                              // Add your navigation or other actions here
                            },
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
                      padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
                      child: Text(
                        'Forgot Password',
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
                          'Please enter your email address below, you will get a link \nin your inbox to reset your password',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 55,
                              fontFamily: 'Light'),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 45,
                              fontFamily: 'Medium'),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(color: grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(color: grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(color: grey),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                        ),
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter your email';
                        //   } else if (!RegExp(
                        //           r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                        //       .hasMatch(value)) {
                        //     return 'Please enter a valid email address';
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Container(
                        width: width,
                        child: ElevatedButton(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Medium',
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {
                            Get.to(Login());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: myColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: myColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])))
                ]))));
  }
}
