import 'package:flutter/material.dart';
import 'package:hybrid_fintech_app/notify.dart';
import 'package:hybrid_fintech_app/utils/media.dart';

class SavingPlans extends StatefulWidget {
  const SavingPlans({Key? key}) : super(key: key);

  @override
  State<SavingPlans> createState() => _SavingPlansState();
}

class _SavingPlansState extends State<SavingPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          // height: height,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          alert(context, 'success', 'Challenge card clicked!');
                          print('Challenge card clicked!');
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.450,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/images/rent.png',
                                  width: double.infinity,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'House Rent',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.people,
                                      color: Colors.grey,
                                    )
                                  ]),
                              SizedBox(height: 4),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4000.00/Day',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    Text(
                                      '21 people',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.450,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/detty.png',
                                width: double.infinity,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Detty December',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.people,
                                    color: Colors.grey,
                                  ),
                                ]),
                            SizedBox(height: 4),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2000.00/Day',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  Text(
                                    '16 people',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.450,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/game.png',
                              width: double.infinity,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Playstation 5',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                )
                              ]),
                          SizedBox(height: 4),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '10000.00/week',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Text(
                                  '19 people',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.450,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/car.png',
                              width: double.infinity,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dream Car',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                ),
                              ]),
                          SizedBox(height: 4),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '20000.00/month',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Text(
                                  '9 people',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.450,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/school.png',
                              width: double.infinity,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'School Fees',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                )
                              ]),
                          SizedBox(height: 4),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '10000.00/week',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Text(
                                  '19 people',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.450,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/hangout.png',
                              width: double.infinity,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Get together',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                ),
                              ]),
                          SizedBox(height: 4),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '20000.00/month',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Text(
                                  '19 people',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
