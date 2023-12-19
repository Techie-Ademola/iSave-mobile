// import 'package:flutter/material.dart';
// import 'package:hybrid_fintech_app/utils/media.dart';

// class Onboarding1 extends StatefulWidget {
//   const Onboarding1({Key? key}) : super(key: key);

//   @override
//   State<Onboarding1> createState() => _Onboarding1State();
// }

// class _Onboarding1State extends State<Onboarding1> {
//   Color grey = Color.fromARGB(255, 203, 26, 234);
//   Color myColor = Color(0xFF2B0431);
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery(
//         data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
//         child: Scaffold(
//             body: SingleChildScrollView(
//                 child: Stack(children: [
//           Container(
//             height: 500,
//             width: width,
//             color: Colors.transparent,
//             child: Image.asset(
//               "assets/images/background.png",
//               height: 10,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Column(
//             children: [
//               SizedBox(
//                 height: height / 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: width / 20),
//                 child: Row(
//                   children: [
//                     const Spacer(),
//                     Text(
//                       'Skip',
//                       style: TextStyle(
//                           color: grey,
//                           fontSize: height / 40,
//                           fontFamily: 'Gilroy Bold'),
//                       textAlign: TextAlign.end,
//                     ),
//                   ],
//                 ),
//               ),
//               Image.asset(
//                 'assets/images/onboarding1.png',
//                 width: 350,
//               ),
//               SizedBox(height: 200),
//               Text(
//                 'Save and secure your Future',
//                 style: TextStyle(
//                     fontFamily: 'Bold', fontSize: 21, color: Colors.black),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
//                 child: Text(
//                   'Prepare yourself financially for life after school by saving towards your future goal',
//                   style: TextStyle(
//                       fontFamily: 'Medium', fontSize: 14, color: Colors.black),
//                   textAlign: TextAlign.center,
//                 ),
//               ),

//               SizedBox(
//                 height: 60,
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0,0,20,0),
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     'Next',
//                     style:
//                         TextStyle(fontFamily: 'Bold', fontSize: 18, color: myColor),
//                     textAlign: TextAlign.right,
//                   ),
//                 ),
//               ),
//             ],

//           ),
//         ]))));
//   }

//      final int _numPages = 3;
//   final PageController _pageController =
//       PageController(initialPage: 1, viewportFraction: 0.90);
//   int _currentPage = 1;

//   Widget _indicator(bool isActive) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 150),
//       margin: const EdgeInsets.symmetric(horizontal: 3.0),
//       height: 5.0,
//       width: isActive ? 20.0 : 5.0,
//       decoration: BoxDecoration(
//         color:
//             isActive ? Color(0xFFAE11C7) : Color(0xFFAE11C7).withOpacity(0.3),
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//       ),
//     );
//   }

//   List<Widget> _buildPageIndicator() {
//     List<Widget> list = [];
//     for (int i = 0; i < _numPages; i++) {
//       list.add(i == _currentPage ? _indicator(true) : _indicator(false));
//     }
//     return list;
//   }

// Container(
//           width: width,
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           color: Colors.white,
//           child: ElevatedButton(
//               child: Text(
//                 'Create a new Challenge',
//                 style: TextStyle(
//                     color: myColor, fontFamily: 'Medium', fontSize: 16),
//               ),
//               onPressed: () {
//                 // Get.to(SavingChallenge());
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(vertical: 12),
//                 backgroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   side: BorderSide(
//                     color: myColor, // Set the border color here
//                   ),
//                 ),
//               )),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Container(
//           width: width,
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           color: Colors.white,
//           child: ElevatedButton(
//               child: Text(
//                 'Join a Challenge',
//                 style: TextStyle(
//                     color: Colors.white, fontFamily: 'Medium', fontSize: 16),
//               ),
//               onPressed: () {
//                 // Get.to(SavingChallenge());
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(vertical: 12),
//                 backgroundColor: myColor,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   side: BorderSide(
//                     color: myColor, // Set the border color here
//                   ),
//                 ),
//               )),
//         ),
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:hybrid_fintech_app/navbar.dart';
import 'package:hybrid_fintech_app/utils/media.dart';
import 'package:hybrid_fintech_app/views/pages/save/auth/create_account.dart';
import 'package:hybrid_fintech_app/views/pages/save/auth/login.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  Color grey = Color.fromARGB(255, 203, 26, 234);
  Color myColor = Color(0xFF2B0431);

  final List<String> images = [
    'assets/images/onboarding1.png',
    'assets/images/onboarding2.png',
    'assets/images/onboarding3.png',
  ];

  final List<String> titles = [
    'Save and secure your Future',
    'Get Financial Advice from Advisors in our community',
    'Save with Friends',
  ];

  final List<String> descriptions = [
    'Prepare yourself financially for life after school by saving towards your future goal',
    'Connect with friendsand share financial ideas with experts in our community.',
    'Invite your familyand friends to a saving challenge towards a common goal',
  ];

  int _currentPage = 0;
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Image.asset(
                  "assets/images/background.png",
                  height: 10,
                  fit: BoxFit.cover,
                ),
              ),
              Column(children: [
                SizedBox(
                  height: height / 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 20),
                  child: Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.to(Navbar());
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: grey,
                              fontSize: height / 40,
                              fontFamily: 'Medium'),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              CarouselSlider.builder(
                carouselController: _carouselController,
                itemCount: images.length,
                options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return _buildPage(
                    image: images[index],
                    title: titles[index],
                    description: descriptions[index],
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildPage(
      {required String image,
      required String title,
      required String description}) {
    bool isLastPage = _currentPage == images.length - 1;

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 10,
        ),
        Image.asset(
          image,
          width: 350,
        ),
        SizedBox(height: 200),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Bold',
              fontSize: 21,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: Text(
            description,
            style: TextStyle(
              fontFamily: 'Medium',
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        if (!isLastPage)
          GestureDetector(
            onTap: () {
              _carouselController.nextPage();
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: 18,
                    color: myColor,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
        if (isLastPage)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                  child: ElevatedButton(
                    child: Text(
                      ' Create an Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Medium',
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(CreateAccount());
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                  child: ElevatedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: myColor,
                        fontFamily: 'Medium',
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(Login());
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: myColor, // Set the border color here
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    return List.generate(
      images.length,
      (index) => _indicator(index == _currentPage),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 10.0,
      width: isActive ? 10.0 : 10,
      decoration: BoxDecoration(
        color:
            isActive ? Color(0xFFAE11C7) : Color(0xFFAE11C7).withOpacity(0.3),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
