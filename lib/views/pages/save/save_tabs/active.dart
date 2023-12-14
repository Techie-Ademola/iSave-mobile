import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hybrid_fintech_app/utils/media.dart';
import 'package:hybrid_fintech_app/views/pages/save/savingchallenge.dart';

class ActivePlans extends StatefulWidget {
  const ActivePlans({Key? key}) : super(key: key);

  @override
  State<ActivePlans> createState() => _ActivePlansState();
}

class _ActivePlansState extends State<ActivePlans> {
  Color myColor = Color(0xFF2B0431);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Image.asset('assets/images/notcompleted.png'),
            ),
            Text(
              'No Active Challenge',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Bold'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                'Oops! you have no active savings plan at the moment. When you create or join a savings challenge, you will see the full details here',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Light'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: width,
              color: Colors.white,
              child: ElevatedButton(
                  child: Text(
                    'Create a new Challenge',
                    style: TextStyle(
                        color: myColor, fontFamily: 'Bold', fontSize: 19),
                  ),
                  onPressed: () {
                    Get.to(SavingChallenge());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
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
    );
  }
}
