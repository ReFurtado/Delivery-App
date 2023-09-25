// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/repository/stores_repository.dart';
import 'package:flutter_application_1/widgets/mais_pedidos.dart';
import 'package:flutter_application_1/widgets/mais_vendidos.dart';

class ItensPage extends StatelessWidget {
  const ItensPage({super.key, required Stores itens});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [

          //Image
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 160,
            child: Image.asset(
              'assets/images/burger1.jpg',
              fit: BoxFit.cover,
            ),    
          ),
          //Title
          Container(
            width: double.infinity,
            //height: 500,
            padding: EdgeInsets.symmetric(
              horizontal: kPadding.horizontal,
              vertical: kPadding.vertical,
            ),
            //color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Lanches e Porções',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          'Lanches - 3,1 km',
                          style: TextStyle(
                            fontSize: 12,
                            color: kTextColor,
                          ),
                        ),
                      ],
                    ),                     
                  ],   
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/logo2.jpg',
                      )
                    ),
                  ),
                )    
              ],
            ),                            
          ),
          //Infos
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding.horizontal
            ),
            child: Row(
              children: [
                Text(
                  'Aberto até 22:30',
                  style: TextStyle(
                    fontSize: 12,
                    color: kTextColor,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Pedido min. R\$ 35',
                  style: TextStyle(
                    fontSize: 12,
                    color: kTextColor,
                  ),
                )
              ],
            ),
          ),
          //Mais pedidos
           Padding(
            padding: EdgeInsets.fromLTRB(
              kPadding.horizontal, 
              40, 
              0,
              kPadding.vertical,
            ),
            child: Text(
              'Os mais pedidos',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ), 
          ),
          //Mais pedidos Widget
          MaisPedidos(),
          //Mais vendidos
          Padding(
            padding: EdgeInsets.fromLTRB(
              kPadding.horizontal, 
              40, 
              0,
              kPadding.vertical,
            ),
            child: Text(
              'Mais vendidos!!!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ), 
          ),
          //Mais vendidos Widget
          MaisVendidos(),
        ],
      ),
    ); 
  }
}
