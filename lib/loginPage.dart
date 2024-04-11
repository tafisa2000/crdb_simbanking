import 'package:crdb_simbanking/home_page.dart';
import 'package:crdb_simbanking/main.dart';
// import 'package:crdb_simbanking/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ionicons/ionicons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController password = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {});
  }

  int colorPassword = 0;

  passwordChange(value) async {
    setState(() {
      password.text += value;
      colorPassword++;
    });
    if (password.text.length == 4) {
      setState(() {
        // ignore: unrelated_type_equality_checks
        password.text == 0;
        colorPassword == 0;
      });
      await showDialog(
          context: context,
          builder: (context) {
            return Center(
                child: SpinKitFadingCircle(
              color: Colors.green.shade900,
              size: 75.0,
            ));
          });

      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFE4DE),
      //
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
            indicatorColor: Colors.transparent,
            overlayColor: MaterialStatePropertyAll(Colors.transparent)),
        child: NavigationBar(
          indicatorColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          // overlayColor: ,
          height: 100,
          elevation: 0,
          backgroundColor: const Color(0xFFDFE4DE),
          destinations: const [
            NavigationDestination(
                icon: Icon(Ionicons.scan), label: 'Scan to pay'),
            NavigationDestination(
                icon: Icon(Ionicons.location_outline), label: 'Locations'),
            NavigationDestination(
                icon: Icon(Ionicons.ellipsis_horizontal),
                label: '  More\nServices '),
          ],
          selectedIndex: 2,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Enter SimBanking PIN',
              style: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      intensity: (colorPassword >= 1) ? 3 : 0,
                      lightSource: LightSource.top,
                      shadowLightColor: Colors.green,
                      shadowLightColorEmboss: Colors.green,
                      shadowDarkColor: Colors.transparent,
                      shadowDarkColorEmboss: Colors.transparent,
                      color: (colorPassword >= 1) ? Colors.green : Colors.white,
                      boxShape: const NeumorphicBoxShape.circle()),
                  child: const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      intensity: (colorPassword >= 2) ? 3 : 0,
                      lightSource: LightSource.top,
                      shadowLightColor: Colors.green,
                      shadowLightColorEmboss: Colors.green,
                      shadowDarkColor: Colors.transparent,
                      shadowDarkColorEmboss: Colors.transparent,
                      color: (colorPassword >= 2) ? Colors.green : Colors.white,
                      boxShape: const NeumorphicBoxShape.circle()),
                  child: const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      intensity: (colorPassword >= 3) ? 3 : 0,
                      lightSource: LightSource.top,
                      shadowLightColor: Colors.green,
                      shadowLightColorEmboss: Colors.green,
                      shadowDarkColor: Colors.transparent,
                      shadowDarkColorEmboss: Colors.transparent,
                      color: (colorPassword >= 3) ? Colors.green : Colors.white,
                      boxShape: const NeumorphicBoxShape.circle()),
                  child: const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      intensity: (colorPassword >= 4) ? 3 : 0,
                      lightSource: LightSource.top,
                      shadowLightColor: Colors.green,
                      shadowLightColorEmboss: Colors.green,
                      shadowDarkColor: Colors.transparent,
                      shadowDarkColorEmboss: Colors.transparent,
                      color: (colorPassword >= 4) ? Colors.green : Colors.white,
                      boxShape: const NeumorphicBoxShape.circle()),
                  child: const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: GridView.count(
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                crossAxisCount: 3,
                children: [
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '1',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("1");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '2',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("2");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("3");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '4',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("4");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '5',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("5");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '6',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("6");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '7',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("7");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '8',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("8");
                        },
                      )),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '9',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("9");
                        },
                      )),
                  TextButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    child: const Text(
                      'Forgot PIN?',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  Neumorphic(
                      style: const NeumorphicStyle(
                          depth: 5,
                          shadowLightColor: Colors.black54,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle()),
                      child: TextButton(
                        child: const Text(
                          '0',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        onPressed: () {
                          passwordChange("0");
                        },
                      )),
                  (colorPassword > 0)
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              colorPassword--;
                            });
                          },
                          icon: const Icon(Ionicons.arrow_back))
                      : Container()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// bottomNavigationBar: BottomNavigationBar(
//   selectedIconTheme: IconThemeData(),
//   elevation: 0,
//   enableFeedback: false,
//   backgroundColor: Colors.transparent,
//   items: const <BottomNavigationBarItem>[
//     BottomNavigationBarItem(
//       icon: Icon(Icons.qr_code_scanner),
//       label: 'Scan to pay',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.location_on_outlined),
//       label: 'Locations',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.more_horiz),
//       label: '  More\nServices',
//     ),
//   ],
//   currentIndex: _selectedIndex,
//   selectedItemColor: Colors.blue,
//   onTap: _onItemTapped,
// ),
