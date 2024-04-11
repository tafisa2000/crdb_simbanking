import 'package:carousel_slider/carousel_slider.dart';
import 'package:crdb_simbanking/utilities/botton_crdb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ionicons/ionicons.dart';

class Acount extends StatefulWidget {
  const Acount({super.key});

  @override
  State<Acount> createState() => _AcountState();
}

class _AcountState extends State<Acount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Stack(alignment: Alignment.bottomRight, children: [
            Neumorphic(
              style: const NeumorphicStyle(
                  depth: 80,
                  color: Colors.white,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.white,
                  shadowLightColorEmboss: Colors.white,
                  shadowDarkColorEmboss: Colors.white,
                  boxShape: NeumorphicBoxShape.circle()),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 6),
                      shape: BoxShape.circle),
                  child: Neumorphic(
                    style: const NeumorphicStyle(
                        depth: 3,
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.circle()),
                    child: const SizedBox(
                      height: 220,
                      width: 220,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SAVING ACCOUNT',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('015254357200'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ACTUAL BALANCE',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'TZS 35.000,000.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Available Balance'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'TZS 35.000,000.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Neumorphic(
              style:
                  const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(CupertinoIcons.eye_slash),
                    Text('Show'),
                  ],
                ),
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 40,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Statement',
                child: Icon(Ionicons.reader_outline),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Government',
                child: Icon(Icons.business_sharp),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Airtime',
                child: Icon(CupertinoIcons.arrow_up_arrow_down_square),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Luku',
                child: Icon(Ionicons.bulb_outline),
              ),
            ),
          ],
        ),
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 100.0,
              enableInfiniteScroll: true,
              autoPlay: true,
              viewportFraction: 1,
            ),
            items: [
              1,
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0)
                        .copyWith(left: 20, right: 20),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          depth: 4,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20))),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/crdb_logo.png',
                                width: 75,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CRDB Lipa Hapa',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Pay our merchants directly and quickly',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
