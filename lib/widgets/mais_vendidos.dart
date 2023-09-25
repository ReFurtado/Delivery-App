// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/repository/products_repository.dart';
import 'package:flutter_application_1/screens/product_page.dart';

class MaisVendidos extends StatefulWidget {
  MaisVendidos({Key? key}) : super(key: key);

  @override
  State<MaisVendidos> createState() => _MaisVendidosState();
}

class _MaisVendidosState extends State<MaisVendidos> {

  @override
  Widget build(BuildContext context) {
    final table  = ProductsRepository.table;
    int i = 0;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kPadding.horizontal,
          vertical: kPadding.vertical / 2,
        ),
        child: Column(
          children: [
            for (int i = 0; i < 3; i++)
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return ProductPage(animation: animation);
                    }
                    // transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    //   return child;
                    // }
                  )
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    )
                  )
                ),    
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: kPadding.vertical / 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 6),
                          Text(table[i].name),
                          SizedBox(height: 4),
                          Text(
                            table[i].description,
                            style: TextStyle(
                              fontSize: 14,
                              color: kTextColor,
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(table[i].price),
                        ],
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.all(radius),
                          image:DecorationImage(
                            image: AssetImage(table[i].image)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );






















    // return SizedBox(
    //   height: 600,
    //   child: ListView.separated(
    //     itemBuilder: (BuildContext context, int product) {
    //       return ListTile(
    //         //Image
    //         trailing: ClipRRect(
    //           borderRadius: BorderRadius.circular(10),
    //           child: Image.asset(
    //             table[product].image,
    //             width: 100,
    //             height: 100,        
    //           ),
    //         ),
            
    //         title: Text(table[product].name),
    //       );
    //     },
    //     padding: EdgeInsets.all(0),
    //     separatorBuilder: (_, __) => Divider(), 
    //     itemCount: table.length,
    //   ),
    // );
      
    
  }
}
