// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/constants.dart';
import 'package:flutter_application_1/repository/stores_repository.dart';
import 'package:flutter_application_1/screens/itens_page.dart';

// ignore: must_be_immutable
class LastStores extends StatelessWidget {
  const LastStores({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    final table = StoresRepository.table;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: kPadding.horizontal,
        vertical: kPadding.vertical,
      ),
      child: Padding(
        padding: EdgeInsets.only(right: kPadding.right * 1.4),
        child: Row(
          children: [
            for (int i = 0; i < 5; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => ItensPage(itens: table[i])
                  )
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage(table[i].image),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      limitText(table[i].name, 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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

