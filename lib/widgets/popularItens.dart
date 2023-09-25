// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/screens/splash_content.dart';

class PopularItens extends StatefulWidget {
  PopularItens({super.key});

  @override
  State<PopularItens> createState() => _PopularItensState();
}

class _PopularItensState extends State<PopularItens> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kPadding.horizontal,
          vertical: kPadding.vertical * 1.4,
        ),
        child: Column(
          children: [
            Row(
              children: [
      
                for (int i = 0; i < 1; i++)
                Padding(
                  padding: EdgeInsets.only(right: kPadding.right),
                  child: Container(
                    width: 280,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/propaganda1.jpg',      
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: kPadding.right),
                  child: Container(
                    width: 280,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/propaganda2.jpg',      
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: kPadding.right),
                  child: Container(
                    width: 280,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/propaganda3.jpg',      
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),             
              ], 
            ),           
          ],
        ),
      ),     
    );
  }
}




