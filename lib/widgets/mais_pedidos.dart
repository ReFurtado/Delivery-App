// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../config/constants.dart';

class MaisPedidos extends StatelessWidget {
  const MaisPedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: kPadding.horizontal,
      ),
      child: Row(
        children: [
          for (int i = 0; i < 5; i++)
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: kPadding.horizontal),
              child: Column(
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/burger.png'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        limitText(
                          'R\$ 29,90', 
                          40,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        limitText(
                          'Cheesebacon', 
                          40,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                      ),
                      
                    ]
                    
                  ),
                ],
              ),
            ),
          )
  
        ],
      ),
    );
  }
}


 //Limite de palavras
  String limitText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }