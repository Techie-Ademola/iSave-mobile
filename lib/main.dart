// import 'package:hybrid_fintech_app/home.dart';
// import 'package:hybrid_fintech_app/transfer.dart';

// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       title: 'Financial App',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     ));

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hybrid_fintech_app/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:monicredit/models_provider/user/user_provider.dart';
// import 'package:monicredit/pages/app/splashscreen.dart';
// import 'package:monicredit/utils/colornotifire.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';

import 'configs/app_routes.dart';
// import 'controller/alert/alert_function.dart';
// import 'controller/alert/internet_two.dart';
// import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings;
  // initNotificationWorker();2
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    WillPopScope(
      onWillPop: () async {
        // Prevent default back button behavior
        return false;
      },
      // child: MultiProvider(
      //   providers: [
      //     // ChangeNotifierProvider(
      //     //   create: (_) => ColorNotifire(),
      //     // ),
      //   ],
      child: OverlaySupport.global(
        key: GlobalKey(),
        toastTheme: ToastThemeData(),
        child: GetMaterialApp(
          getPages: AppRoutes.routes,
          home: Splashscreen(),
          // initialBinding: BindingsBuilder(() {
          //   Get.put(UserProvider());
          // }),
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          theme: ThemeData(
              // ...
              ),
        ),
      ),
      // ),
    ),
  );
}
