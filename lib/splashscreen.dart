import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const pageName = 'Splashscreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => const MyFirstPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                height: 250,
                width: 250,
                image: AssetImage('assets/hello.jpeg'),
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              const SizedBox(
                height: 7,
              ),
              RichText(
                  text: const TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'COFFEE  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold
                    )),
                TextSpan(
                    text: 'HUB',
                    style: TextStyle(color: Color(0xffb88067), fontSize: 20))
              ]))
            ],
          ),
        ));
  }
}
