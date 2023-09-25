// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/repository/add_itens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../repository/products_repository.dart';

class ProductPage extends StatelessWidget {
  final table  = ProductsRepository.table;
  int i = 0;
  final Animation<double> animation;
  final itens = AddItensRepository.itens;

  ProductPage({required this.animation});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Image.asset(table[i].image),
                //Info
                Container(
                  height: 120,
                  padding: EdgeInsets.symmetric(
                    horizontal: kPadding.horizontal,
                    vertical: kPadding.vertical,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        table[i].name,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        table[i].description,
                      ),
                      SizedBox(height: 12),
                      Text(
                        table[i].price,
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                //Title
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  height: 80,
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: kPadding.horizontal,
                      vertical: kPadding.vertical
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adicionais',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kTextColor
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Escolha até 5 opções',
                          style: TextStyle(
                            color: kTextColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //Add
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kPadding.horizontal,
                    vertical: kPadding.vertical,
                  ),
                  height: 1000,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itens[index].name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              itens[index].value,
                              style: TextStyle(
                                color: kTextColor,
                              ),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 16,
                          color: Colors.red,
                        ),
                      );
                    }, 
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    }, 
                    itemCount: itens.length,
                  ),
                ),
              ],         
            ),     
          ),
        ),
      )  
    );
  }
}
