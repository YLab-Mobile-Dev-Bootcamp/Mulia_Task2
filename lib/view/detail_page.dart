import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5_uif_lutter/model/product.dart';

class DetailPage extends StatelessWidget {
  Product product;
  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF5EDE1),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Scrollbar(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            product.imageLink,
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Text(product.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 16,
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Text(
                            "\$ " + product.price,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 7)),
                          if (product.rating != null)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    product.rating.toString() + ' ',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  for (int i = 0; i < product.rating; i++)
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.amber,
                                    ),
                                ],
                              ),
                            ),
                          if (product.rating == null)
                            Text(
                              'Unrated',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold),
                            ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                        ],
                      )),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          top: 30, left: 15, right: 15, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Created_at: '),
                              Text(product.createdAt.toIso8601String())
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Updated_at: '),
                              Text(product.updatedAt.toIso8601String())
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Text(
                            'Description',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                fontFamily: 'Calibri'),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Text('${product.description}'),
                        ],
                      )),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
