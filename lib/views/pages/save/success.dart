import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hybrid_fintech_app/navbar.dart';
import 'package:hybrid_fintech_app/utils/media.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  Color myColor = Color(0xFF2B0431);
  Color grey = Color(0xFFF7E0FB);
  String? selectedFrequency;
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data:
          MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(0.85)),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height / 15,
                          ),
                      
                          SizedBox(
                            height: height / 80,
                          ),
                          
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
                            child: Image.asset('assets/images/success1.png'),
                          ),
                      
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 20, 15, 0),
                            child: Text(
                              'Verified!',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height / 30,
                                  fontFamily: 'Medium'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 10, 15, 0),
                            child: Text(
                              'Your saving Challenge has been created successfully click link below to go back to home',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Light'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                      
                          Container(
                            width: width,
                            color: Colors.white,
                            child: ElevatedButton(
                                child: Text(
                                  'Go to home',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Bold',
                                      fontSize: 19),
                                ),
                                onPressed: () {
                                  Get.to(Navbar());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: myColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: myColor, // Set the border color here
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
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
}
