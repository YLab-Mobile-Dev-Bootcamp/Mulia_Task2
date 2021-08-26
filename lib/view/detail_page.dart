import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5_uif_lutter/model/product.dart';

class DetailPage extends StatelessWidget {
  Product product;
  DetailPage(this.product);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraint) {
              return Column(children: [
                Text(product.name),
                Text(product.description),
                Text(product.price),
              ]);
            },
          ),
        ),
      ),
    );
  }
}
