import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_flutter/controller/add_controller.dart';
import 'package:task3_flutter/controller/menu_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Menu")),
          actions: [
            InkWell(
              onTap: () => Get.toNamed('/add'),
              child: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        body: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height,
              child: MenuList(),
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class MenuList extends StatelessWidget {
  MenuController _foodController = Get.find();
  AddController _addController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _foodController.menu.length,
        itemBuilder: (BuildContext context, int index) {
          var menu = _foodController.menu[index];
          return InkWell(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: Image.asset(
                    menu.image,
                    width: MediaQuery.of(context).size.width / 6,
                    height: MediaQuery.of(context).size.height / 6,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 4,
                  child: Text(
                    menu.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 4,
                  child: Text(
                    menu.price.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                      onPressed: () => _addController.addToCart(menu),
                      child: Text('Add')),
                ),
              ],
            ),
          );
        });
  }
}
