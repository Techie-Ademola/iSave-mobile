import 'dart:io';

import 'package:hybrid_fintech_app/notify.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
// import 'package:monicredit/configs/app_exports.dart';

String getNameInitials(String name) {
  // Replace consecutive spaces with a single space
  name = name.replaceAll(RegExp(r'\s+'), ' ');

  List<String> initials = name.split(' ');
  String initialsString = '';
  int numWords = initials.length > 2 ? 2 : initials.length;

  for (int i = 0; i < numWords; i++) {
    if (initials[i].isNotEmpty && initials[i][0].isNotEmpty) {
      initialsString += initials[i][0];
    }
  }

  return initialsString.toUpperCase();
}

String capitalizeName(String text) {
  List<String> words = text.toLowerCase().split(' ');
  String capitalizedText = '';

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      String capitalizedWord = word[0].toUpperCase() + word.substring(1);
      capitalizedText += capitalizedWord + ' ';
    }
  }

  return capitalizedText.trimRight();
}

String formatWithCommas(String input) {
  // Reverse the string so we can add commas from the right
  final String reversed = String.fromCharCodes(input.runes.toList().reversed);
  // Add commas every three characters
  final String withCommas = reversed.replaceAllMapped(
    RegExp(r'.{3}'),
    (Match match) => '${match.group(0)},',
  );
  // Reverse the string back to its original order
  return String.fromCharCodes(withCommas.runes.toList().reversed);
}

formatMoney(dynamic money) {
  final numericMoney = double.parse(money.toString());
  return '₦' + NumberFormat('#,##0.00').format(numericMoney);
}

String formatDateTime(String dateTimeString) {
  // Parse the input string to DateTime object
  final dateTime = DateTime.parse(dateTimeString);

  // Define the desired output format
  final outputFormat = DateFormat('MMM d yyyy | hh:mm a');

  // Format the DateTime object to the desired format
  final formattedDateTime = outputFormat.format(dateTime);

  return formattedDateTime;
}

String convertDate(String dateStr) {
  DateFormat inputFormat = DateFormat('MM-dd-yyyy');
  DateFormat outputFormat = DateFormat('yyyy-MM-dd');

  DateTime date = inputFormat.parse(dateStr);
  String convertedDate = outputFormat.format(date);

  return convertedDate;
}

bool checkEmailDomain(String email) {
  if (email.endsWith('@gmail.com') ||
      email.endsWith('@hotmail.com') ||
      email.endsWith('@yahoo.com')) {
    return true;
  } else {
    return true;
  }
}

String formatBVNDate(String inputDate) {
  // Convert input string to DateTime object
  DateTime dateTime = DateFormat('dd-MM-yyyy').parse(inputDate);

  // Format the DateTime object to desired output format
  String formattedDate = DateFormat('dd-MMM-yyyy').format(dateTime);

  return formattedDate;
}

Future<void> requestLocationPermission(BuildContext context) async {
  final location = Location();
  bool serviceEnabled;
  PermissionStatus permissionStatus;

  // Check if location service is enabled
  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      // The user did not enable location services, you can handle this case accordingly
      return;
    }
  }

  // Check the current location permission status
  permissionStatus = await location.hasPermission();
  if (permissionStatus == PermissionStatus.denied) {
    // Request location permission
    permissionStatus = await location.requestPermission();
    if (permissionStatus != PermissionStatus.granted) {
      // The user denied location permission, close the app
      alert(context, 'error', 'We need permission to location');
      SystemNavigator.pop();
    }
  }
}

// Future<String> getDeviceId() async {
//   String deviceId = '';

//   try {
//     if (Platform.isAndroid) {
//       AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
//       deviceId = androidInfo.androidId;
//     } else if (Platform.isIOS) {
//       IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
//       deviceId = iosInfo.identifierForVendor;
//     }
//   } catch (e) {
//     print('Error getting device ID: $e');
//   }

//   return deviceId;
// }

Future<Map<String, dynamic>> getDeviceInfo() async {
  try {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      return {
        'androidId': androidInfo.androidId,
        'board': androidInfo.board,
        'brand': androidInfo.brand,
        'device': androidInfo.device,
        'display': androidInfo.display,
        'fingerprint': androidInfo.fingerprint,
        'hardware': androidInfo.hardware,
        'host': androidInfo.host,
        'id': androidInfo.id,
        'isPhysicalDevice': true,
        'manufacturer': androidInfo.manufacturer,
        'model': androidInfo.model,
        'product': androidInfo.product,
        'tags': androidInfo.tags,
        'type': androidInfo.type,
        'version': androidInfo.version.release,
        'versionBaseOs': androidInfo.version.baseOS,
        'versionCodename': androidInfo.version.codename,
      };
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      return {
        'utsname': {
          'nodename': iosInfo.utsname.nodename,
          'sysname': iosInfo.utsname.sysname,
          'release': iosInfo.utsname.release,
          'version': iosInfo.utsname.version,
          'machine': iosInfo.utsname.machine,
        },
        'name': iosInfo.name,
        'systemName': iosInfo.systemName,
        'systemVersion': iosInfo.systemVersion,
        'model': iosInfo.model,
        'localizedModel': iosInfo.localizedModel,
        'identifierForVendor': iosInfo.identifierForVendor,
        'isPhysicalDevice': true,
        'utsnameNodename': iosInfo.utsname.nodename,
      };
    }
  } catch (e) {
    print('Error getting device info: $e');
    return {};
  }
  // Add this return statement to address the warning
  return {};
}
