// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/repository/itens_repository.dart';

class CategoriesWidget extends StatelessWidget {
 CategoriesWidget({
    Key? key, 
  });

  @override
  Widget build(BuildContext context) {
    final itens = ItensRepository.itens;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kPadding.horizontal,
          vertical: kPadding.vertical,
        ),
        child: Row(
          children: [

            //Single Item
            for (int i = 0; i < 6; i++)
            Padding(
              padding: EdgeInsets.only(right: kPadding.right * 1.4),
              child: Container(
                width: 90,
                height: 90,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        itens[i].image,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      itens[i].name,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}