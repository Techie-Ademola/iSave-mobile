import 'package:hybrid_fintech_app/home.dart';
import 'package:hybrid_fintech_app/transfer.dart';
import 'package:hybrid_fintech_app/utils/network_error.dart';
import 'package:flutter/material.dart';
import 'package:hybrid_fintech_app/views/pages/save/save.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'utils/media.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentTab = 0;
  bool keyboardOpen = false;
  bool hasInternetConnection = true;

  final PageStorageBucket bucket = PageStorageBucket();
  late PageController _pageController; // Add this line
  // int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _checkInternetConnectivity();
    _subscribeToConnectivityChanges();
    _pageController =
        PageController(initialPage: currentTab); // Initialize PageController
  }

  Future<void> _checkInternetConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      hasInternetConnection = connectivityResult != ConnectivityResult.none;
    });
  }

  void _subscribeToConnectivityChanges() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        hasInternetConnection = result != ConnectivityResult.none;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: hasInternetConnection
              ? PageView(
                  controller:
                      _pageController, // Use PageController to manage pages
                  onPageChanged: (index) {
                    setState(() {
                      currentTab = index;
                    });
                  },
                  children: [
                    const HomePage(),
                    const SavePage(),
                    const HomePage(),
                    const TransferPage(),
                    // const HomePage(),
                  ],
                )
              : const NetworkError(),
          bottomNavigationBar: Row(
            children: [
              buildNavBarItem(Icons.home, 0, 'Home'),
              buildNavBarItem(Icons.savings_outlined, 1, 'Save'),
              buildNavBarItem(Icons.person_outline_sharp, 2, 'Account'),
              buildNavBarItem(Icons.bubble_chart_outlined, 3, 'Explore'),
              // buildNavBarItem(Icons.person, 4, 'Home'),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentTab = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease); // Navigate to the selected page
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 16),
        width: MediaQuery.of(context).size.width / 4,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF2B0431),
          border: Border(
              bottom: BorderSide(
                  width: 4,
                  color: index == currentTab
                      ? Color(0XFFA641B7)
                      : Color(0xFF2B0431))),
          // gradient: LinearGradient(colors: [
          //   Color(0xFF2B0431),
          //   Color(0xFF2B0431),
          // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color:
                  index == currentTab ? Color(0XFFA641B7) : Color(0XFFF7E0FB),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: index == currentTab
                      ? FontWeight.w600
                      : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }

  // GestureDetector buildNavBarItem(IconData icon, int index, String label) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         currentTab = index;
  //         _pageController.animateToPage(index,
  //             duration: const Duration(milliseconds: 300),
  //             curve: Curves.ease); // Navigate to the selected page
  //       });
  //     },
  //     child: Container(
  //       width: MediaQuery.of(context).size.width / 5,
  //       height: 60,
  //       decoration: index == currentTab
  //           ? BoxDecoration(
  //               border: Border(
  //                   bottom: BorderSide(width: 4, color: Color(0XFF34006a))),
  //               gradient: LinearGradient(colors: [
  //                 Color(0XFF34006a).withOpacity(0.3),
  //                 Color(0XFF34006a).withOpacity(0.016),
  //               ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
  //           : BoxDecoration(),
  //       child: Icon(
  //         icon,
  //         color: index == currentTab
  //             ? Color(0XFF34006a)
  //             : Color(0XFF34006a).withOpacity(0.2),
  //       ),
  //     ),
  //   );
  // }
}
