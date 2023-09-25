// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/widgets/appbar.dart';
import 'package:flutter_application_1/widgets/categories.dart';
import 'package:flutter_application_1/widgets/last_stores.dart';
import 'package:flutter_application_1/widgets/popularItens.dart';
import 'package:flutter_application_1/widgets/stores.dart';



class HomePage extends StatefulWidget {
  HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          //Custom App Bar
          AppBarWidget(),
          //Search
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding.horizontal,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.shade300,
                //     spreadRadius: 2,
                //     blurRadius: 10,
                //     offset: Offset(0, 3),
                //   ),
                // ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPadding.horizontal / 2,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: kPrimaryColor,                 
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: kPadding.horizontal,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Buscar em Restaurantes',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Category
          // Padding(
          //   padding: EdgeInsets.fromLTRB(
          //     kPadding.horizontal, 
          //     kPadding.vertical, 0, 0),
          //   child: Text(
          //     'Categories',
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),

          //Category Widget
          CategoriesWidget(),

          //Popular itens Widget
          PopularItens(),

          //Last stores
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding.horizontal,
              vertical: kPadding.vertical / 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Últimas Lojas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ver Mais',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          //Last stores Widget
          LastStores(),

          //Stores
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding.horizontal,
              vertical: kPadding.vertical / 2,
            ),
            child: Text(
              'Lojas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Stores Widget
          StoresWidget()
        ],
      ),
    );
  }
}

