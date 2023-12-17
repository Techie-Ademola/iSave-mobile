import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hybrid_fintech_app/utils/media.dart';
import 'package:hybrid_fintech_app/views/pages/save/verify_otp.dart';

class SavingChallenge extends StatefulWidget {
  const SavingChallenge({Key? key}) : super(key: key);

  @override
  State<SavingChallenge> createState() => _SavingChallengeState();
}

class _SavingChallengeState extends State<SavingChallenge> {
  Color myColor = Color(0xFF2B0431);
  Color grey = Color(0xFFF7E0FB);
  String? selectedFrequency;
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
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
                      Row(
                        children: [
                          SizedBox(
                            width: width / 45,
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
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(0)),
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
                          'Create a Saving Challenge',
                          style: TextStyle(
                              color: myColor,
                              fontSize: height / 35,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Medium'),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 15, 0),
                        child: Text(
                          'Invite your family and friends  to a saving challenge towards a common goal and earn up to 10% interest \nrate when you save with us.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 55,
                              fontFamily: 'Light'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          // height: height / 1.13,
                          // color: Colors.transparent,
                          child: Column(
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '***********',
                                  labelText: 'Challenge Title',
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Medium',
                                      color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: '***********',
                                  labelText: 'Challenge Goal',
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Medium',
                                      color: Colors.black),
                                  prefix: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      'NGN',
                                      style: TextStyle(fontFamily: 'Medium'),
                                    ),
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: '*********',
                                  labelText: 'Amount',
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Medium',
                                      color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              DropdownButtonFormField<String>(
                                alignment: Alignment.topLeft,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 0,
                                // isDense: false,
                                value: selectedFrequency,
                                dropdownColor: Color(0xFFF7E0FB),
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'daily',
                                    child: Text(
                                      'Daily',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 13),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'weekly',
                                    child: Text(
                                      'Weekly',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 13),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'monthly',
                                    child: Text(
                                      'Monthly',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 13),
                                    ),
                                  ),
                                ],
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedFrequency = value ?? '';
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Select Frequency',
                                  labelText: 'Frequency',
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Medium',
                                    color: Colors.black,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 233, 191, 241),
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 233, 191, 241),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 233, 191, 241),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: TextField(
                                  maxLines: 5,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color(0xFFF7E0FB).withOpacity(0.5),
                                    hintText: 'Add Notes',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Medium',
                                        fontSize: 15),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 233, 191, 241),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 45,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                  width: width,
                  color: Colors.white,
                  child: ElevatedButton(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Medium',
                            fontSize: 17),
                      ),
                      onPressed: () {
                        Get.to(VerifyOtp());
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        backgroundColor: myColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: myColor, // Set the border color here
                          ),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
