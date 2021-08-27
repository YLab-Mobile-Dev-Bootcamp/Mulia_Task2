import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:task5_uif_lutter/controller/productController.dart';
import 'package:task5_uif_lutter/model/product.dart';
import 'package:task5_uif_lutter/view/detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Maybelline',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text('MAYBELLINE PRODUCTS',
                style: TextStyle(
                    color: Color(0xFFFCE2F25),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'roboto')),
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 23),
            decoration: BoxDecoration(
              color: Colors.black38.withAlpha(10),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Product",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                        ),
                        border: InputBorder.none),
                    onChanged: (String keyword) {},
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.black.withAlpha(120),
                )
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.productList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                    productController.productList[index])))
                      },
                      //DetailPage(productController.productList[index]),
                      child: ContainHome(
                        productController.productList[index],
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                );
            }),
          ),
        ],
      ),
    );
  }
}

class ContainHome extends StatelessWidget {
  Product product;
  ContainHome(this.product);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            //Stack(
            //children: [
            Container(
              height: 100,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink[50],
                      offset: const Offset(3.0, 3.0),
                      blurRadius: 10.0,
                    )
                  ]),
              child: Image.network(
                product.imageLink,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'Calibri', fontSize: 15)),
            SizedBox(
              height: 8,
            ),
            Text(
              "\$ " + product.price,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontFamily: 'Calibri', fontSize: 15, color: Colors.red),
            ),
            SizedBox(
              height: 8,
            ),
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
                      style: TextStyle(color: Colors.amber),
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
              SizedBox(
                height: 15,
              ),
          ],
        ),
      ),
    );
  }
}
