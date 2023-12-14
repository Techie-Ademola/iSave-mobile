import 'package:flutter/material.dart';
import 'package:hybrid_fintech_app/utils/media.dart';
import 'package:hybrid_fintech_app/views/pages/save/save_tabs/active.dart';
import 'package:hybrid_fintech_app/views/pages/save/save_tabs/completed.dart';
import 'package:hybrid_fintech_app/views/pages/save/save_tabs/plans.dart';

class SavePage extends StatefulWidget {
  const SavePage({Key? key}) : super(key: key);

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  List<Widget> tabs = [
    SavingPlans(),
    ActivePlans(),
    CompletedPlans(),
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  Color myColor = Color(0xFF2B0431);
  Color grey = Color(0xF7E0FB);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data:
          MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(0.85)),
      child: Scaffold(
        body: Container(
          width: width,
          // child: Expanded(
          //   child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
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
                            SizedBox(
                              height: height / 80,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                              child: Text(
                                'Saving Challenge',
                                style: TextStyle(
                                    color: myColor,
                                    fontSize: height / 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Medium'),
                                textAlign: TextAlign.left,
                              ),
                            ),
              
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 12, 15, 0),
                              child: Text(
                                'Invite your family and friends  to a saving challenge towards a common goal and earn up to 10% interest \nrate when you save with us.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 55,
                                    fontFamily: 'Light'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: height / 1.43,
                                // color: Colors.transparent,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 233, 191, 241)),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: TabBar(
                                          tabAlignment: TabAlignment.fill,
                                          labelStyle:
                                              const TextStyle(fontFamily: 'Medium'),
                                          indicator: BoxDecoration(
                                              color: myColor,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          indicatorPadding: EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 5),
                                          indicatorSize: TabBarIndicatorSize.tab,
                                          indicatorColor: myColor,
                                          controller: controller,
                                          labelColor: Colors.white,
                                          unselectedLabelColor: Colors.black,
                                          tabs: const [
                                            Tab(text: 'Saving Plans'),
                                            Tab(text: 'Active'),
                                            Tab(text: 'Completed'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Search',
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 233, 191, 241)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 233, 191, 241)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 233, 191, 241)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: TabBarView(
                                        controller: controller,
                                        children: tabs.map((tab) => tab).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
