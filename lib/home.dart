import 'package:hybrid_fintech_app/controllers/user_controller/userController.dart';
import 'package:hybrid_fintech_app/navbar.dart';
import 'package:hybrid_fintech_app/transfer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Navbar(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 275,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(42, 2, 54, .9),
                    Color.fromRGBO(42, 2, 54, 1)
                  ]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Text(
                            "${greeting()} Adeola",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0XFF34006a),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 8,
                                    spreadRadius: 3)
                              ],
                              border: Border.all(
                                width: 1.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/2167673/pexels-photo-2167673.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Adeola A.",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.camera_front,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "\$5320",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: ".50",
                                              style: TextStyle(
                                                  color: Colors.white38))
                                        ]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.shade100,
                  child: ListView(
                    padding: EdgeInsets.only(top: 75),
                    children: [
                      Text(
                        "Make Payment",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF34006a)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildActivityButton(
                              Icons.card_membership,
                              "Transfer",
                              Color(0XFF34006a).withOpacity(0.1),
                              Color(0XFF34006a)),
                          buildActivityButton(
                              Icons.transfer_within_a_station,
                              "Quick Topup",
                              Color(0XFF34006a).withOpacity(0.1),
                              Color(0XFF34006a)),
                          buildActivityButton(
                              Icons.pie_chart,
                              "Airtime & Data",
                              Color(0XFF34006a).withOpacity(0.1),
                              Color(0XFF34006a)),
                          buildActivityButton(
                              Icons.pie_chart,
                              "TV & Electric",
                              Color(0XFF34006a).withOpacity(0.1),
                              Color(0XFF34006a)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                      buildCategoryCard(Icons.flash_on, "Utilities", 430, 17),
                      buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                      buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                      buildCategoryCard(Icons.fastfood, "Food", 120, 20),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 190,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Money In",
                                style: TextStyle(
                                    color: Color(0XFF34006a),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_downward,
                                size: 12,
                                color: Color.fromRGBO(42, 2, 54, 1),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "\$2 170.90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                      Container(width: 1, height: 45, color: Color(0XFF34006a)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Money Out",
                                style: TextStyle(
                                    color: Color(0XFF34006a),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_upward,
                                size: 12,
                                color: Color.fromRGBO(42, 2, 54, 1),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "\$1 450.10",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "You spent \$ 1,494 this month",
                  //   style: TextStyle(
                  //     fontSize: 13,
                  //     fontStyle: FontStyle.italic,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 3,
                  // ),
                  // Text(
                  //   "Let's see the cost statistics for this period",
                  //   style: TextStyle(
                  //     fontSize: 13,
                  //     fontStyle: FontStyle.italic,
                  //   ),
                  // ),

                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('History clicked');
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                        color: Colors.transparent,
                      )),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "History >",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF34006a)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildCategoryCard(
      IconData icon, String title, int amount, int percentage) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Color(0XFF34006a),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$$amount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($percentage%)",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0XFF34006a)),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => TransferPage())),
      child: Container(
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.all(5),
        height: 75,
        width: 70,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 25,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Color(0XFF34006a),
                  fontSize: 10,
                  height: 1,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
