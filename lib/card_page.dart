import 'package:carousel_slider/carousel_slider.dart';
import 'package:crdb_simbanking/utilities/botton_crdb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ionicons/ionicons.dart';

class CardAtm extends StatelessWidget {
  const CardAtm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            enableInfiniteScroll: true,
            autoPlay: false,
            viewportFraction: 1,
          ),
          items: [
            1,
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding:
                      const EdgeInsets.all(10.0).copyWith(left: 20, right: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.asset('assets/images/tembo_card.jpg')),
                  ),
                );
              },
            );
          }).toList(),
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
                lable: 'Freeze Card\n',
                child: Icon(CupertinoIcons.padlock),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Request Card\n',
                child: Icon(Icons.credit_score_rounded),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Request\n  status',
                child: Icon(CupertinoIcons.creditcard),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BottonCrdb(
                lable: 'Manage\n online',
                child: Icon(Ionicons.cart_outline),
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
