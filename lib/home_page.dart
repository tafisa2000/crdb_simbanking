import 'package:crdb_simbanking/accounts_page.dart';
import 'package:crdb_simbanking/card_page.dart';
import 'package:crdb_simbanking/loan_page.dart';
// import 'package:crdb_simbanking/tab_item.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Change to non-final to allow reassignment

  @override
  Widget build(BuildContext context) {
    const colorGreen = Colors.green; // Define colorGreen

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
              indicatorColor: Colors.transparent,
              overlayColor: MaterialStatePropertyAll(Colors.transparent)),
          child: NavigationBar(
            indicatorShape: CircleBorder(eccentricity: 0.05),
            indicatorColor: Colors.amber.shade100,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            // overlayColor: ,
            height: 100,
            elevation: 0,
            backgroundColor: const Color(0xFFDFE4DE),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Ionicons.wallet_outline), label: 'Overview'),
              NavigationDestination(
                  icon: Icon(Ionicons.swap_horizontal), label: 'Transfers'),
              NavigationDestination(
                  icon: Icon(Ionicons.print_outline), label: 'Cashout'),
              NavigationDestination(
                  icon: Icon(Ionicons.briefcase_outline), label: 'Services'),
              NavigationDestination(
                  icon: Icon(Ionicons.settings_outline), label: 'Settings'),
            ],
            selectedIndex: 0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFDFE4DE),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(0.0).copyWith(left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/avatar.png',
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          ),
          title: const Text(
            'Good Evening, \n Oscar',
            style: TextStyle(fontSize: 15),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(bottom: 15),
              child: Neumorphic(
                  style: const NeumorphicStyle(
                      depth: 3,
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.circle()),
                  child: IconButton(
                      color: Colors.green,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.message_outlined,
                        size: 20,
                      ))),
            )
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(left: 25, right: 25),
            child: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: (_currentIndex == 0)
                      ? [
                          colorGreen,
                          const Color(0xFFDFE4DE),
                          const Color(0xFFDFE4DE)
                        ]
                      : // for index 1
                      (_currentIndex == 1)
                          ? [
                              const Color(0xFFDFE4DE),
                              colorGreen,
                              const Color(0xFFDFE4DE)
                            ]
                          : // for index 2
                          [
                              const Color(0xFFDFE4DE),
                              const Color(0xFFDFE4DE),
                              colorGreen
                            ], // for index 0 and 3
                  // Define your gradient colors
                  begin:
                      Alignment.centerLeft, // Start the gradient from the left
                  end: Alignment.centerRight,
                  stops: (_currentIndex == 0)
                      ? [0.0, 0.4, 1.0]
                      : // for index 1
                      (_currentIndex == 1)
                          ? [0.15, 0.6, 0.7]
                          : // for index 2
                          [0.0, 0.6, 1.0], // for index 0 and 3
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Neumorphic(
                style: NeumorphicStyle(
                    depth: 0,
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.roundRect(
                        const BorderRadius.all(Radius.circular(20)))),
                child: CustomSlidingSegmentedControl<int>(
                  // padding: 15,
                  isStretch: true,
                  initialValue: 0,
                  children: {
                    0: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          'ACCOUNTS',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: (_currentIndex == 0)
                                  ? Colors.white
                                  : Colors.black),
                        ))),
                    1: Container(
                        height: 50,
                        width: 80,
                        child: Center(
                            child: Text(
                          'CARD',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: (_currentIndex == 1)
                                  ? Colors.white
                                  : Colors.black),
                        ))),
                    2: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          'LOANS',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: (_currentIndex == 2)
                                  ? Colors.white
                                  : Colors.black),
                        ))),
                  },
                  decoration: BoxDecoration(
                    color: CupertinoColors.lightBackgroundGray,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.transparent, // Border color
                      width: 2.0, // Border width
                      style: BorderStyle.solid, // Border style
                    ),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: colorGreen,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        offset: const Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  // duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInToLinear,
                  onValueChanged: (index) {
                    setState(() {
                      _currentIndex =
                          index; // Update the current index when the tab changes
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index:
                  _currentIndex, // Show the widget corresponding to the current index
              children: const [
                Acount(), // Widget for 'Paper' tab
                CardAtm(),
                Loan()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
//  decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   color: const Color(0xFFDFE4DE),
//                 ),
                // margin: const EdgeInsets.symmetric(horizontal: 20),
