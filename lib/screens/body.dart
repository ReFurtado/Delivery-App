// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currantPage = 0;

  //Splash list
  List<Map<String, String>> splashData = [
    {
      'text': 'Peça diretamente pelo aplicativo',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'Entrega rápida',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'varias opções de comida',
      'image': 'assets/images/splash_3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currantPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'] ?? '', 
                  image: splashData[index]['image'] ?? '',
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPadding.horizontal),
                child: Column(        
                  children: [
                    SizedBox(height: 30),
                    //Points
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length, 
                        (index) => buildDot(index)), //index: index
                    ),
                    Spacer(flex: 2),
                    //Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              )
            )         
          ],
        ),    
      ),
    );
  }

  AnimatedContainer buildDot(index) {  //int index
    return AnimatedContainer(
      duration: kAnimation,
      margin: EdgeInsets.only(right: 5),
      width: currantPage == index ? 20 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: currantPage == index ? kPrimaryColor : Colors.grey.shade400,
        borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}

