import 'package:flutter/material.dart';
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
        child: Container(
          // height: height,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/rent.png',
                              width: 175,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'House Rent',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                Icon(
                                  Icons.people,
                                  color: Colors.grey,
                                )
                              ]),
                          SizedBox(height: 4),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4000.00/Day',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                Text(
                                  '21 people',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/detty.png',
                              width: 175,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(children: [
                            Text(
                              'Detty December',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Icon(
                              Icons.people,
                              color: Colors.grey,
                            ),
                          ]),
                          SizedBox(height: 4),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '2000.00/Day',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '16 people',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/game.png',
                            width: 175,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Playstation 5',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Icon(
                                Icons.people,
                                color: Colors.grey,
                              )
                            ]),
                        SizedBox(height: 4),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '10000.00/week',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                '19 people',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ]),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/car.png',
                            width: 175,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(children: [
                          Text(
                            'Dream Car',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 86,
                          ),
                          Icon(
                            Icons.people,
                            color: Colors.grey,
                          ),
                        ]),
                        SizedBox(height: 4),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '20000.00/month',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                '9 people',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ]),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/school.png',
                            width: 175,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'School Fees',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Icon(
                                Icons.people,
                                color: Colors.grey,
                              )
                            ]),
                        SizedBox(height: 4),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '10000.00/week',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                '19 people',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ]),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/hangout.png',
                            width: 175,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(children: [
                          Text(
                            'Get together',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.people,
                            color: Colors.grey,
                          ),
                        ]),
                        SizedBox(height: 4),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '20000.00/month',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '19 people',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ]),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
