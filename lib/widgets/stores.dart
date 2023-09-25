// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/repository/stores_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config/constants.dart';

class StoresWidget extends StatelessWidget {
  const StoresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final table = StoresRepository.table;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kPadding.horizontal,
          vertical: kPadding.vertical,
        ),
        child: Column(
          children: [
            for (int i = 0; i < 5; i++)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: kPadding.vertical,
              ),
              child: Container(
                child: Row(
                  children: [         
                    //Logo
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            table[i].image,
                          ), 
                        ),
                      ),   
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            children: [
                              Text(
                                limitText(
                                  table[i].name, 
                                  30,
                                ),                         
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),              
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.solidStar,
                              size: 12,
                              color: Color.fromARGB(255, 241, 219, 19),
                            ),
                            SizedBox(width: 6),
                            Text(
                              '4,6',
                              style: TextStyle(
                                fontSize: 12,
                                color: kTextColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '-   Carnes',
                              style: TextStyle(
                                fontSize: 12,
                                color: kTextColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '-   3,5 km',
                              style: TextStyle(
                                fontSize: 12,
                                color: kTextColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Text(
                              'Anúncio',
                              style: TextStyle(
                                fontSize: 12,
                                color: kTextColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '39-49 min',
                              style: TextStyle(
                                fontSize: 12,
                                color: kTextColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Grátis',
                              style: TextStyle(
                                fontSize: 12,                         
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )             
              ),
            ),

            SizedBox(height: 60),

            // Container(
            //   child: Row(
            //     children: [             
            //       //Logo
            //       Container(
            //         width: 60,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           image: DecorationImage(
            //             image: AssetImage(
            //               'assets/images/logo5.jpg',
            //             ), 
            //           ),
            //         ),   
            //       ),
            //       SizedBox(width: 20),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //               children: [
            //                 Text(
            //                   limitText(
            //                     'Comida Italiana', 
            //                     30,
            //                   ),                         
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                 ),
            //               ],
            //             ),              
            //           SizedBox(height: 10),
            //           Row(
            //             children: [
            //               Icon(
            //                 FontAwesomeIcons.solidStar,
            //                 size: 12,
            //                 color: Color.fromARGB(255, 241, 219, 19),
            //               ),
            //               SizedBox(width: 6),
            //               Text(
            //                 '4,9',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 '-   Massas',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 '-   1,5 km',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               )
            //             ],
            //           ),
            //           SizedBox(height: 6),
            //           Row(
            //             children: [
            //               Text(
            //                 'Anúncio',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 '40-50 min',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 'Grátis',
            //                 style: TextStyle(
            //                   fontSize: 12,                         
            //                   color: Colors.green,
            //                 ),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ],
            //   )             
            // ),

            // SizedBox(height: 20),

            // Container(
            //   child: Row(
            //     children: [             
            //       //Logo
            //       Container(
            //         width: 60,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           image: DecorationImage(
            //             image: AssetImage(
            //               'assets/images/logo2.jpg',
            //             ), 
            //           ),
            //         ),   
            //       ),
            //       SizedBox(width: 20),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //               children: [
            //                 Text(
            //                   limitText(
            //                     'Lanches e Porções', 
            //                     30,
            //                   ),                         
            //                   style: TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.bold,
            //                   ),
            //                 ),
            //               ],
            //             ),              
            //           SizedBox(height: 10),
            //           Row(
            //             children: [
            //               Icon(
            //                 FontAwesomeIcons.solidStar,
            //                 size: 12,
            //                 color: Color.fromARGB(255, 241, 219, 19),
            //               ),
            //               SizedBox(width: 6),
            //               Text(
            //                 '4,7',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 '-   Lanches',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 '-   3,1 km',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               )
            //             ],
            //           ),
            //           SizedBox(height: 6),
            //           Row(
            //             children: [
            //               Text(
            //                 'Anúncio',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 '20-30 min',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kTextColor,
            //                 ),
            //               ),
            //               SizedBox(width: 10),
            //               Text(
            //                 'Grátis',
            //                 style: TextStyle(
            //                   fontSize: 12,                         
            //                   color: Colors.green,
            //                 ),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ],
            //   )             
            // ),
          ],
        ),
      ),
    );
  }
}

//Limite de palavras
String limitText(String text, int maxLength) {
  if(text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
}