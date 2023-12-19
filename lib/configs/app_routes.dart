// import 'package:hybrid_fintech_app/home.dart';
import 'package:hybrid_fintech_app/navbar.dart';
import 'package:hybrid_fintech_app/transfer.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => const Navbar()),
    GetPage(name: '/login', page: () => const TransferPage()),
    // Add more routes here
  ];
}
